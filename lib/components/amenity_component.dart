import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

class AmenityComponent extends StatefulWidget {
  final AmenitiesModel? amenitiesModel;
  final bool? edit;
  const AmenityComponent({super.key, required this.amenitiesModel,this.edit});

  @override
  State<AmenityComponent> createState() => _AmenityComponentState();


}

class _AmenityComponentState extends State<AmenityComponent> {
  final authViewModel = Get.put(AuthViewModel());





  @override
  Widget build(BuildContext context) {


    return  InkWell(
      onTap: (){
        if(widget.edit == true){
          if(authViewModel.amenityIds.contains(widget.amenitiesModel?.id ?? "")){
            authViewModel.amenityIds.remove(widget.amenitiesModel?.id ?? "");
          }
          else{
            authViewModel.amenityIds.add(widget.amenitiesModel?.id ?? "");
          }
        }
      },
      child: Obx(()=> Padding(
          padding: const EdgeInsets.symmetric(vertical:3,horizontal: 10),
          child: Container(
            width: double.infinity,
            decoration: authViewModel.amenityIds.contains(widget.amenitiesModel?.id ?? "") ? BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: CustomColors.primary) : BoxDecoration(borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: CustomColors.textColor)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomNetworkImage(imageUrl: widget.amenitiesModel?.image ?? "", width: 30, height: 30,color: authViewModel.amenityIds.contains(widget.amenitiesModel?.id ?? "") ? CustomColors.white : CustomColors.textColor),
                  const SizedBox(width: 10),
                  Expanded(child: Text(
                    widget.amenitiesModel?.name ?? "", textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color:  authViewModel.amenityIds.contains(widget.amenitiesModel?.id ?? "") ? CustomColors.white : CustomColors.textColor),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
