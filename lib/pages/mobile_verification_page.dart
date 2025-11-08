import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import '../api/api_result.dart';
import '../components/custom_progress_bar.dart';
import '../components/primary_button.dart';
import '../request_models/auth_request_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';


class MobileVerificationPage extends StatefulWidget {
  final String? primaryHostelId;
  const MobileVerificationPage({super.key, this.primaryHostelId});

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
          if(widget.primaryHostelId != null) const SecondaryHeadingComponent(buttonTxt: "Register As Manager"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height:20),
                  if(widget.primaryHostelId == null) SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Login",style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w800,fontSize: 20),),
                        Text("Enter your Login Information",style: TextStyle(color: CustomColors.gray,fontWeight: FontWeight.w500,fontSize: 12))
                      ],
                    ),
                  ),
                  if(widget.primaryHostelId == null) const SizedBox(height:30),
                  Text(widget.primaryHostelId != null ? "Manager Mobile Number"  : "Mobile Number",style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w500,fontSize: 16),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: AppStyles.editTextBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              hintStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white), // Default color
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: CustomColors.white, width: 2.0), // Focus color
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
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
                          TextSpan(
                              text:
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
                      loading: () =>  const CustomProgressBar(),
                      orElse: () => PrimaryButton(buttonTxt: "Log In", buttonClick: () {
                        authViewModel.sendOtp(SendOtpRequestModel(mobile: mobileNumberText.text.trim().isEmpty ? null : int.parse(mobileNumberText.text),primaryHostelId:widget.primaryHostelId));
                      }))
                  ),
                  const SizedBox(height: 20)
                ],),
            ),
          ),
        ],
      )),);
  }

}
