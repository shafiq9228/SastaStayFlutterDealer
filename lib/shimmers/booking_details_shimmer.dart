import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

import '../components/custom_network_image.dart';
import '../utils/custom_colors.dart';


class BookingDetailsShimmer extends StatelessWidget {
  final int index;
  const BookingDetailsShimmer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Container(
        color: CustomColors.white,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  FadeShimmer(
                    height: 100,
                    width: 100,
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
                        children: [
                          FadeShimmer(
                            height: 20,
                            width: 100,
                            radius: 10,
                            millisecondsDelay: index*300,
                            highlightColor: Colors.grey.shade200,
                            baseColor:Colors.white,
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 5),
                            child:  FadeShimmer(
                              height: 20,
                              width: 100,
                              radius: 10,
                              millisecondsDelay: index*300,
                              highlightColor: Colors.grey.shade200,
                              baseColor:Colors.white,
                            ),
                          ),
                          FadeShimmer(
                            height: 30,
                            width: 120,
                            radius: 10,
                            millisecondsDelay: index*300,
                            highlightColor: Colors.grey.shade200,
                            baseColor:Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FadeShimmer(
                    height: 30,
                    width: 50,
                    radius: 20,
                    millisecondsDelay: index*300,
                    highlightColor: Colors.grey.shade200,
                    baseColor:Colors.white,
                  ),
                  FadeShimmer(
                    height: 30,
                    width: 50,
                    radius: 20,
                    millisecondsDelay: index*300,
                    highlightColor: Colors.grey.shade200,
                    baseColor:Colors.white,
                  ),
                  FadeShimmer(
                    height: 30,
                    width: 50,
                    radius: 20,
                    millisecondsDelay: index*300,
                    highlightColor: Colors.grey.shade200,
                    baseColor:Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
