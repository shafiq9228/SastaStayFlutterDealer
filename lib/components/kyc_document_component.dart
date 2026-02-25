import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/uploaded_view_component.dart';
import 'package:sasta_stay_dealer/components/uploading_view_component.dart';

import '../pages/file_picker_page.dart';
import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';
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
    return  widget.documentModel?.documentStatus == "approved" ? Row(
      children: [
        CustomNetworkImage(fit: BoxFit.contain,imageUrl: widget.documentModel?.uploadedUrl ?? "",width: 50,height: 50,borderRadius:200),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Text("Status : ${widget.documentModel?.documentStatus  ?? "pending"}",style: TextStyle(fontSize: 16,color: CustomColors.textColor,fontWeight: FontWeight.w700),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.verified,color: CustomColors.green,),
        )
      ],
    ) : widget.documentModel?.documentStatus == "rejected" ? Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width: 0.5,color: CustomColors.textColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:20),
          IconTitleMessageComponent(color:CustomColors.red,assetImage: "assets/images/bed.png",title: widget.documentModel?.errorTxt,message:"KYC Verification Failed"),
          SizedBox(height: 5),
          UploadedViewComponent(fileType: "image", imageUrl: widget.documentModel?.uploadedUrl ?? "", fileName: widget.documentModel?.documentType ?? ""),
          SizedBox(height:20),
        ],
      ),
    ) :
    widget.documentModel?.documentStatus == "pending" ? Column(
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
