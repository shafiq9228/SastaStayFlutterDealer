import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';


class PrimaryButton extends StatelessWidget {
  final String buttonTxt;
  final VoidCallback buttonClick;
  const PrimaryButton({super.key, required this.buttonTxt, required this.buttonClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:buttonClick,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: AppStyles.primaryContainerStyle,
        child: Center(child: Text(buttonTxt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),),
      ),
    );
  }
}

