import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';

class CustomEditTextComponent extends StatelessWidget {
  final String title;
  final String hint;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextEditingController controller;
  final double? containerHeight;
  const CustomEditTextComponent({super.key,required this.controller, required this.title, required this.hint, this.keyboardType, this.maxLength,this.containerHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          height: containerHeight ?? 50,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
                maxLength: maxLength,
                keyboardType: keyboardType ?? TextInputType.name,
                controller: controller,
                style: TextStyle(
                    color:CustomColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: hint,
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Default color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: CustomColors.white, width: 2.0), // Focus color
                  ),
                )
            ),
          ),
        ),
      ],
    );
  }
}
