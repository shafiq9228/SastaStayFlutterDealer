import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';
class HostelDetailsPageShimmer extends StatelessWidget {
  const HostelDetailsPageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeShimmer(
              height: 200,
              width: double.infinity,
              radius: 30,
              millisecondsDelay: 300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
            SizedBox(height: 10),
            Row(children: [
              FadeShimmer(
                height: 20,
                width: 150,
                radius: 30,
                millisecondsDelay: 300,
                highlightColor: Colors.grey.shade200,
                baseColor:Colors.white,
              ),
              Spacer(),
              FadeShimmer(
                height: 20,
                width: 50,
                radius: 30,
                millisecondsDelay: 300,
                highlightColor: Colors.grey.shade200,
                baseColor:Colors.white,
              )
            ],),
            SizedBox(height: 10),
            FadeShimmer(
              height: 10,
              width: 170,
              radius: 30,
              millisecondsDelay: 300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
            SizedBox(height: 10),
            FadeShimmer(
              height: 10,
              width: 170,
              radius: 30,
              millisecondsDelay: 300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
            SizedBox(height: 20),
            FadeShimmer(
              height: 30,
              width: double.infinity,
              radius: 30,
              millisecondsDelay: 300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: FadeShimmer(
                        height: 150,
                        width: 200,
                        radius: 30,
                        millisecondsDelay: 300,
                        highlightColor: Colors.grey.shade200,
                        baseColor:Colors.white,
                      ),
                    );
                  },itemCount: 4),
            )

          ],
        ),
      ),
    );
  }
}
