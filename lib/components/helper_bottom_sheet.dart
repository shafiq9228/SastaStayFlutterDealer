import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_colors.dart';

class HelperBottomSheet extends StatelessWidget {
  final String? assetImage;
  final String? title;
  final String? message;
  final String? btn1Txt;
  final String? btn2Txt;
  final VoidCallback btn1Click;
  final VoidCallback? btn2Click;
  const HelperBottomSheet({super.key, this.assetImage, this.title, this.message, this.btn1Txt, this.btn2Txt, required this.btn1Click, this.btn2Click});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: CustomColors.white,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom, // handle keyboard
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // makes sheet wrap content
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              SizedBox(height: 150,width: 150,child: Image.asset(assetImage ?? "assets/images/no_data_found.png")),
              const SizedBox(height: 10),
              Text(title ?? "",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: CustomColors.textColor),),
              const SizedBox(height: 10),
              Text(message ?? "",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.darkGray),),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    if (btn1Txt?.isNotEmpty == true)
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColors.white,
                            border: Border.all(width: 0.5,color: CustomColors.darkGray)
                          ),
                          child: TextButton(
                            onPressed: btn1Click,
                            child: Text(
                              btn1Txt ?? "",
                              style: TextStyle(
                                color: CustomColors.textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (btn2Txt?.isNotEmpty == true)
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColors.primary,
                          ),
                          child: TextButton(
                            onPressed: btn2Click,
                            child: Text(
                              btn2Txt ?? "",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
