import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../api/api_result.dart';
import '../components/custom_progress_bar.dart';
import '../components/primary_button.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';

class OtpVerificationPage extends StatefulWidget {
  final int? mobileNumber;
  const OtpVerificationPage({super.key, required this.mobileNumber});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> with CodeAutoFill {
  final TextEditingController pinController = TextEditingController();
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    listenForCode(); // start listening for OTP
  }

  @override
  void dispose() {
    cancel(); // stop listening
    super.dispose();
  }

  @override
  void codeUpdated() {
    pinController.text = code.toString();
    verifyOtp();
  }


  void verifyOtp() {
    authViewModel.verifyOtpResponseObserver.value = const ApiResult.loading();
    AuthUtils.getAppVersion().then((version) async {
      String? deviceId = await AuthUtils.getDeviceId();
      String source = await AuthUtils.getSource();
      authViewModel.verifyOtp(
        VerifyOtpRequestModel(
          mobile: widget.mobileNumber,
          otp: int.parse(pinController.text),
          source: source,
          version: version,
          deviceId: deviceId,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SecondaryHeadingComponent(buttonTxt: "Otp Verification"),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "OTP Verification",
                style: TextStyle(
                  color: CustomColors.textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Verification Code Sent To ${widget.mobileNumber}",
                style: TextStyle(
                  color: CustomColors.gray,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: PinFieldAutoFill(
                      controller: pinController,
                      codeLength: 6,
                      autoFocus: true,
                      decoration: UnderlineDecoration(
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: CustomColors.textColor,
                          fontWeight: FontWeight.w600,
                        ),
                        colorBuilder: FixedColorBuilder(CustomColors.primary),
                      ),
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
                  Obx(() => authViewModel.verifyOtpResponseObserver.value.maybeWhen(
                      loading: () => const CustomProgressBar(),
                      orElse: () => PrimaryButton(buttonTxt: "VERIFY OTP", buttonClick: () async {
                        authViewModel.verifyOtpResponseObserver.value = const ApiResult.loading();
                        final version = await AuthUtils.getAppVersion();
                        String? deviceId = await AuthUtils.getDeviceId();
                        String sorce = await AuthUtils.getSource();
                        authViewModel.verifyOtp(VerifyOtpRequestModel(mobile: widget.mobileNumber, otp: pinController.text.toString().isEmpty ? null : int.parse(pinController.text.toString()), source: sorce, version:version, deviceId: deviceId));
                      },))
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
