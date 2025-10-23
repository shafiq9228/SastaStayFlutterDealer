import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/side_heading_component.dart';

import '../pages/booking_details_page.dart';
import '../response_model/bookings_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';

class TransactionComponent extends StatelessWidget {
  final TransactionDataModel? transactionModel;
  const TransactionComponent({super.key, this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(transactionModel?.transactionType == "booking" || transactionModel?.transactionType == "refund"){
          Get.to(() => BookingDetailsPage(bookingId: transactionModel?.bookingId ?? ""));
        }
        else if(transactionModel?.transactionType == "withdraw"){
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // allows full height if needed
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: CustomColors.white),
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom, // handle keyboard
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // makes height wrap to content
                      children: [
                        const SideHeadingComponent(
                          title: "Withdraw Details",
                          viewVisible: false,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: AppStyles.categoryBg4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: transactionModel?.logs?.length ?? 0,
                              itemBuilder: (context, index) {
                                final hostelModel = transactionModel?.logs?[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          (hostelModel?.message ?? "") +
                                              (hostelModel?.extraData ?? ""),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: CustomColors.darkGray,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "₹${hostelModel?.amount}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: CustomColors.primary,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
      child: Padding(
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
                            Text(transactionModel?.dealerTitle ?? "Booking Confirmed",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w600,color: CustomColors.black,fontSize: 18)),
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
                          Text(transactionModel?.id ?? "",maxLines: 1,overflow: TextOverflow.ellipsis ,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.textColor)),
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
                      child: Text(transactionModel?.paymentStatus ?? '',style: TextStyle(fontWeight: FontWeight.w600,color: ((transactionModel?.paymentStatus ?? '') == "success") ? CustomColors.green : CustomColors.orange)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
