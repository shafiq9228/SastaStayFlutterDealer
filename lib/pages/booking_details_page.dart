import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/pages/main_page.dart';
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
  final String orderId;
  final bool? fromBooking;
  const BookingDetailsPage({super.key, required this.orderId, this.fromBooking});

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  final bookingViewModel = Get.put(BookingViewModel());

  @override
  Widget build(BuildContext context) {

    return StatefulWrapper(
      onInit: (){
        bookingViewModel.fetchBookingDetails(widget.orderId ?? "");
      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Obx(() => bookingViewModel.fetchBookingDetailsObserver.value.maybeWhen(
            loading: () => const HostelDetailsPageShimmer(),
            success: (data){
              final bookingDataModel = (data as FetchBookingDetailsResponseModel).data;
              final hostelData = HostelModel.fromJson(bookingDataModel?.hostelId);
              final roomModelData = RoomModel.fromJson(bookingDataModel?.roomId);
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
                                  fontSize: 24,
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
                              )
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
                          const SideHeadingComponent(title: "Your Booking Details",viewVisible: false),
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
                          TitleMessageComponent(asset: 'assets/images/booking.png', title: 'Dates', message: "${AuthUtils.formatDateToLong(bookingDataModel?.checkInDate)}" +" - " + "${AuthUtils.formatDateToLong(bookingDataModel?.checkOutDate)}",),
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
                              Visibility(visible: (bookingDataModel?.discount ?? 0) != 0 ,child: Text("₹${(bookingDataModel?.total ?? 0) + (bookingDataModel?.discount ?? 0)}",style: TextStyle(fontWeight: FontWeight.w500,color: CustomColors.textColor,fontSize: 18,decoration: TextDecoration.lineThrough, // 👈 strike-through
                                  decorationThickness: 2,
                                  decorationColor: Colors.black))),
                              Text("₹${(bookingDataModel?.total ?? 0) - (bookingDataModel?.discount ?? 0)}",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.primary,fontSize: 18)),
                            ],
                          ),
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
