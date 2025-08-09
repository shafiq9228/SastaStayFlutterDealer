import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';

class HomePageComponent extends StatelessWidget {
  const HomePageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    return Container(
      height: 100,
      width: double.infinity,
      color: CustomColors.primary,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(()=> Text(authViewModel.fetchUserDetailsObserver.value.maybeWhen(success: (data) => "Hi, ${(data as FetchUserDetailsResponseModel).data?.name ?? ""} 👋",orElse: () => ""),style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.white,fontSize: 18))),
                const SizedBox(height: 5),
                Text("Lets Find The Best Hostel",style: TextStyle(fontWeight: FontWeight.w800,color: CustomColors.white,fontSize: 20)),
              ],
            ),
          ),
        ],
      )
    );
  }
}
