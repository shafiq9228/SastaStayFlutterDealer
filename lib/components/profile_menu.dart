
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';


class ProfileMenu extends StatelessWidget {
  final String title;
  final String image;
  final bool? logOutMenu;
  final VoidCallback onTapped;

  const ProfileMenu({super.key,required this.title,
    required this.image, required this.onTapped, this.logOutMenu});

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
            image,color: logOutMenu == true ?  CustomColors.red :CustomColors.textColor,),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: logOutMenu == true ? CustomColors.red :Colors.black)),
        trailing: SizedBox(
            width: 20,
            height: 20,
            child: Image.asset(
              'assets/images/right_arrow.png',color: logOutMenu == true ?  CustomColors.red :CustomColors.textColor,
            )
        ),
      ),
    );
  }
}