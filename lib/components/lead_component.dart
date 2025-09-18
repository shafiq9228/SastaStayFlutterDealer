import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import 'package:sasta_stay_dealer/utils/app_styles.dart';

import '../response_model/hostel_response_model.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';

class LeadComponent extends StatelessWidget {
  final LeadModel? leadModel;
  const LeadComponent({super.key, this.leadModel});

  @override
  Widget build(BuildContext context) {

    RoomModel? roomModel = leadModel?.roomId != null ? RoomModel.fromJson(leadModel?.roomId) : null;
    UserModel? userModel = leadModel?.userId != null ? UserModel.fromJson(leadModel?.userId) : null;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Container(
        decoration: AppStyles.categoryBg4,
        child: Column(
          children: [
            CustomNetworkImage(imageUrl: roomModel?.image ?? 'https://i.pinimg.com/originals/5b/81/5f/5b815fa3c99fc946d20070770857e829.png',width: double.infinity,height: 150,fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 10),
                  Text(roomModel?.roomType ?? "",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: CustomColors.black)),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Room No. : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black)),
                      Expanded(child: Text(roomModel?.roomNo ?? "",textAlign: TextAlign.right,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black))),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Floor : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black)),
                      Expanded(child: Text((roomModel?.floor ?? 0) == 0 ? "Ground Floor" : "${roomModel?.floor ?? 0} Floor",textAlign: TextAlign.right,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text("User Details",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16,color: CustomColors.primary)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Name : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black)),
                      Expanded(child: Text(userModel?.name ?? "",textAlign: TextAlign.right,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black))),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Mobile : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black)),
                      Expanded(child: Text("${userModel?.mobile ?? 0}",textAlign: TextAlign.right,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black))),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text("Email : ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black)),
                      Expanded(child: Text(userModel?.email ?? "",textAlign: TextAlign.right,maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black))),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
