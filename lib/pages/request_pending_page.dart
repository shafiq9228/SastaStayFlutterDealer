import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class RequestPendingPage extends StatelessWidget {
  const RequestPendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: CustomColors.white,body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Registration Submitted!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: CustomColors.textColor),),
            SizedBox(height: 20),
            SizedBox(height: 350,width: 200,child: Image.asset("assets/images/request_pending.png")),
            SizedBox(height: 20),
            Text("Thank you for registering as a seller. Your application is under review. Our team will notify you once your account has been approved",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
          ],
        ),
      ),
    ),);
  }
}
