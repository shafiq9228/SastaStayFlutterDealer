import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/pages/booking_details_page.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';
import 'package:get/get.dart';

class BookingDetailsComponent extends StatefulWidget {
  final BookingModel? bookingModel;
  const BookingDetailsComponent({super.key, required this.bookingModel});

  @override
  State<BookingDetailsComponent> createState() => _BookingDetailsComponentState();
}

class _BookingDetailsComponentState extends State<BookingDetailsComponent> {




  @override
  Widget build(BuildContext context) {
    UserModel? userModel = widget.bookingModel?.userId != null ? UserModel.fromJson(widget.bookingModel?.userId) : null;
    RoomModel? roomModel = widget.bookingModel?.roomId != null  ? RoomModel.fromJson(widget.bookingModel?.roomId) : null;

    TransactionDataModel? transactionDetails = widget.bookingModel?.transactionId != null ? TransactionDataModel.fromJson(widget.bookingModel?.transactionId) : null;
    final withdrawTransaction = transactionDetails?.withdrawTransactionId != null ? TransactionDataModel.fromJson(transactionDetails?.withdrawTransactionId) : null;

    Widget _buildWithdrawStatusWidget() {


      final paymentStatus = withdrawTransaction?.paymentStatus?.toLowerCase();

      if (withdrawTransaction == null || paymentStatus == null) {
        // If no withdraw transaction exists yet
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: CustomColors.primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: CustomColors.primary, width: 1),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.pending_actions, size: 12, color: CustomColors.primary),
              const SizedBox(width: 4),
              Text(
                'Processing',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color:CustomColors.primary,
                ),
              ),
            ],
          ),
        );
      }

      switch (paymentStatus) {
        case 'success':
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.green.withOpacity(0.5), width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle, size: 12, color: Colors.green[700]),
                const SizedBox(width: 4),
                Text(
                  'Paid',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.green[700],
                  ),
                ),
              ],
            ),
          );

        case 'failed':
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.red.withOpacity(0.5), width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.error_outline, size: 12, color: Colors.red[700]),
                const SizedBox(width: 4),
                Text(
                  'Failed',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.red[700],
                  ),
                ),
              ],
            ),
          );

        case 'pending':
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.orange.withOpacity(0.5), width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.schedule, size: 12, color: Colors.orange[700]),
                const SizedBox(width: 4),
                Text(
                  'Pending',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange[700],
                  ),
                ),
              ],
            ),
          );

        default:
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
            ),
            child: Text(
              paymentStatus,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
          );
      }
    }

    return GestureDetector(
      onTap: (){
        Get.to(() => BookingDetailsPage(bookingId: widget.bookingModel?.id ?? "",withdrawTransaction:withdrawTransaction));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 1,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 8),

                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userModel?.name ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.black,
                                  fontSize: 18
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                decoration: AppStyles.categoryBg4,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  child: Text(
                                    "Booked By ${(widget.bookingModel?.bookedBy ?? '') == "dealer" ? "You" : "User" }",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: CustomColors.textColor
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.call_outlined, color: CustomColors.darkGray, size: 15),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      "${AuthUtils.maskMobileNumber("${userModel?.mobile ?? 0}")}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: CustomColors.darkGray
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  Icon(Icons.bed, color: CustomColors.darkGray, size: 15),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      "${roomModel?.roomNo ?? 0} | ${roomModel?.floor ?? ""} | ${roomModel?.roomType ?? ""}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: CustomColors.darkGray
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: AppStyles.gradientColorDecoration1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                child: Text(
                                  "${AuthUtils.dateFormatToCheckInCheckOut1(widget.bookingModel?.checkInDate, widget.bookingModel?.checkOutDate)}",
                                  style: TextStyle(
                                      color: CustomColors.primary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Booking ID",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: CustomColors.darkGray
                            ),
                          ),
                          Text(
                            widget.bookingModel?.id ?? "",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: CustomColors.textColor
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          color: CustomColors.darkGray,
                          height: 10,
                          width: 1
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amount Paid",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: CustomColors.darkGray
                            ),
                          ),
                          Text(
                            "₹${widget.bookingModel?.subTotal ?? 0}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: CustomColors.textColor
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          color: CustomColors.darkGray,
                          height: 10,
                          width: 1
                      ),
                    ),

                    Expanded(
                      child: widget.bookingModel?.paymentStatus == "success"
                          ? Container(
                        decoration: widget.bookingModel?.bookingStatus == "Ongoing"
                            ? AppStyles.categoryBg2
                            : widget.bookingModel?.bookingStatus == "Upcoming"
                            ? AppStyles.categoryBg4
                            : AppStyles.categoryBg1,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            child: Text(
                              widget.bookingModel?.bookingStatus ?? '',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.textColor
                              ),
                            ),
                          ),
                        ),
                      )
                          : Text(
                        widget.bookingModel?.paymentStatus ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: CustomColors.orange
                        ),
                      ),
                    )
                  ],
                ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Settlement:",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.darkGray,
                          ),
                        ),
                        _buildWithdrawStatusWidget(),
                      ],
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount: ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: CustomColors.darkGray
                        ),
                      ),
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.right,
                          "₹${transactionDetails?.paymentDetails?.outwardAmount ?? 0}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: CustomColors.textColor
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Booked On : ${AuthUtils.formatDateToLong(widget.bookingModel?.createdAt)}",
                    style: TextStyle(
                        color: CustomColors.textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}