import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import '../response_model/bookings_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../view_models/booking_view_model.dart';

class AddGuestItem extends StatelessWidget {
  final int index;
  final  GuestDetailsModel? guestDetailsModel;
  final bool? deleteView;
  const AddGuestItem({super.key,required this.guestDetailsModel, required this.index, this.deleteView});

  @override
  Widget build(BuildContext context) {
    final bookingViewModel = Get.put(BookingViewModel());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: AppStyles.categoryBg5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CustomNetworkImage(imageUrl: guestDetailsModel?.aadharImage ?? "",width: 100,height: 100,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(guestDetailsModel?.name ?? '',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.textColor)),
                      Text(guestDetailsModel?.aadharNumber ?? '',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.textColor)),
                      Text("${guestDetailsModel?.gender ?? ""} | ${guestDetailsModel?.dob ?? ""} | ${guestDetailsModel?.mobile ?? ""}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
