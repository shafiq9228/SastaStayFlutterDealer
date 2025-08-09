import 'package:flutter/material.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';

class AmenitiesComponent extends StatelessWidget {
  final AmenitiesModel? amenitiesModel;
  final int view;
  const AmenitiesComponent({super.key,required this.amenitiesModel, required this.view});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: view == 1 ? BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.2)) : BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.textColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomNetworkImage(imageUrl: amenitiesModel?.image ?? '',width: 20,height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(amenitiesModel?.name ?? '',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
