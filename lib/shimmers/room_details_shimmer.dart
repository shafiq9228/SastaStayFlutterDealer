import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';


class RoomDetailsShimmer extends StatelessWidget {
  final int index;
  const RoomDetailsShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 0.5,color: CustomColors.lightGray)),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeShimmer(
                height: 150,
                width: double.infinity,
                radius: 20,
                millisecondsDelay: index*300,
                highlightColor: Colors.grey.shade200,
                baseColor:Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        FadeShimmer(
                          height: 20,
                          width: 80,
                          radius: 20,
                          millisecondsDelay: index*300,
                          highlightColor: Colors.grey.shade200,
                          baseColor:Colors.white,
                        ),
                        Spacer(),
                        FadeShimmer(
                          height: 20,
                          width: 30,
                          radius: 20,
                          millisecondsDelay: index*300,
                          highlightColor: Colors.grey.shade200,
                          baseColor:Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    FadeShimmer(
                      height: 20,
                      width: double.infinity,
                      radius: 20,
                      millisecondsDelay: index*300,
                      highlightColor: Colors.grey.shade200,
                      baseColor:Colors.white,
                    ),
                    SizedBox(height: 10),
                    FadeShimmer(
                      height: 20,
                      width: double.infinity,
                      radius: 20,
                      millisecondsDelay: index*300,
                      highlightColor: Colors.grey.shade200,
                      baseColor:Colors.white,
                    ),
                    SizedBox(height: 10),
                    FadeShimmer(
                      height: 20,
                      width: double.infinity,
                      radius: 20,
                      millisecondsDelay: index*300,
                      highlightColor: Colors.grey.shade200,
                      baseColor:Colors.white,
                    ),
                    SizedBox(height: 10),
                    FadeShimmer(
                      height: 20,
                      width: double.infinity,
                      radius: 20,
                      millisecondsDelay: index*300,
                      highlightColor: Colors.grey.shade200,
                      baseColor:Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
