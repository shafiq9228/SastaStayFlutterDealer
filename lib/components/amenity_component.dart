import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';

class AmenityComponent extends StatelessWidget {
  final AmenitiesModel? amenitiesModel;
  const AmenityComponent({super.key, required this.amenitiesModel});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:3,horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.5, color: CustomColors.lightGray),
            color: true ? CustomColors.primary : CustomColors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomNetworkImage(
                  imageUrl: amenitiesModel?.image ?? "", width: 30, height: 30),
              SizedBox(width: 10),
              Expanded(child: Text(
                amenitiesModel?.name ?? "", textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: true ? CustomColors.white : CustomColors.textColor),))
            ],
          ),
        ),
      ),
    );
  }
}
