import 'package:flutter/material.dart';
import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';

class OnBoardingScreenComponent extends StatelessWidget {
  final OnBoardingDataModel onBoardingDataModel;
  const OnBoardingScreenComponent({super.key,required this.onBoardingDataModel});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        top: true,
        child:Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Sasta',
                      style: TextStyle(color: CustomColors.textColor, fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: 'Stays',
                      style: TextStyle(color: CustomColors.primary, fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Expanded(child: Image.asset(onBoardingDataModel.image)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(onBoardingDataModel.title,style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w800,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Text(onBoardingDataModel.message,style: TextStyle(color: CustomColors.darkGray,fontWeight: FontWeight.w600,fontSize: 14),),
              )
            ],
          )
        )
      ),
    );
  }
}
