import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';

class ErrorTextComponent extends StatelessWidget {
  final String? assetImage;
  final String text;
  const ErrorTextComponent({super.key, this.assetImage, required this.text});

  @override
  Widget build(BuildContext context) {
    List<BoxDecoration> decorations = [AppStyles.categoryBg1,AppStyles.categoryBg2,AppStyles.categoryBg3,AppStyles.categoryBg4,AppStyles.categoryBg5];
    final random = Random();

    return Container(
        decoration: decorations[random.nextInt(decorations.length)],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            children: [
              Container(decoration: AppStyles.whiteCircleBg, child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(assetImage ?? "assets/images/mark.png",width: 20,height: 20,),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(text,style:TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: CustomColors.textColor)),
              ))
            ],
          ),
        ));
  }
}
