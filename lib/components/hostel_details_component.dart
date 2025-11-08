import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import 'package:sasta_stay_dealer/pages/mobile_verification_page.dart';
import 'package:sasta_stay_dealer/request_models/auth_request_model.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';

class HostelDetailsComponent extends StatelessWidget {
  final HostelModel? hostelModel;
  const HostelDetailsComponent({super.key, required this.hostelModel});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    final hostelViewModel = Get.put(HostelViewModel());

    return Obx(() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          hostelViewModel.setAsPrimaryHostel(PaginationRequestModel(
              hostelId: hostelModel?.id ?? '',
              page: 1
          ));
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: authViewModel.dealerStatusObserver.value.maybeWhen(
              success: (data) => ((data as FormHelperDataResponseModel).data?.primaryHostel?.id ?? "") == (hostelModel?.id ?? "")
                  ? CustomColors.green.withOpacity(0.15)
                  : CustomColors.white,
              orElse: () => CustomColors.white,
            ),
            border: Border.all(
              width: 1.5,
              color: authViewModel.dealerStatusObserver.value.maybeWhen(
                success: (data) => ((data as FormHelperDataResponseModel).data?.primaryHostel?.id ?? "") == (hostelModel?.id ?? "")
                    ? CustomColors.green
                    : CustomColors.lightGray,
                orElse: () => CustomColors.lightGray,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hostel Image and Basic Info Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Hostel Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CustomNetworkImage(
                        imageUrl: hostelModel?.hostelImage ?? "",
                        width: 120,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Hostel Name and Address
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hostelModel?.hostelName ?? "",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: CustomColors.primary,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 16,
                                color: CustomColors.darkGray,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  hostelModel?.location?.address1 ?? "",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: CustomColors.darkGray,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Hostel Details Section
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CustomColors.lightGray.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow("Branch", " ${hostelModel?.branch ?? 1}"),
                      const SizedBox(height: 8),
                      _buildDetailRow("Approval Status", " ${(hostelModel?.approvalStatus ?? "").toUpperCase()}"),
                      const SizedBox(height: 8),
                      _buildDetailRow("Hostel Type", " ${(hostelModel?.hostelType ?? "").toUpperCase()}"),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Manager Details Section
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.blue.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section Title
                      Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 18,
                            color: Colors.blue.shade700,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "Management Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue.shade700,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      // Manager Info or "Managing By You"
                      hostelModel?.id == hostelModel?.manager?.id
                          ? _buildManagingByYou()
                          : _buildManagerDetails(),

                      const SizedBox(height: 12),

                      // Transfer Management Button
                      SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => MobileVerificationPage(primaryHostelId: hostelModel?.id));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.blue.shade700,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.blue.shade400,
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.swap_horiz,
                                size: 18,
                                color: Colors.blue.shade700,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                "Transfer Management",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.blue.shade700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$label:",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: CustomColors.textColor,
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: CustomColors.darkGray,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildManagingByYou() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 16,
            color: Colors.green.shade600,
          ),
          const SizedBox(width: 8),
          Text(
            "Managing By You",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.green.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildManagerDetails() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: CustomColors.lightGray,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Managing By: ${(hostelModel?.manager?.name ?? "").toUpperCase()}",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: CustomColors.textColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Contact: ${(hostelModel?.manager?.mobile ?? 0).toString()}",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: CustomColors.darkGray,
            ),
          ),
        ],
      ),
    );
  }
}