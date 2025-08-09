import 'package:flutter/cupertino.dart';

import '../utils/custom_colors.dart';

class EmptyDataView extends StatelessWidget {
  final String text;
  const EmptyDataView({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          SizedBox(height: 150,width: 150,child: Image.asset("assets/images/no_data_founded.png")),
          const SizedBox(height: 30),
          Text(text,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),)
        ],
      ),
    );
  }
}
