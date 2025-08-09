import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';

class UpdateVersionScreen extends StatefulWidget {
  const UpdateVersionScreen({super.key});

  @override
  State<UpdateVersionScreen> createState() => _UpdateVersionScreenState();
}

class _UpdateVersionScreenState extends State<UpdateVersionScreen> {
  final authViewModel = Get.put(AuthViewModel());
  String appVersion = 'Unknown';
  var message = "";

  @override
  void initState() {
    super.initState();
    message = "An Update Required \n Please Update And Continue";
    _getAppVersion();
  }

  Future<void> _getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/update_version.png',width: 150,height: 150,),
                        const SizedBox(height: 30),
                         Text("Current Version $appVersion",textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 16,
                            color: CustomColors.textColor,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal
                        ),),
                        const SizedBox(height: 20),
                        Text(message,textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 16,
                            color: CustomColors.primary,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.normal
                        ),),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12,top: 10,bottom: 20),
                          child: Container(
                            width: double.infinity,// Set width as needed
                            decoration: BoxDecoration(
                              color: CustomColors.primary,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: _launchURL,
                              child: const Text(
                                'Update',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: launchEmail,
                child: Text("Contact admin for support \n SastaStay@gmail.com",textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 18,
                    color: CustomColors.primary,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.normal
                ),),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }


  final String playStoreUrl = "https://play.google.com/store/apps/details?id=com.sastastay.dealerapp";
  final String appStoreUrl = "https://apps.apple.com/us/search?term=SastaStayUrl";

  Future<void> _launchURL() async {
    final Uri url = Uri.parse(
          Platform.isAndroid
          ? playStoreUrl
          : appStoreUrl,
    );

    if (await canLaunchUrl(url) == true) {
      print("url");
      await launchUrl(url);
    } else {
      Get.snackbar(
        "Could not launch",
        "Could not launch the store",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      throw 'Could not launch $url';
    }
  }


  final String email = 'vlogcall@gmail.com';
  final String subject = 'VersionUpdate';
  final String body = 'Body';

  Future<void> launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      Get.snackbar("Could not launch","Could not launch Email",snackPosition: SnackPosition.BOTTOM,backgroundColor:Colors.red,colorText: Colors.white);
      throw 'Could not launch $emailUri';
    }
  }

  canLaunchUrl(Uri url) {}
}
