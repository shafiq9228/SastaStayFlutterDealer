import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../response_model/auth_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/custom_colors.dart';


class RatingAndReviewComponent extends StatelessWidget {
  final RatingAndReviewModel? ratingAndReviewModel;
  const RatingAndReviewComponent({super.key, this.ratingAndReviewModel});

  @override
  Widget build(BuildContext context) {
    UserModel userModel = UserModel.fromJson(ratingAndReviewModel?.userId ?? '');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Container(
        color: CustomColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    userModel.profilePic ??
                        'https://i.stack.imgur.com/l60Hf.png',
                  ),
                  backgroundColor: Colors.grey,
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userModel.name ?? "",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: CustomColors.textColor),),
                      SizedBox(height: 10),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Image.asset("assets/images/star.png"),
                        onRatingUpdate: (rating) {

                        },
                      )
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(height: 10),
            Text(ratingAndReviewModel?.review ?? "",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: CustomColors.darkGray),),
            const SizedBox(height: 10),
            DottedLine(dashColor: CustomColors.darkGray)
          ],
        ),
      ),
    );
  }
}
