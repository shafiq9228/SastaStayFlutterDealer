import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_colors.dart';


class SecondaryHeadingComponent extends StatelessWidget {
  final String buttonTxt;
  final VoidCallback? buttonClick;
  const SecondaryHeadingComponent({super.key, required this.buttonTxt, this.buttonClick});

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
          padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
          child: SizedBox(width:20,height:20,child: Image.asset("assets/images/back_btn.png")),
        )),
        Padding(
          padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
          child: SizedBox(width:200,child: Text(buttonTxt,textAlign: TextAlign.start,style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 22),)),
        ),
        Flexible(child: SizedBox()),
      ],
    ));
  }
}
