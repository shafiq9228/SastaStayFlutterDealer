import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/pages/rooms_page.dart';
import 'package:sasta_stay_dealer/utils/statefullwrapper.dart';


import '../components/add_guest_bottom_sheet.dart';
import '../components/add_guest_item.dart';
import '../components/custom_network_image.dart';
import '../components/error_text_component.dart';
import '../components/primary_button.dart';
import '../components/secondary_heading_component.dart';
import '../components/side_heading_component.dart';
import '../components/title_message_component.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../view_models/booking_view_model.dart';
import 'coupons_page.dart';


class CheckoutPage extends StatelessWidget {
  final RoomModel? roomModel;
  const CheckoutPage({super.key, required this.roomModel});

  @override
  Widget build(BuildContext context) {

    final bookingViewModel = Get.put(BookingViewModel());

    return Scaffold(
      backgroundColor: CustomColors.white,
      body: StatefulWrapper(
        onInit: (){},
        onStart: (){
          bookingViewModel.checkHostelRoomAvailability(bookingViewModel.bookingRequestModelObserver.value,0);
        },
        child: SafeArea(
          top: true,
            child: Stack(
              children: [
                Column(
                  children: [
                    const SecondaryHeadingComponent(buttonTxt: "Checkout"),
                    Expanded(child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: AppStyles.categoryBg3,
                              child:
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Room No. : ${roomModel?.roomNo ?? ""}",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: CustomColors.textColor)),
                                          SizedBox(height: 10),
                                          Text("Room Type : ${roomModel?.roomType ?? ""}",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray)),
                                          SizedBox(height: 10),
                                          Text("Floor : ${roomModel?.floor ?? ""}",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray)),
                                          SizedBox(height: 10)
                                        ],
                                                                ),
                                    ), CustomNetworkImage(imageUrl: roomModel?.image ?? "",width: 100,height: 100,fit: BoxFit.cover,)
                                  ]),
                              )
                            ),
                            SizedBox(height: 20),
                            Obx(() => bookingViewModel.bookingRequestModelObserver.value != null ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    width: double.infinity,
                                    color: CustomColors.lightGray,
                                    height: 5,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(child: Text("Your Booking Details",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: CustomColors.black))),
                                    const SizedBox(width: 20),
                                    InkWell(
                                        onTap: (){
                                          Get.back();
                                        },
                                        child: Text("Change",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.primary,decoration: TextDecoration.underline))),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                TitleMessageComponent(asset: 'assets/images/profile.png', title: 'Total Guests', message: "${bookingViewModel.bookingRequestModelObserver.value?.guestCount ?? 0}",),
                                Obx(() => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${bookingViewModel.guestDetailsList.length}/${(bookingViewModel.bookingRequestModelObserver.value?.guestCount ?? 0)} Guests",style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.darkGray,fontSize: 14),),
                                    SizedBox(height: 10),
                                    bookingViewModel.guestDetailsList.length == 0 ? InkWell(
                                      onTap: (){
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true, // allows full height scroll
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                          ),
                                          builder: (context) {
                                            return const AddGuestBottomSheet();
                                          },
                                        );
                                      },
                                        child: ErrorTextComponent(text: "Add Guest Details")) :
                                    ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (context,index){
                                          final guestDetailsModel = bookingViewModel.guestDetailsList[index];
                                          return InkWell(
                                            onTap: (){
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true, // allows full height scroll
                                                shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                                ),
                                                builder: (context) {
                                                  return AddGuestBottomSheet(guestDetailsModel:guestDetailsModel);
                                                },
                                              );
                                            },
                                              child: AddGuestItem(guestDetailsModel:guestDetailsModel,index: index));
                                        },itemCount: bookingViewModel.guestDetailsList.length),
                                    const SizedBox(height: 10),
                                    Visibility(visible: bookingViewModel.guestDetailsList.length < (bookingViewModel.bookingRequestModelObserver.value?.guestCount ?? 0),child:
                                    InkWell(
                                      onTap: (){
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true, // allows full height scroll
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                          ),
                                          builder: (context) {
                                            return const AddGuestBottomSheet();
                                          },
                                        );
                                      },
                                        child: Text("+ Add New Guest",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: CustomColors.primary)))),
                                    SizedBox(height: 20),
                                  ],
                                )),
                                DottedLine(
                                  dashColor: CustomColors.darkGray,
                                ),
                                TitleMessageComponent(asset: 'assets/images/booking.png', title: 'Dates', message: "${AuthUtils.formatDateToLong(bookingViewModel.bookingRequestModelObserver.value?.checkInDate)}" +" - " + "${AuthUtils.formatDateToLong(bookingViewModel.bookingRequestModelObserver.value?.checkOutDate)}",),
                                DottedLine(
                                  dashColor: CustomColors.darkGray,
                                ),
                                TitleMessageComponent(asset: 'assets/images/bed.png', title: 'Room Type', message: "${bookingViewModel.bookingRequestModelObserver.value?.roomModel?.roomType ?? ""}"),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    width: double.infinity,
                                    color: CustomColors.lightGray,
                                    height: 5,
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ) : const SizedBox(),
                            ),
                            Obx(() {
                              return bookingViewModel.selectedCoupon.value != null ? InkWell(
                                onTap: (){
                                  Get.to(() => const CouponsPage(selecting: true));
                                },
                                child: Container(
                                  decoration: AppStyles.editTextBg,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.local_offer,size: 15,color: CustomColors.primary),
                                            SizedBox(width: 5),
                                            Text(
                                                '${bookingViewModel.selectedCoupon.value?.code ?? ""} ',
                                                style:  TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: CustomColors.textColor)),
                                            Text(
                                                ' Coupon applied',
                                                style:  TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                    color: CustomColors.textColor)),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text('View all offers',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                decoration: TextDecoration.underline,
                                                color: CustomColors.primary))
                                      ],
                                    ),
                                  ),
                                ),
                              ) :
                              InkWell(
                                onTap: (){
                                  Get.to(() => const CouponsPage(selecting: true));
                                },
                                child: Container(
                                  decoration: AppStyles.editTextBg,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.local_offer_outlined,size: 15,color: CustomColors.textColor),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Text(
                                                  'Apply Coupon',
                                                  style:  TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 18,
                                                      color: CustomColors.textColor)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text('View all offers',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                decoration: TextDecoration.underline,
                                                color: CustomColors.primary))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            ),
                            Obx(() => bookingViewModel.checkHostelRoomAvailabilityObserver.value.maybeWhen(
                                success: (response) {
                                  final availabilityResponse = (response as HostelRoomAvailabilityResponseModel).data;
                                  return Column(
                                    children: [
                                      const SideHeadingComponent(title: "Pricing Details",viewVisible: false),
                                      const SizedBox(height: 10),
                                      Container(
                                        decoration: AppStyles.categoryBg4,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                            right: 20,
                                            bottom: 20, // keep bottom if you want
                                            top: 20,     // remove upper padding
                                          ),
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              physics: NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.vertical,
                                              itemBuilder: (context,index){
                                                final hostelModel =  availabilityResponse?.paymentDetailLogs?[index];
                                                return Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                                  child: Row(
                                                    children: [
                                                      Expanded(child: Text(hostelModel?.message ?? "",style: TextStyle(fontWeight: FontWeight.w400,color: CustomColors.darkGray,fontSize: 14))),
                                                      Text("₹${hostelModel?.amount}",style: TextStyle(fontWeight: FontWeight.w400,color: CustomColors.primary,fontSize: 14)),
                                                    ],
                                                  ),
                                                );
                                              },itemCount: availabilityResponse?.paymentDetailLogs?.length ?? 0),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Expanded(child: Text("Total Amount",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.textColor,fontSize: 18))),
                                          Visibility(visible: (availabilityResponse?.discount ?? 0) != 0 ,child: Text("₹${(availabilityResponse?.amount ?? 0) + (availabilityResponse?.discount ?? 0)}",style: TextStyle(fontWeight: FontWeight.w500,color: CustomColors.textColor,fontSize: 18,decoration: TextDecoration.lineThrough, // 👈 strike-through
                                            decorationThickness: 2,
                                            decorationColor: Colors.black))),
                                          Text("₹${(availabilityResponse?.amount ?? 0) - (availabilityResponse?.discount ?? 0)}",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.primary,fontSize: 18)),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Obx(()=> bookingViewModel.confirmBookingObserver.value.maybeWhen(
                                          loading: () => CircularProgressIndicator(),
                                          orElse: () => (bookingViewModel.guestDetailsList.length < (bookingViewModel.bookingRequestModelObserver.value?.guestCount ?? 0)) ?
                                              PrimaryButton(buttonTxt: "Add Guest Details", buttonClick: (){
                                                showModalBottomSheet(
                                                  context: context,
                                                  isScrollControlled: true, // allows full height scroll
                                                  shape: const RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                                  ),
                                                  builder: (context) {
                                                    return const AddGuestBottomSheet();
                                                  },
                                                );
                                              })
                                              :
                                          PrimaryButton(buttonTxt: "Confirm Booking", buttonClick: (){
                                            final newRequest = bookingViewModel.bookingRequestModelObserver.value?.copyWith(guestDetailsList:bookingViewModel.guestDetailsList);
                                            bookingViewModel.performConfirmBooking(newRequest);
                                          })),
                                      ),
                                      const SizedBox(height: 50),
                                    ],
                                  );
                                },
                                orElse: () => PrimaryButton(buttonTxt: "Select Room", buttonClick: (){
                                  Get.to(() => const RoomsPage(fromHomePage: true));
                                })))
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
                Obx(()=> bookingViewModel.checkHostelRoomAvailabilityObserver.value.maybeWhen(loading: () => Container(width:double.infinity,height:double.infinity,color: CustomColors.black.withOpacity(0.4),child: Center(child: CircularProgressIndicator(color: CustomColors.white)),),orElse: () => SizedBox())),
              ],
            )),
      ),
    );
  }
}
