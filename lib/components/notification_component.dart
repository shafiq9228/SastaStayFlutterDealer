import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/util.dart';
import '../view_models/hostel_view_model.dart';
import 'custom_network_image.dart';



class NotificationComponent extends StatelessWidget {
  final NotificationModel? notificationModel;
  final HostelViewModel hostelViewModel;
  const NotificationComponent({super.key, this.notificationModel, required this.hostelViewModel});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      child: Container(
          decoration: AppStyles.categoryBg4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomNetworkImage(fit: BoxFit.cover,imageUrl: notificationModel?.image?.isNotEmpty == true  ? notificationModel?.image ?? "https://firebasestorage.googleapis.com/v0/b/sastastay-1d420.firebasestorage.app/o/bannerImages%2F1758093612261.png?alt=media&token=c8d13714-b5f7-4c20-888f-5244d6f6803b" : "https://firebasestorage.googleapis.com/v0/b/sastastay-1d420.firebasestorage.app/o/bannerImages%2F1758093612261.png?alt=media&token=c8d13714-b5f7-4c20-888f-5244d6f6803b",width: 50,height: 50,),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(notificationModel?.title ?? "",style:TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: CustomColors.primary)),
                      const SizedBox(height: 5),
                      Text(notificationModel?.body ?? "",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
                      const SizedBox(height: 5),
                      //Text(timeAgoCustom(notificationModel?.createdAt),style:TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: CustomColors.textColor)),
                    ],
                  ),
                ))
              ],
            ),
          )),
    );
  }
}
