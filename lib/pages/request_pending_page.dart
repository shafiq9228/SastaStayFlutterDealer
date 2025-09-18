
import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/pages/hostels_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';

import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';
import 'package:get/get.dart';

import '../utils/preference_manager.dart';
import 'mobile_verification_page.dart';

class RequestPendingPage extends StatefulWidget {
  final HostelModel? hostelModel;
  const RequestPendingPage({super.key, required this.hostelModel});

  @override
  State<RequestPendingPage> createState() => _RequestPendingPageState();
}

class _RequestPendingPageState extends State<RequestPendingPage> {
  final preferenceManager = Get.put(PreferenceManager());
  RxBool logOuting = false.obs;

  @override
  Widget build(BuildContext context) {

    void logOutConfirmationDialog(){
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  Text("Are you sure you want to Log Out?",style:TextStyle(fontSize: 16,color: CustomColors.textColor,fontWeight: FontWeight.w700)),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(70, 40),
                          ),
                          child: const Text(
                            "No",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            Get.back();
                            logOuting.value = true;
                            preferenceManager.clearAll();
                            logOuting.value = false;
                            Get.offAll(() =>  MobileVerificationPage());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            minimumSize: const Size(70, 40),
                          ),
                          child: const Text(
                            "Yes",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Scaffold(backgroundColor: CustomColors.white,body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Get.to(() => const HostelsPage());
                    },
                    child: Container(
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(500),border: Border.all(width: 0.5,color: CustomColors.textColor))
                        ,child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/swap.png",width: 20,height: 20,color: CustomColors.textColor),
                    )),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: (){
                      logOutConfirmationDialog();
                    },
                    child: Container(
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(500),border: Border.all(width: 0.5,color: CustomColors.textColor))
                        ,child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/log_out_icon.png",width: 20,height: 20,color: CustomColors.textColor),
                    )),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Text("Registration Submitted!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: CustomColors.primary),),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hostel Name : ${widget.hostelModel?.hostelName}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: CustomColors.textColor),),
                    SizedBox(height: 5),
                    Text("Branch : ${widget.hostelModel?.branch ?? 0}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: CustomColors.darkGray),),
                    SizedBox(height: 5),
                    Text("Address : ${widget.hostelModel?.location?.address1 ?? ""}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,color: CustomColors.darkGray),),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 350,width: 200,child: Image.asset("assets/images/pending.png")),
              SizedBox(height: 20),
              Text("Thank you for registering . Your Hostel application is under review. Our team will notify you once your account has been approved",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
            ],
          ),
        ),
      ),
    ),);
  }
}
