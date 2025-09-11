import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../response_model/bookings_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';

class TransactionComponent extends StatelessWidget {
  final TransactionDataModel? transactionModel;
  const TransactionComponent({super.key, this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Container(
        color: CustomColors.white,
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(transactionModel?.dealerTitle ?? "Booking Confirmed",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.black,fontSize: 20)),
                          SizedBox(height: 10),
                          Container(decoration: AppStyles.gradientColorDecoration1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Text(AuthUtils.formatDatetime(transactionModel?.createdAt),style: TextStyle(color: CustomColors.primary,fontSize: 12,fontWeight: FontWeight.w400)),
                              ))
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Booking ID",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray),),
                        Text(transactionModel?.orderId ?? "",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(color:
                    CustomColors.darkGray,height: 10,width: 1),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(transactionModel?.transactionType?.toUpperCase() ?? "Amount",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: CustomColors.darkGray)),
                        Text("${transactionModel?.amount ?? 0}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(color:
                    CustomColors.darkGray,height: 10,width: 1),
                  ),
                  Expanded(
                    child: Text(transactionModel?.paymentStatus ?? '',style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.orange)),
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
