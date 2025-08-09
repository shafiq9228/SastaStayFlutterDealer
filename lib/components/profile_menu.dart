
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';


class ProfileMenu extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTapped;


  const ProfileMenu({super.key,required this.title,
    required this.image, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      onTap: onTapped,
      child: ListTile(
        leading: SizedBox(
          width: 20,
          height: 20,
          child: Image.asset(
              image,color: CustomColors.textColor,),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.black)),
        trailing: SizedBox(
          width: 25,
          height: 25,
          child: Image.asset(
              'assets/images/right_arrow.png'
          ),
        ),
      ),
    );
  }
}