import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import 'mobile_verification_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());

    return StatefulWrapper(
      onInit: () async {
        await  authViewModel.fetchCurrentLocation();
        final version = await AuthUtils.getAppVersion();
        await authViewModel.fetchDealerStatus(version);
      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Center(
          child:
          IntrinsicHeight(
            child: Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/images/splash.png"),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sasta',
                        style: TextStyle(color: CustomColors.textColor, fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: 'Stays',
                        style: TextStyle(color: CustomColors.primary, fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
