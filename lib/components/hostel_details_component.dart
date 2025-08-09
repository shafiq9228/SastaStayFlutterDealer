import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import 'package:sasta_stay_dealer/request_models/auth_request_model.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../response_model/auth_response_model.dart';

class HostelDetailsComponent extends StatelessWidget {
  final HostelModel? hostelModel;
  const HostelDetailsComponent({super.key, required this.hostelModel});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    final hostelViewModel = Get.put(HostelViewModel());
    return Obx(()=> Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 5),
        child: InkWell(
          onTap: (){
            hostelViewModel.setAsPrimaryHostel(PaginationRequestModel(hostelId:hostelModel?.id ?? '', page: 1));
          },
          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: authViewModel.dealerStatusObserver.value.maybeWhen(success: (data) => (data as FormHelperDataResponseModel).data?.primaryHostel?.id ?? "",orElse: () => "") == hostelModel?.id ? CustomColors.primary.withOpacity(0.5) : CustomColors.white ,border: Border.all(width: 0.5,color: CustomColors.lightGray),),child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomNetworkImage(imageUrl: hostelModel?.hostelImage ?? "",width: 150,height: 100,fit: BoxFit.cover,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(hostelModel?.hostelName ?? "",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,color: CustomColors.primary),),
                              const SizedBox(height: 5),
                              Text(hostelModel?.location?.address1 ?? "",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: CustomColors.darkGray),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Branch : ${hostelModel?.branch ?? 1}",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
                  const SizedBox(height: 10),
                  Text("Approval Status : " + (hostelModel?.approvalStatus ?? "").toUpperCase(),textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
                  const SizedBox(height: 10),
                  Text("Hostel Type : " + (hostelModel?.hostelType ?? "").toUpperCase(),textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
                ],
              ),
            ),),
        ),
      ),
    );
  }
}
