import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/notifications_page.dart';
import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';

class HomePageComponent extends StatelessWidget {
  const HomePageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(()=> Text(authViewModel.fetchUserDetailsObserver.value.maybeWhen(success: (data) => "Hi, ${(data as FetchUserDetailsResponseModel).data?.name ?? ""} 👋",orElse: () => ""),style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.textColor,fontSize: 18))),
                const SizedBox(height: 5),
                Text("Lets Find The Best Users",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w800,color: CustomColors.textColor,fontSize: 18)),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(() => const NotificationsPage());
            },
            child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(500),color: CustomColors.primary.withOpacity(0.3))
                ,child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/images/bell.png",width: 20,height: 20,color: CustomColors.primary,),
            )),
          )
        ],
      ),
    );
  }
}
