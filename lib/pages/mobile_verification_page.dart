import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../api/api_result.dart';
import '../components/custom_progress_bar.dart';
import '../components/primary_button.dart';
import '../request_models/auth_request_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';


class MobileVerificationPage extends StatefulWidget {
  const MobileVerificationPage({super.key});

  @override
  State<MobileVerificationPage> createState() => _MobileVerificationPageState();
}

class _MobileVerificationPageState extends State<MobileVerificationPage> {
  final authViewModel = Get.put(AuthViewModel());


  @override
  Widget build(BuildContext context) {
    final TextEditingController mobileNumberText = TextEditingController();
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(top: true,child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
        child: Text("Login / SignUp",style: TextStyle(color: CustomColors.primary,fontWeight: FontWeight.w500,fontSize: 22),),
      ),
      Container(width: double.infinity,height: 1,color: CustomColors.primary,),
          const SizedBox(height:30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Enter Your Mobile Number",style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w500,fontSize: 24),),
          ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  controller: mobileNumberText,
                  style: TextStyle(
                      color:CustomColors.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Enter Your Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey), // Default color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: CustomColors.darkGray, width: 2.0), // Focus color
                  ),
                )
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(height: 1.3),
                  children: [
                    TextSpan(text:
                    'By creating an account, I accept the', style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: CustomColors.textColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    )),
                    TextSpan(text:
                    ' Terms & Conditions', style:TextStyle(
                      fontFamily: 'Montserrat',
                      color: CustomColors.primary,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ))
                  ]),
            ),
            const SizedBox(height: 20),
            Obx(() => authViewModel.sendOtpResponseObserver.value.maybeWhen(
                loading: () => const CustomProgressBar(),
                orElse: () => PrimaryButton(buttonTxt: "SEND OTP", buttonClick: () {
                  authViewModel.sendOtp(SendOtpRequestModel(mobile: int.parse((mobileNumberText.text.trim().isEmpty) ? "0" : mobileNumberText.text.trim().toString())));
                },))
            ),

          ],
        ),
      )
    ],)),);
  }

}
