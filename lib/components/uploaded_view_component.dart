import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/file_picker_page.dart';
import '../utils/custom_colors.dart';
import 'custom_network_image.dart';

class UploadedViewComponent extends StatelessWidget {
  final String imageUrl;
  final String fileType;
  final String fileName;
  final bool? forEdit;
  const UploadedViewComponent({super.key, required this.fileType, required this.imageUrl, required this.fileName, this.forEdit});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() => FilePickerPage(fileView: true,fileType: fileType, fileName: fileName,imageUrl:imageUrl,editable: forEdit ?? true));
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.darkGray)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fileType == "image" ? SizedBox(width:100,height:100,child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomNetworkImage(imageUrl: imageUrl),
              )) :
              Container(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20,height: 20,child: Image.asset("assets/images/pdf_image.png")),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10),
                        child: Text("Pdf",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: 40,width: 1,color: Colors.grey),
              (forEdit ?? true) ==  true ? const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.edit,size: 15),
              ) : Text("View",style: TextStyle(fontSize: 16,color: CustomColors.textColor,fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ),
    );
  }
}
