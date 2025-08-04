import 'package:flutter/material.dart';

import 'custom_colors.dart';

class AppStyles {
  AppStyles._();

      static  final  bottomBg = BoxDecoration(color: CustomColors.white,borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)));

      static  final  selectedCategoryBg = BoxDecoration(
          color: const  Color(0xFF8479F3).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFF2716F1)
          )
      );

      static  final  categoryBg1 = BoxDecoration(
          color: const  Color(0xFFF5D4D4).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFF3BEBE)
          )
      );

      static  final  categoryBg2 = BoxDecoration(
          color: const Color(0xFFB8F8C7).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFB8F8C7)
          )
      );

      static  final  categoryBg3 = BoxDecoration(
        color: const Color(0xFFB7DFF5).withOpacity(0.2)
        ,borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 0.5,
          color: const Color(0xFFB7DFF5)
        )
      );


      static  final  categoryBg4 = BoxDecoration(
          color: const Color(0xFFDAEDFF).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFB2E0FD)
          )
      );

      static  final  categoryBg5 = BoxDecoration(
          color: const Color(0xFFD7D1D1).withOpacity(0.2)
          ,borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 0.5,
              color: const Color(0xFFD7D1D1)
          )
      );

    static  final  googleContainerStyle = BoxDecoration(
        color: Colors.white
        ,borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
    );

  static  final  selectedContainerStyle = BoxDecoration(
    color: CustomColors.primary
    ,borderRadius: BorderRadius.circular(15),
      border: Border.all(
          width: 0.5,
          color: CustomColors.primary
      ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 2,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static  final  editTextBg = BoxDecoration(
      color: Colors.white
      ,borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: CustomColors.textColor.withOpacity(0.5), // Set the border color (you can adjust the shade of green)
        width: 0.5, // Set the border width
      )
  );

  static  final  outOfStockContainerStyle = BoxDecoration(
    color: Colors.red.withOpacity(0.5)
    ,borderRadius: BorderRadius.circular(15),
    border: Border.all(
        width: 0.5,
        color: Colors.red
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 2,
        offset: const Offset(0, 3),
      ),
    ],
  );

    static  final  primaryContainerStyle = BoxDecoration(
         color: CustomColors.primary
        ,borderRadius: BorderRadius.circular(200)
    );

    static final strokeBorder = BoxDecoration(color: CustomColors.white,borderRadius: BorderRadius.circular(200),border: Border.all(width: 0.8,color: Color(0xFFE2E2E2)));


  static  final  secondaryContainerStyle = BoxDecoration(
      color: Colors.white
      ,borderRadius: BorderRadius.circular(15)
  );

  static  const  textError = TextStyle(
      color: Colors.red
      ,fontWeight: FontWeight.w600,
       fontSize: 14
  );
}