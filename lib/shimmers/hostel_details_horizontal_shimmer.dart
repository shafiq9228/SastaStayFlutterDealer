import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class HostelDetailsHorizontalShimmer extends StatelessWidget {
  final int index;
  final int view;
  const HostelDetailsHorizontalShimmer({super.key, required this.index, required this.view});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 0.5,color: CustomColors.lightGray)),
        width: view == 1 ? 200 : 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            view == 1 ? FadeShimmer(
              height: 100,
              width: double.infinity,
              radius: 20,
              millisecondsDelay: index*300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ) : FadeShimmer(
              height: 130,
              width: double.infinity,
              radius: 20,
              millisecondsDelay: index*300,
              highlightColor: Colors.grey.shade200,
              baseColor:Colors.white,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 10),
                    FadeShimmer(
                      height: 20,
                      width: 150,
                      radius: 20,
                      millisecondsDelay: index*300,
                      highlightColor: Colors.grey.shade200,
                      baseColor:Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: FadeShimmer(
                        height: 20,
                        width: 100,
                        radius: 20,
                        millisecondsDelay: index*300,
                        highlightColor: Colors.grey.shade200,
                        baseColor:Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        FadeShimmer(
                          height: 20,
                          width: 50,
                          radius: 20,
                          millisecondsDelay: index*300,
                          highlightColor: Colors.grey.shade200,
                          baseColor:Colors.white,
                        ),
                        Spacer(),
                        FadeShimmer(
                          height: 20,
                          width: 50,
                          radius: 20,
                          millisecondsDelay: index*300,
                          highlightColor: Colors.grey.shade200,
                          baseColor:Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
