import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:truecaller_sdk/truecaller_sdk.dart';
import '../api/api_result.dart';
import '../components/custom_progress_bar.dart';
import '../components/primary_button.dart';
import '../request_models/auth_request_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
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



  StreamSubscription? _tcStreamSub;

  String? _codeVerifier;
  String? _oAuthState;

  @override
  void initState() {
    super.initState();

    TcSdk.initializeSDK(
      sdkOption: TcSdkOptions.OPTION_VERIFY_ALL_USERS,
    );

    _tcStreamSub = TcSdk.streamCallbackData.listen(_onTruecallerCallback);
  }

  @override
  void dispose() {
    _tcStreamSub?.cancel();
    super.dispose();
  }

  // ===================== TRUECALLER LOGIN =====================
  Future<void> signInWithTrueCaller() async {
    try {

      final isUsable = await TcSdk.isOAuthFlowUsable;
      if (!isUsable) {
        Get.snackbar(
            "Not Supported",
            "Truecaller not available on this device",backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM
        );
        return;
      }

      _oAuthState = DateTime.now().millisecondsSinceEpoch.toString();
      TcSdk.setOAuthState(_oAuthState!);
      TcSdk.setOAuthScopes(['profile','phone', 'openid','email']);

      _codeVerifier = await TcSdk.generateRandomCodeVerifier;
      final codeChallenge = await TcSdk.generateCodeChallenge(_codeVerifier!);


      if (codeChallenge == null) {
        Get.snackbar("Error", "Truecaller not supported",backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
        return;
      }

      TcSdk.setCodeChallenge(codeChallenge);
      TcSdk.getAuthorizationCode;
    } catch (e) {

      debugPrint("Truecaller Login Error: $e");
    }
  }

  void _onTruecallerCallback(TcSdkCallback tcSdkCallback) {
    switch (tcSdkCallback.result) {
      case TcSdkCallbackResult.success:
        final TcOAuthData data = tcSdkCallback.tcOAuthData!;
        debugPrint("Authorization Code: ${data.authorizationCode}");
        print("_codeVerifier ${_codeVerifier}");

        AuthUtils.getAppVersion().then((version) async {
          String? deviceId = await AuthUtils.getDeviceId();
          String source = await AuthUtils.getSource();
          authViewModel.trueCallerLogin(TrueCallerRequestModel(authorizationCode: data.authorizationCode, codeVerifier:_codeVerifier, source: source, version: version, deviceId:deviceId));
        });

        break;
      case TcSdkCallbackResult.failure:
        debugPrint("Truecaller Error: ${tcSdkCallback.error?.message}");
        Get.snackbar(
            "Error",
            tcSdkCallback.error?.message ?? "Truecaller authentication failed", backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM
        );
        break;

      case TcSdkCallbackResult.verification:
        debugPrint("Truecaller verification required");
        Get.snackbar(
            "Verification Required",
            "Please verify your Truecaller account", backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM
        );
        break;

      default:
        break;
    }
  }



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
                  /// OR DIVIDER
                  if(Platform.isAndroid && widget.primaryHostelId == null)  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                height: 1,
                                color: CustomColors.darkGray)),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 20),
                          child: Text("Or"),
                        ),
                        Expanded(
                            child: Container(
                                height: 1,
                                color: CustomColors.darkGray)),
                      ],
                    ),
                  ),

                  if(Platform.isAndroid && widget.primaryHostelId == null) Obx(() => authViewModel.trueCallerVerificationObserver.value.maybeWhen(
                      loading: () => Center(child: CircularProgressIndicator()),
                      orElse: () => GestureDetector(
                        onTap: signInWithTrueCaller,
                        child: Container(
                          height: 40,
                          decoration: AppStyles.trueCallerContainerStyle,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      "assets/images/truecaller.webp")),
                              SizedBox(width: 10),
                              Text("Continue With Truecaller",style: TextStyle(fontSize: 16,color: CustomColors.black),),
                            ],
                          ),
                        ),
                      ))
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
                      orElse: () => PrimaryButton(buttonTxt: "Log In", buttonClick: () async {
                        authViewModel.sendOtpResponseObserver.value = const ApiResult.loading();
                        String signature = await SmsAutoFill().getAppSignature;
                        authViewModel.sendOtp(SendOtpRequestModel(mobile: mobileNumberText.text.trim().isEmpty ? null : int.parse(mobileNumberText.text),signature:signature,primaryHostelId:widget.primaryHostelId));
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
