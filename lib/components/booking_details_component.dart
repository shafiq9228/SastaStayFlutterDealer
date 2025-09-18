import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/pages/booking_details_page.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';
import 'package:get/get.dart';

class BookingDetailsComponent extends StatefulWidget {
  final BookingModel? bookingModel;
  const BookingDetailsComponent({super.key, required this.bookingModel});

  @override
  State<BookingDetailsComponent> createState() => _BookingDetailsComponentState();
}

class _BookingDetailsComponentState extends State<BookingDetailsComponent> {

  @override
  Widget build(BuildContext context) {
    UserModel userModel = UserModel.fromJson(widget.bookingModel?.userId);
    RoomModel roomModel = RoomModel.fromJson(widget.bookingModel?.roomId);


    return GestureDetector(
      onTap: (){
         Get.to(() => BookingDetailsPage(bookingId: widget.bookingModel?.id ?? ""));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Container(
          color: CustomColors.white,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userModel.name ?? "",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.black,fontSize: 20)),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.call_outlined,color: CustomColors.darkGray,size: 15),
                                  const SizedBox(width: 5),
                                  Expanded(child: Text("${userModel.mobile ?? 0}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray))),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.bed,color: CustomColors.darkGray,size: 15),
                                  SizedBox(width: 5),
                                  Expanded(child: Text("${roomModel.roomNo ?? 0} | ${roomModel.floor ?? ""} | ${roomModel.roomType ?? ""}",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray))),
                                ],
                              ),
                            ),
                            Container(decoration: AppStyles.gradientColorDecoration1,
                                child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Text("${AuthUtils.formatDateToLong(widget.bookingModel?.checkInDate)} To ${AuthUtils.formatDateToLong(widget.bookingModel?.checkOutDate)}",style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w400)),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Booking ID",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray),),
                          Text(widget.bookingModel?.id ?? "",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(color:
                      CustomColors.darkGray,height: 10,width: 1),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Amount Paid",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray)),
                          Text("${widget.bookingModel?.total ?? 0}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(color:
                      CustomColors.darkGray,height: 10,width: 1),
                    ),
                    Expanded(
                      child: widget.bookingModel?.paymentStatus == "success" ? Container(
                        decoration: widget.bookingModel?.bookingStatus == "Ongoing" ? AppStyles.categoryBg2 : widget.bookingModel?.bookingStatus == "Upcoming" ? AppStyles.categoryBg4 : AppStyles.categoryBg1,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                            child: Text(widget.bookingModel?.bookingStatus ?? '',style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.textColor),),
                          ),
                        ),
                      ) : Text(widget.bookingModel?.paymentStatus ?? '',style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.orange)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text("Booked On : ${AuthUtils.formatDateToLong(widget.bookingModel?.createdAt)}",style: TextStyle(color: CustomColors.textColor,fontSize: 12,fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
