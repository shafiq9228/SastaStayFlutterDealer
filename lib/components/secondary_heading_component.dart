import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class SecondaryHeadingComponent extends StatelessWidget {
  final String buttonTxt;
  final VoidCallback buttonClick;
  const SecondaryHeadingComponent({super.key, required this.buttonTxt, required this.buttonClick});

  @override
  Widget build(BuildContext context) {
    return Container(color: CustomColors.white,child: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
        child: Row(
          children: [
            InkWell(onTap:buttonClick,child: SizedBox(width:20,height:20,child: Image.asset("assets/images/back_btn.png"))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(buttonTxt,style: TextStyle(color: CustomColors.primary,fontWeight: FontWeight.w600,fontSize: 22),),
            ),
          ],
        ),
      ),
      Container(width: double.infinity,height: 1,color: CustomColors.primary,),
    ]));
  }
}
