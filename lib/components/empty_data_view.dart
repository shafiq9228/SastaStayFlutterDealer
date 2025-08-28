import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../utils/custom_colors.dart';

class EmptyDataView extends StatelessWidget {
  final String text;
  const EmptyDataView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    List<String> images = ["assets/images/no_data_found.png","assets/images/no_data_found_1.png","assets/images/no_data_found_2.png"];
    final random = Random();

    return IntrinsicHeight(
      child: Column(
        children: [
          SizedBox(height: 150,width: 150,child: Image.asset(images[random.nextInt(images.length)])),
          const SizedBox(height: 30),
          Text(text,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),)
        ],
      ),
    );
  }
}
