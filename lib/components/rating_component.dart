import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../utils/custom_colors.dart';

class RatingComponent extends StatefulWidget {
  final double? rating;
  final bool? editable;
  const RatingComponent({super.key, this.rating, this.editable});

  @override
  State<RatingComponent> createState() => _RatingConponentState();
}

class _RatingConponentState extends State<RatingComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: CustomColors.white,
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/design_left.png",width: 50,height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  children: [
                    Text("Overall Rating",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: CustomColors.primary)),
                    const SizedBox(height: 10),
                    Text("${widget.rating ?? 0}",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: CustomColors.textColor)),
                  ],
                ),
              ),
              Image.asset("assets/images/design_right.png",width: 50,height: 100),
            ],
          ),
          const SizedBox(height: 5),
          IgnorePointer(
            child: RatingBar.builder(
              initialRating: widget.rating ?? 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 20,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Image.asset("assets/images/star.png"),
              onRatingUpdate: (_) {}, // Won't be called
            ),
          ),
          const SizedBox(height: 5),
          Text("Based On Overall Rating",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: CustomColors.darkGray)),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
