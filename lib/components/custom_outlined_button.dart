import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String buttonTxt;
  final VoidCallback buttonClick;
  const CustomOutlinedButton({super.key, required this.buttonTxt, required this.buttonClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:buttonClick,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: CustomColors.white,border: Border.all(width: 0.5,color: CustomColors.textColor)),
        child: Center(child: Text(buttonTxt,style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 16),),),
      ),
    );
  }
}
