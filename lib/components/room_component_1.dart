import 'package:flutter/material.dart';

import '../response_model/hostel_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';

class RoomComponent1 extends StatelessWidget {
  final RoomModel? roomModel;
  const RoomComponent1({super.key, required this.roomModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5),
      child: Container(
        decoration: AppStyles.categoryBg4,
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomNetworkImage(imageUrl: roomModel?.image ?? "",height: 100,fit: BoxFit.cover,width: 150),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(roomModel?.roomType ?? "",maxLines: 1,style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.textColor.withOpacity(0.8),fontSize: 14)),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text("${roomModel?.rent?.monthly ?? 0}/Monthly",maxLines: 1,style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.textColor.withOpacity(0.8),fontSize: 14)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
