import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,child: Center(child: SizedBox(width:40,height: 40,child: CircularProgressIndicator(color: CustomColors.primary,strokeWidth: 2,))));
  }
}
