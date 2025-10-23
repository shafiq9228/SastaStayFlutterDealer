import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/utils/app_styles.dart';

import '../utils/custom_colors.dart';


class SecondaryHeadingComponent extends StatelessWidget {
  final String buttonTxt;
  final VoidCallback? buttonClick;
  final String? extraBtnText;
  final VoidCallback? extraBtnClick;
  const SecondaryHeadingComponent({super.key, required this.buttonTxt, this.buttonClick, this.extraBtnText, this.extraBtnClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.white,child: Row(
      children: [
        InkWell(onTap:(){
          if (buttonClick != null) {
            buttonClick!();
          } else {
            Get.close(1);
          }
        },child: Padding(
          padding: const EdgeInsets.symmetric(vertical:30,horizontal: 20),
          child: SizedBox(width:20,height:20,child: Image.asset("assets/images/back_btn.png")),
        )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
            child: SizedBox(width:200,child: Text(buttonTxt,textAlign: TextAlign.start,style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 18),)),
          ),
        ),
        Visibility(
          visible: extraBtnText != null,
          child: InkWell(
            onTap:extraBtnClick,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Container(
                decoration: AppStyles.categoryBg3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Text(extraBtnText ?? "",style: TextStyle(fontWeight: FontWeight.w500,color: CustomColors.textColor),),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
