import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';


class MoneyWithdrawPageShimmer extends StatelessWidget {
  final int index;
  const MoneyWithdrawPageShimmer({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,right: 10,left: 10),
      child: InkWell(
        onTap: (){
        },
        child: IntrinsicHeight(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child:
            Padding(
              padding: const EdgeInsets.only(left: 12.0,right: 10,top:5,bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FadeShimmer.round(
                    millisecondsDelay: index*300,
                    highlightColor: Colors.grey.shade200,
                    baseColor: Colors.white,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: FadeShimmer(
                            height: 12,
                            width: 200,
                            radius: 400,
                            millisecondsDelay: index*300,
                            highlightColor: Colors.grey.shade200,
                            baseColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: FadeShimmer(
                            height: 12,
                            width: 150,
                            radius: 400,
                            millisecondsDelay: index*300,
                            highlightColor: Colors.grey.shade200,
                            baseColor:Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
