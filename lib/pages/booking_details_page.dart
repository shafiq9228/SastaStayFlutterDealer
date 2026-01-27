import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/pages/main_page.dart';
import 'package:sasta_stay_dealer/pages/money_withdraw_page.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../api/api_result.dart';
import '../components/add_guest_item.dart';
import '../components/amenities_component.dart';
import '../components/custom_network_image.dart';
import '../components/custom_outlined_button.dart';
import '../components/empty_data_view.dart';
import '../components/error_text_component.dart';
import '../components/primary_button.dart';
import '../components/room_component_1.dart';
import '../components/side_heading_component.dart';
import '../components/title_message_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../shimmers/hostel_details_page_shimmer.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/booking_view_model.dart';
import '../view_models/hostel_view_model.dart';
import 'amenities_page.dart';
import 'hostel_images_page.dart';


class BookingDetailsPage extends StatefulWidget {
  final String bookingId;
  final bool? fromBooking;
  const BookingDetailsPage({super.key, required this.bookingId, this.fromBooking});

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  final bookingViewModel = Get.put(BookingViewModel());

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: ()async {
        if(widget.fromBooking == true){
          Get.offAll(() => const MainPage());
        }else{
          Get.back();
        }
        return false;
      },
      child: StatefulWrapper(
        onInit: (){
          bookingViewModel.fetchBookingDetails(widget.bookingId ?? "");
        },
        child: Scaffold(
          backgroundColor: CustomColors.white,
          body: Obx(() => bookingViewModel.fetchBookingDetailsObserver.value.maybeWhen(
              loading: () => const HostelDetailsPageShimmer(),
              success: (data){
                final bookingDataModel = (data as FetchBookingDetailsResponseModel).data;
                final hostelData = HostelModel.fromJson(bookingDataModel?.hostelId);
                final roomModelData = RoomModel.fromJson(bookingDataModel?.roomId);
                final userDataModel = UserModel.fromJson(bookingDataModel?.userId);
                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                        expandedHeight: 250.0,
                        floating: false,
                        pinned: true,
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        if(widget.fromBooking == true){
                          Get.offAll(() => const MainPage());
                        }else{
                          Get.back();
                        }
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white, // Circle background color
                          shape: BoxShape.circle,
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(child: Image.asset("assets/images/back_btn.png",width: 10,height: 10,)),
                      ),
                    ),
                  ),
                      flexibleSpace: FlexibleSpaceBar(
                        background: Hero(
                          tag: hostelData.id ?? "",
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomNetworkImage(imageUrl: roomModelData.image ??"",width: double.infinity,height: 300,fit: BoxFit.cover,),
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(color: CustomColors.white,borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
                              )
                            ],
                          ),
                        ),
                      )
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Room Number : ${roomModelData.roomNo ?? ''}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/bed.png",width: 10,height: 10,color: CustomColors.textColor),
                                      Expanded(child: Text(" Floor Number : ${roomModelData.floor ?? ''}",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.textColor))),
                                    ],
                                  ),
                                ),
                                Text("Room Type : ${roomModelData.roomType ?? ''}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.textColor)),
                                const SizedBox(height: 10),
                                Container(
                                  decoration:  AppStyles.gradientColorDecoration2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Row(
                                      children: [
                                        Expanded(child: Text("Order Id : ${bookingDataModel?.orderId ?? ''}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.textColor))),
                                        Icon(Icons.copy_rounded,color: CustomColors.textColor,size: 15)
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  decoration:  AppStyles.categoryBg4,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Text("Payment Status : ${bookingDataModel?.paymentStatus ?? ''}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  decoration: bookingDataModel?.bookingStatus == "Ongoing" ? AppStyles.categoryBg2 : bookingDataModel?.bookingStatus == "Upcoming" ? AppStyles.categoryBg4 : AppStyles.categoryBg1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Text("Booking Status : ${bookingDataModel?.bookingStatus ?? ''}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  decoration:  AppStyles.categoryBg4,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Text("Booked By ${(bookingDataModel?.bookedBy ?? '') == "dealer" ? "You" : "User" }",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  decoration:  AppStyles.categoryBg4,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Booking ${(bookingDataModel?.bookedBy ?? '') == "dealer" ? "For" : "By" } : ${userDataModel.name ?? ''}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor)),
                                        const SizedBox(height: 2),
                                        Text("User Id : ${userDataModel.id ?? ''}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Chip(
                            //   label: Text(hostelData?.hostelType ?? 'Type'),
                            //   backgroundColor: _getHostelTypeColor(hostelData?.hostelType),
                            // ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                width: double.infinity,
                                color: CustomColors.lightGray,
                                height: 5,
                              ),
                            ),
                            const SideHeadingComponent(title: "Booking Details",viewVisible: false),
                            const SizedBox(height: 10),
                            TitleMessageComponent(asset: 'assets/images/profile.png', title: 'Total Guests', message: "${bookingDataModel?.guestCount ?? 0}",),
                            Visibility(
                              visible: bookingDataModel?.guestDetailsList?.isNotEmpty == true,
                              child: MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: bookingDataModel?.guestDetailsList?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    final guestDetailsModel = bookingDataModel?.guestDetailsList?[index];
                                    return AddGuestItem(
                                      guestDetailsModel: guestDetailsModel,
                                      index: index,
                                      deleteView: false,
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            DottedLine(
                              dashColor: CustomColors.darkGray,
                            ),
                            TitleMessageComponent(asset: 'assets/images/booking.png', title: 'Dates', message: "${AuthUtils.dateFormatToCheckInCheckOut(bookingDataModel?.checkInDate,bookingDataModel?.checkOutDate)}",),
                            DottedLine(
                              dashColor: CustomColors.darkGray,
                            ),
                            TitleMessageComponent(asset: 'assets/images/bed.png', title: 'Room Type', message: "${roomModelData?.roomType ?? ""} | ${roomModelData?.roomNo ?? ""} | ${roomModelData?.floor ?? ""}"),
                            const SizedBox(height: 10),
                            // SideHeadingComponent(title: "Amenities",
                            //     viewVisible: true
                            //     // viewVisible: (hostelData?.amenitiesMore ?? 0) > 0
                            //     ,viewClick: (){
                            //       Get.to(() =>  AmenitiesPage(hostelId: hostelData.id ?? ""));
                            //     },viewType: 2),
                            // _buildAmenitiesGrid(hostelData.amenities,hostelData.amenitiesMore),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                width: double.infinity,
                                color: CustomColors.lightGray,
                                height: 5,
                              ),
                            ),

                            const SideHeadingComponent(title: "Pricing Details",viewVisible: false),
                            const SizedBox(height: 10),
                            Container(
                              decoration: AppStyles.categoryBg4,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom: 20, // keep bottom if you want
                                  top: 0,     // remove upper padding
                                ),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (context,index){
                                      final hostelModel =  bookingDataModel?.logs?[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 2),
                                        child: Row(
                                          children: [
                                            Expanded(child: Text(hostelModel?.message ?? "",style: TextStyle(fontWeight: FontWeight.w400,color: CustomColors.darkGray,fontSize: 14))),
                                            Text("₹${hostelModel?.amount}",style: TextStyle(fontWeight: FontWeight.w400,color: CustomColors.primary,fontSize: 14)),
                                          ],
                                        ),
                                      );
                                    },itemCount: bookingDataModel?.logs?.length ?? 0),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(child: Text("Total Amount",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.textColor,fontSize: 18))),
                                Visibility(visible: (bookingDataModel?.discount ?? 0) + (bookingDataModel?.walletDeduction ?? 0)  != 0 ,child: Text("₹${(bookingDataModel?.subTotal ?? 0) + (bookingDataModel?.discount ?? 0) + (bookingDataModel?.walletDeduction ?? 0)}",style: TextStyle(fontWeight: FontWeight.w500,color: CustomColors.textColor,fontSize: 18,decoration: TextDecoration.lineThrough, // 👈 strike-through
                                    decorationThickness: 2,
                                    decorationColor: Colors.black))),
                                Text("₹${(bookingDataModel?.subTotal ?? 0)}",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.primary,fontSize: 18)),
                              ],
                            ),
                            const SizedBox(height: 30),
                            _buildPaymentDetails(bookingDataModel),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () => const Center(
                child: EmptyDataView(text: "Something went wrong"),
              ))
          ),
        ),
      ),
    );
  }


  // Add this PaymentDetailsWidget function in your _BookingDetailsPageState class
  // Widget _buildPaymentDetails(BookingModel? bookingDataModel) {
  //   print(bookingDataModel);
  //   TransactionDataModel? transactionDetails = bookingDataModel?.transactionId != null ? TransactionDataModel.fromJson(bookingDataModel?.transactionId) : null;
  //   print(transactionDetails);
  //   final withdrawTransactionModel = transactionDetails?.withdrawTransactionId != null ? TransactionDataModel.fromJson(transactionDetails?.withdrawTransactionId) : null;
  //   final payment = transactionDetails?.paymentDetails;
  //   if (payment == null) return const SizedBox.shrink();
  //
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(12),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.1),
  //           blurRadius: 10,
  //           spreadRadius: 2,
  //         ),
  //       ],
  //     ),
  //     margin: const EdgeInsets.only(bottom: 20),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         // Header
  //         Container(
  //           padding: const EdgeInsets.all(16),
  //           decoration: BoxDecoration(
  //             color: CustomColors.primary.withOpacity(0.1),
  //             borderRadius: const BorderRadius.only(
  //               topLeft: Radius.circular(12),
  //               topRight: Radius.circular(12),
  //             ),
  //           ),
  //           child: Row(
  //             children: [
  //               Icon(Icons.receipt_long, color: CustomColors.primary, size: 24),
  //               const SizedBox(width: 10),
  //               Text(
  //                 'Payment Breakdown',
  //                 style: TextStyle(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.w700,
  //                   color: CustomColors.textColor,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //
  //         Padding(
  //           padding: const EdgeInsets.all(16),
  //           child: Column(
  //             children: [
  //               // Room Charges Section
  //               _buildPaymentSection(
  //                 title: 'Room Charges',
  //                 items: [
  //                   _buildPaymentRow(
  //                     label: 'Base Amount',
  //                     value: '₹${payment.amount ?? 0}',
  //                   ),
  //                   _buildPaymentRow(
  //                     label: 'Room GST (${payment.roomGstPercentage ?? 0}%)',
  //                     value: '₹${payment.roomGst}',
  //                     isSubItem: true,
  //                   ),
  //                 ],
  //                 total: '₹${(payment.amount ?? 0) + (payment.roomGst ?? 0)}',
  //               ),
  //
  //               const SizedBox(height: 16),
  //               DottedLine(dashColor: CustomColors.lightGray),
  //               const SizedBox(height: 16),
  //
  //               // Platform Charges Section
  //               _buildPaymentSection(
  //                 title: 'Platform Charges',
  //                 items: [
  //                   _buildPaymentRow(
  //                     label: 'Base Charges',
  //                     value: '₹${payment.platformChargesBase?.toStringAsFixed(2) ?? '0.00'}',
  //                   ),
  //                   _buildPaymentRow(
  //                     label: 'GST (${payment.platformGstPercentage}%)',
  //                     value: '₹${payment.platformChargesGst?.toStringAsFixed(2) ?? '0.00'}',
  //                     isSubItem: true,
  //                   ),
  //                 ],
  //                 total: '₹${payment.platformCharges}',
  //               ),
  //
  //               const SizedBox(height: 16),
  //               DottedLine(dashColor: CustomColors.lightGray),
  //               const SizedBox(height: 16),
  //
  //               // Adjustments Section
  //               if ((payment.discount ?? 0) > 0 || (payment.walletDeduction ?? 0) > 0)
  //                 Column(
  //                   children: [
  //                     _buildPaymentSection(
  //                       title: 'Adjustments',
  //                       items: [
  //                         if ((payment.discount ?? 0) > 0)
  //                           _buildPaymentRow(
  //                             label: 'Discount ${payment.discountByAdmin == true ? '(Admin)' : ''}',
  //                             value: '-₹${payment.discount}',
  //                             valueColor: Colors.green,
  //                           ),
  //                         if ((payment.walletDeduction ?? 0) > 0)
  //                           _buildPaymentRow(
  //                             label: 'Wallet Deduction',
  //                             value: '-₹${payment.walletDeduction}',
  //                             valueColor: Colors.green,
  //                           ),
  //                       ],
  //                     ),
  //                     const SizedBox(height: 16),
  //                     DottedLine(dashColor: CustomColors.lightGray),
  //                     const SizedBox(height: 16),
  //                   ],
  //                 ),
  //
  //               // Subtotal
  //               _buildPaymentRow(
  //                 label: 'Subtotal',
  //                 value: '₹${payment.subTotal}',
  //                 isBold: true,
  //                 padding: const EdgeInsets.symmetric(vertical: 8),
  //               ),
  //
  //               const SizedBox(height: 8),
  //               DottedLine(dashColor: CustomColors.primary.withOpacity(0.3)),
  //               const SizedBox(height: 8),
  //
  //               // Dealer Earnings Section
  //               Container(
  //                 padding: const EdgeInsets.all(12),
  //                 decoration: BoxDecoration(
  //                   color: Colors.blue[50],
  //                   borderRadius: BorderRadius.circular(8),
  //                   border: Border.all(color: Colors.blue[100]!),
  //                 ),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Row(
  //                       children: [
  //                         Icon(Icons.account_balance_wallet,
  //                             color: Colors.blue[700], size: 20),
  //                         const SizedBox(width: 8),
  //                         Text(
  //                           'Dealer Earnings',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             fontWeight: FontWeight.w700,
  //                             color: Colors.blue[700],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                     const SizedBox(height: 12),
  //
  //                     _buildPaymentRow(
  //                       label: 'Outward Amount',
  //                       value: '₹${payment.outwardAmount?.toStringAsFixed(2) ?? '0.00'}',
  //                       showBreakdown: true,
  //                       breakdown: '₹${payment.outwardBaseAmount} + ₹${payment.outwardGst} GST',
  //                     ),
  //
  //                     const SizedBox(height: 8),
  //
  //                     _buildPaymentRow(
  //                       label: 'Your Commission',
  //                       value: '₹${payment.chargeAmount}',
  //                       showBreakdown: true,
  //                       breakdown: '${payment.chargePercentage}% of base',
  //                       breakdown2: '(+ ₹${payment.chargeGst} GST)',
  //                     ),
  //
  //                     const SizedBox(height: 12),
  //
  //                     // Profit Section
  //                     Container(
  //                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
  //                       decoration: BoxDecoration(
  //                         color: Colors.green[50],
  //                         borderRadius: BorderRadius.circular(6),
  //                       ),
  //                       child: Row(
  //                         children: [
  //                           Expanded(
  //                             child: Column(
  //                               crossAxisAlignment: CrossAxisAlignment.start,
  //                               children: [
  //                                 Text(
  //                                   'Your Profit',
  //                                   style: TextStyle(
  //                                     fontSize: 14,
  //                                     fontWeight: FontWeight.w600,
  //                                     color: Colors.green[800],
  //                                   ),
  //                                 ),
  //                                 const SizedBox(height: 4),
  //                                 RichText(
  //                                   text: TextSpan(
  //                                     children: [
  //                                       TextSpan(
  //                                         text: '₹${payment.profitExcludingItc?.toStringAsFixed(2)}',
  //                                         style: TextStyle(
  //                                           fontSize: 18,
  //                                           fontWeight: FontWeight.w800,
  //                                           color: Colors.green[800],
  //                                         ),
  //                                       ),
  //                                       TextSpan(
  //                                         text: ' (excluding ITC)',
  //                                         style: TextStyle(
  //                                           fontSize: 12,
  //                                           color: Colors.green[600],
  //                                         ),
  //                                       ),
  //                                     ],
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),
  //                           Container(
  //                             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  //                             decoration: BoxDecoration(
  //                               color: Colors.green,
  //                               borderRadius: BorderRadius.circular(20),
  //                             ),
  //                             child: Text(
  //                               '₹${payment.profitIncludingItc?.toStringAsFixed(2)}',
  //                               style: const TextStyle(
  //                                 fontSize: 16,
  //                                 fontWeight: FontWeight.w700,
  //                                 color: Colors.white,
  //                               ),
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //
  //                     const SizedBox(height: 4),
  //                     Padding(
  //                       padding: const EdgeInsets.only(left: 8),
  //                       child: Text(
  //                         'Including ITC: ₹${payment.profitIncludingItc?.toStringAsFixed(2) ?? '0.00'}',
  //                         style: TextStyle(
  //                           fontSize: 12,
  //                           color: Colors.green[600],
  //                           fontStyle: FontStyle.italic,
  //                         ),
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //
  //               // Payment Status
  //               if (withdrawTransactionModel != null)
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 16),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Payment Status:',
  //                         style: TextStyle(
  //                           fontSize: 14,
  //                           fontWeight: FontWeight.w600,
  //                           color: CustomColors.textColor,
  //                         ),
  //                       ),
  //                       Container(
  //                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
  //                         decoration: BoxDecoration(
  //                           color: withdrawTransactionModel.paymentStatus == 'Paid'
  //                               ? Colors.green[100]
  //                               : Colors.orange[100],
  //                           borderRadius: BorderRadius.circular(20),
  //                         ),
  //                         child: Text(
  //                           bookingDataModel?.paymentStatus ?? '',
  //                           style: TextStyle(
  //                             fontSize: 14,
  //                             fontWeight: FontWeight.w600,
  //                             color: withdrawTransactionModel.paymentStatus == 'Paid'
  //                                 ? Colors.green[800]
  //                                 : Colors.orange[800],
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildPaymentDetails(BookingModel? bookingDataModel) {
    TransactionDataModel? transactionDetails = bookingDataModel?.transactionId != null ? TransactionDataModel.fromJson(bookingDataModel?.transactionId) : null;
    final withdrawTransactionModel = transactionDetails?.withdrawTransactionId != null ? TransactionDataModel.fromJson(transactionDetails?.withdrawTransactionId) : null;
    final payment = transactionDetails?.paymentDetails;
    final dealerDetails = bookingDataModel?.dealerId != null ? DealerModel.fromJson(bookingDataModel?.dealerId) : null;
    if (payment == null) return const SizedBox.shrink();

    final double totalAmount = (payment.amount ?? 0).toDouble();
    final double roomGst = (payment.roomGst ?? 0).toDouble();
    final double platformCharges = (payment.platformCharges ?? 0).toDouble();
    final double dealerProfit = (payment.outwardAmount ?? 0).toDouble();
    final double commission = (payment.chargeAmount ?? 0).toDouble();
    final double profitIncludingItc = (payment.profitIncludingItc ?? 0).toDouble();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 15,
            spreadRadius: 3,
          ),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with Dealer Earnings Focus
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  CustomColors.primary.withOpacity(0.9),
                  CustomColors.primary.withOpacity(0.7),
                ],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.menu,
                      color: CustomColors.primary, size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Earnings Summary',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Transaction ID: ${(transactionDetails?.id ?? "").toString().substring(0, 8) ?? 'N/A'}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Quick Earnings Summary
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green[100]!),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Total Profit',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.green[800],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '₹${payment.outwardAmount.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.green[900],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Including all GST benefits',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.green[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green[400]!, Colors.green[600]!],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Commission',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '₹${commission.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '${payment.chargePercentage ?? 0}% of booking',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Booking Amount Breakdown
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.receipt, size: 20, color: Colors.blue[700]),
                        const SizedBox(width: 8),
                        Text(
                          'Booking Amount',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue[800],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    _buildAmountRow(
                      label: 'Room Rent',
                      amount: totalAmount,
                      showGst: true,
                      gstAmount: roomGst,
                      gstPercent: payment.roomGstPercentage,
                    ),

                    const SizedBox(height: 8),

                    _buildAmountRow(
                      label: 'Platform Fee',
                      amount: platformCharges,
                      showGst: true,
                      gstAmount: payment.platformChargesGst,
                      baseAmount:payment.platformChargesBase,
                      gstPercent: payment.platformGstPercentage,
                      isPlatformFee: true,
                    ),

                    const SizedBox(height: 12),
                    DottedLine(dashColor: Colors.blue[100]!),
                    const SizedBox(height: 12),

                    _buildTotalRow(
                      label: 'Total Booking Amount',
                      amount: (payment.subTotal ?? 0).toDouble(),
                      isLarge: true,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Your Earnings Section
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.amber[100]!),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance_wallet_rounded,
                              size: 20, color: Colors.amber[800]),
                          const SizedBox(width: 8),
                          Text(
                            'Your Earnings Breakdown',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.amber[900],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Commission Earnings
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.amber[200]!),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.amber[100],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Icon(Icons.percent_rounded,
                                          size: 16, color: Colors.amber[800]),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Booking Commission',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.amber[900],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '₹${commission.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.amber[900],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: Text(
                                '${payment.chargePercentage ?? 0}% of booking amount (₹${payment.chargeAmount} + ₹${payment.chargeGst} GST)',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.amber[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Profit Breakdown
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.green[200]!),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Icon(Icons.trending_up_rounded,
                                          size: 16, color: Colors.green[800]),
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Your Profit',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green[900],
                                          ),
                                        ),
                                        Text(
                                          'Paid to your account',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.green[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  '₹${dealerProfit.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.green[900],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),

                            // Profit Details
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Base Amount',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.green[800],
                                        ),
                                      ),
                                      Text(
                                        '₹${payment.outwardBaseAmount?.toStringAsFixed(2) ?? '0.00'}',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.green[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'GST (${payment.roomGstPercentage}%)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.green[800],
                                        ),
                                      ),
                                      Text(
                                        '₹${payment.outwardGst?.toStringAsFixed(2) ?? '0.00'}',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.green[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                if (dealerDetails?.primaryAccountId == null)
                  InkWell(
                    onTap: () {
                      Get.to(() => MoneyWithdrawPage());
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16,top: 15),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: CustomColors.primary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: CustomColors.primary,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: CustomColors.primary.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: CustomColors.primary,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Account Details Required',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Add your bank account details to receive settlements',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                // Payment Settlement Status
                if (withdrawTransactionModel != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Status:',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: CustomColors.textColor,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: withdrawTransactionModel.paymentStatus == 'success'
                                ? Colors.green[50]
                                : Colors.orange[50],
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: (withdrawTransactionModel.paymentStatus == 'success')
                                  ? Colors.green
                                  : Colors.orange,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (withdrawTransactionModel.paymentStatus == 'success')
                                Icon(
                                  Icons.check_circle_rounded,
                                  size: 16,
                                  color: Colors.green[700],
                                )
                              else
                                Icon(
                                  Icons.error_outline_rounded,
                                  size: 16,
                                  color: Colors.orange[700],
                                ),
                              const SizedBox(width: 6),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    withdrawTransactionModel?.paymentStatus?.toUpperCase() ?? '',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: withdrawTransactionModel.paymentStatus == 'success'
                                          ? Colors.green[800]
                                          : Colors.orange[800],
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    withdrawTransactionModel.paymentStatus == 'success'
                                        ? 'Amount settled & credited from admin'
                                        : withdrawTransactionModel.failedReason ?? 'Payment failed',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: withdrawTransactionModel.paymentStatus == 'success'
                                          ? Colors.green[600]
                                          : Colors.orange[600],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAmountRow({
    required String label,
    required double amount,
    bool showGst = false,
    double? gstAmount,
    double? baseAmount,
    dynamic gstPercent,
    bool isPlatformFee = false,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: isPlatformFee ? Colors.orange[600] : Colors.blue[600],
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: isPlatformFee ? Colors.orange[800] : Colors.blue[800],
                  ),
                ),
              ],
            ),
            Text(
              '₹${amount.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isPlatformFee ? Colors.orange[800] : Colors.blue[800],
              ),
            ),
          ],
        ),
        if (showGst && gstAmount != null && gstAmount > 0)
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GST ${gstPercent}%',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  '₹${gstAmount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        if (showGst && baseAmount != null && baseAmount > 0)
          Padding(
            padding: const EdgeInsets.only(left: 14, top: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Platform Charge Base',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  '₹${baseAmount?.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildTotalRow({
    required String label,
    required double amount,
    bool isLarge = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isLarge ? 16 : 14,
            fontWeight: FontWeight.w800,
            color: Colors.blue[900],
          ),
        ),
        Text(
          '₹${amount.toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: isLarge ? 20 : 16,
            fontWeight: FontWeight.w900,
            color: Colors.blue[900],
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentSection({
    required String title,
    required List<Widget> items,
    String? total,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: CustomColors.textColor,
          ),
        ),
        const SizedBox(height: 8),
        ...items,
        if (total != null) ...[
          const SizedBox(height: 8),
          _buildPaymentRow(
            label: 'Total $title',
            value: total,
            isBold: true,
          ),
        ],
      ],
    );
  }

  Widget _buildPaymentRow({
    required String label,
    required String value,
    Color? valueColor,
    bool isSubItem = false,
    bool isBold = false,
    EdgeInsets padding = EdgeInsets.zero,
    bool showBreakdown = false,
    String? breakdown,
    String? breakdown2,
  }) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: isSubItem ? 13 : 14,
                    fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
                    color: isSubItem
                        ? CustomColors.darkGray
                        : CustomColors.textColor,
                    fontStyle: isSubItem ? FontStyle.italic : FontStyle.normal,
                  ),
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: isBold ? 16 : 14,
                  fontWeight: isBold ? FontWeight.w800 : FontWeight.w600,
                  color: valueColor ?? (isBold ? CustomColors.primary : CustomColors.textColor),
                ),
              ),
            ],
          ),
          if (showBreakdown && breakdown != null) ...[
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                breakdown,
                style: TextStyle(
                  fontSize: 11,
                  color: CustomColors.darkGray,
                ),
              ),
            ),
            if (breakdown2 != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  breakdown2,
                  style: TextStyle(
                    fontSize: 11,
                    color: CustomColors.darkGray,
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }

  Widget _buildLocationInfo(LocationModel? location) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://maps.googleapis.com/maps/api/staticmap?center=${location?.latitude},${location?.longitude}&zoom=15&size=600x300&maptype=roadmap&markers=color:red%7C${location?.latitude},${location?.longitude}&key=AIzaSyDf0aKkhQtwMnkHdjLEAmK7hjajE5T32cU',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: AppStyles.categoryBg4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${location?.address1}, ${location?.address2}',
                  style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w700),
                ),
                Text(
                  '${location?.city}, ${location?.state} - ${location?.pinCode}',
                  style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16.0, color: Colors.blue),
                    const SizedBox(width: 4.0),
                    Text(
                      'Landmark: ${location?.landMark}',
                      style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        CustomOutlinedButton(buttonTxt: "Open In Google Maps", buttonClick: (){
          _openGoogleMaps(location?.latitude ?? 0.00,location?.longitude ?? 0.00);
        }),
        const SizedBox(height: 10),
      ],
    );
  }

  Future<void> _openGoogleMaps(double latitude, double longitude) async {
    if(latitude == 0.00 || latitude == 0.00) throw "Could not open Google Maps";
    final Uri googleMapsUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );

    if (await canLaunchUrl(googleMapsUrl)) {
      await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not open Google Maps';
    }
  }

  Widget _buildAmenitiesGrid(List<AmenitiesModel>? amenities,int? amenitiesMore) {
    return Builder(
      builder: (context) {
        final List<AmenitiesModel> displayList = List.from(amenities ?? []);
        if ((amenitiesMore ?? 0) > 0) {
          displayList.add(
            AmenitiesModel(
              image: "https://firebasestorage.googleapis.com/v0/b/sastastay-1d420.firebasestorage.app/o/bannerImages%2F1755513864049.png?alt=media&token=b25f99c1-8dcc-44a7-a888-fc7bf4398426",
              name: "${amenitiesMore} More",
            ),
          );
        }
        return displayList.isEmpty ? const ErrorTextComponent(text: "No Amenities Available") : GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.5,
          ),
          itemCount: displayList.length,
          itemBuilder: (context, index) {
            final amenityModel = displayList[index];
            return AmenitiesComponent(amenitiesModel: amenityModel,view: 2);
          },
        );
      },
    );
  }

  Widget _buildRulesList(List<String> rules) {
    return Container(
      decoration: AppStyles.categoryBg4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: rules.map((rule) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(width: 40,height:40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),color: CustomColors.white),child: Icon(Icons.rule,color: CustomColors.textColor,size: 20)),
                        const SizedBox(width: 10),
                        Expanded(child: Text(rule,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: CustomColors.textColor)))
                      ],
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      visible: rules.length > 1,
                      child: DottedLine(
                        dashColor: Colors.black.withOpacity(0.8),
                      ),
                    )
                  ],
                ),
              )
          ).toList(),
        ),
      ),
    );
  }

}
