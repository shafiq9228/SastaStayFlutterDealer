import 'package:flutter/material.dart';
import '../utils/custom_colors.dart';

class TitleMessageComponent extends StatelessWidget {
  final String asset;
  final String title;
  final String message;
  const TitleMessageComponent({super.key, required this.asset, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        color: CustomColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(asset,width: 20,height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.darkGray)),
                      Text(message,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.black)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
