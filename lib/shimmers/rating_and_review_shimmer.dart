import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_colors.dart';

class RatingAndReviewShimmer extends StatelessWidget {
  final int index;
  const RatingAndReviewShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Container(
        color: CustomColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FadeShimmer(
                  height: 50,
                  width: 50,
                  radius: 300,
                  millisecondsDelay: index*300,
                  highlightColor: Colors.grey.shade200,
                  baseColor:Colors.white,
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeShimmer(
                        height: 20,
                        width: 120,
                        radius: 20,
                        millisecondsDelay: index*300,
                        highlightColor: Colors.grey.shade200,
                        baseColor:Colors.white,
                      ),
                        SizedBox(height: 10),
                      FadeShimmer(
                        height: 20,
                        width: 100,
                        radius: 20,
                        millisecondsDelay: index*300,
                        highlightColor: Colors.grey.shade200,
                        baseColor:Colors.white,
                      )
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(height: 10),
            FadeShimmer(
              height: 20,
              width: double.infinity,
              radius: 20,
              millisecondsDelay: index*300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
