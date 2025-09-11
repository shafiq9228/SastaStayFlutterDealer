import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/uploaded_view_component.dart';
import 'package:sasta_stay_dealer/components/uploading_view_component.dart';

import '../pages/file_picker_page.dart';
import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';
import 'icon_title_message_component.dart';


class KycDocumentComponent extends StatefulWidget {
  final DocumentDataModel? documentModel;
  const KycDocumentComponent({super.key, required this.documentModel});

  @override
  State<KycDocumentComponent> createState() => _KycDocumentComponentState();
}

class _KycDocumentComponentState extends State<KycDocumentComponent> {
  @override
  Widget build(BuildContext context) {
    return widget.documentModel?.errorTxt?.isNotEmpty == true ? Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 0.5,color: CustomColors.textColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:20),
          IconTitleMessageComponent(color:CustomColors.red,assetImage: "assets/images/bed.png",title: widget.documentModel?.errorTxt,message:"KYC Verification Failed"),
          SizedBox(height: 5),
          InkWell(
            onTap: () {

            },
            child: IntrinsicWidth(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 0.5,color: CustomColors.darkGray),
                  color: CustomColors.white.withOpacity(0.3),
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 6),
                child: Row(
                  children: [
                    Icon(Icons.upload_outlined,color: CustomColors.textColor,size: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Upload Again",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: CustomColors.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height:20),
        ],
      ),
    ) : widget.documentModel?.uploadedUrl?.isNotEmpty == true ? Column(
      children: [
        UploadedViewComponent(fileType: "image", imageUrl: widget.documentModel?.uploadedUrl ?? "", fileName: widget.documentModel?.documentType ?? ""),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Status : ${widget.documentModel?.documentStatus  ?? "pending"}",style: TextStyle(fontSize: 16,color: CustomColors.textColor,fontWeight: FontWeight.w700),),
        )
      ],
    ) : UploadingViewComponent(uploadingText: "Upload Your ${widget.documentModel?.documentType}", onClick: (){
         Get.to(() => FilePickerPage(fileType: "image", fileView: false, fileName: widget.documentModel?.documentType ?? ""));
    });
  }
}
