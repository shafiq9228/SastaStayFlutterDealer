import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';
import '../components/secondary_heading_component.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/image_picker_controller.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';

class FilePickerPage extends StatefulWidget {
  final String fileType;
  final String fileName;
  final bool fileView;
  final String? imageUrl;
  final bool? editable;
  const FilePickerPage({super.key, required this.fileType, required this.fileView, required this.fileName,this.imageUrl, this.editable});

  @override
  State<FilePickerPage> createState() => _FilePickerPageState();
}

class _FilePickerPageState extends State<FilePickerPage> {
  final authViewModel = Get.put(AuthViewModel());
  final hlImageController = Get.put(ImagePickerControllerComponent());

  void chooseOptionsDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Text("Choose Option",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: CustomColors.primary)),
                Divider(),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () async {
                    await hlImageController.requestCameraPermission();
                    final XFile? capturedFile = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                      preferredCameraDevice: CameraDevice.rear,
                    );
                    Get.back();
                    if (capturedFile == null) return;
                    File file = File(capturedFile.path);
                    hlImageController.uploadingFile.value = file;
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.camera,size: 20,color: CustomColors.textColor,),SizedBox(width: 20),
                        Text("Camera",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () async {
                    final selectedImageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                    Get.back();
                    if (selectedImageFile == null) return;
                    File file = File(selectedImageFile.path);
                    hlImageController.uploadingFile.value = file;
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.image,size: 20,color: CustomColors.textColor,),SizedBox(width: 20),
                        Text("Gallery",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        if(widget.fileView == false){
          if(widget.fileType == "pdf"){
            hlImageController.pickPdfFile();
          }
          else{
            chooseOptionsDialog();
            // hlImageController.openPicker(MediaType.image);
          }
        }
      },
      child: Scaffold(backgroundColor: CustomColors.white,
        body: SafeArea(
          top: true,
          child: Column(
          children: [
            SecondaryHeadingComponent(buttonTxt: widget.fileView ? "File View" : "Upload File", buttonClick: (){
              Get.back();
            }),
            Expanded(
              child: Obx(() {
                return (hlImageController.uploadingFile.value.path.isEmpty && widget.fileView == true) ? (widget.fileType == "pdf" ?
                PDF().cachedFromUrl(
                    widget.imageUrl ?? "",
                  // widget.fileName == "invoice" ? orderViewModel.invoiceImage.value : widget.fileName == "eway" ? orderViewModel.ewayImage.value : authViewModel.companyLicence.value,
                  placeholder: (progress) => Center(child: CircularProgressIndicator(color: CustomColors.primary)),
                  errorWidget: (error) => Center(child: Text(error.toString())),
                ) : PhotoView(
                  imageProvider: NetworkImage(widget.imageUrl ?? ""),
                  // imageProvider: NetworkImage(widget.fileName == "product" ? productViewModel.productImage.value : widget.fileName == "category" ? productViewModel.categoryImage.value : widget.fileName == "subcategory" ? productViewModel.subCategoryImage.value : widget.fileName == "receipt" ? orderViewModel.receiptImage.value :  widget.fileName == "transportCopy" ? orderViewModel.transportCopyImage.value : widget.fileName == "truckLoading" ? (widget.image ?? "") : widget.fileName == "tollImage" ? orderViewModel.tollImage.value : authViewModel.companyImage.value),
                  backgroundDecoration: const BoxDecoration(color: Colors.white),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2,
                )) :
                hlImageController.uploadingFile.value.path.isEmpty ? SizedBox() : hlImageController.uploadingFile.value.path.toString().toLowerCase().contains(".pdf") ?
                PDFView(
                  filePath: hlImageController.uploadingFile.value.path,
                  enableSwipe: true,
                  swipeHorizontal: false,
                  autoSpacing: true,
                  pageFling: true, onRender: (pages) {
                        print('Total pages: $pages');
                        },
                  onError: (error) {
                    print("Err");
                    print(error.toString());
                  },
                  onPageError: (page, error) {
                    print("Err");
                    print('$page: ${error.toString()}');
                  },
                ) :
                Image.file(hlImageController.uploadingFile.value, fit: BoxFit.contain);
                }
              ),
            ),
            Visibility(
              visible: (widget.editable ?? true)== true,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: (){
                          hlImageController.uploadingFile.value = File('');
                          if(widget.fileType == "pdf"){
                            hlImageController.pickPdfFile();
                          }
                          else{
                            chooseOptionsDialog();
                            // hlImageController.openPicker(MediaType.image);
                          }
                        },
                        child: Container(height: 45,decoration: BoxDecoration(border:Border.all(width: 0.5,color: CustomColors.primary),borderRadius: BorderRadius.circular(200)),
                            child: Center(child: Text("Choose Another",style: TextStyle(fontSize: 14,color: CustomColors.primary,fontWeight: FontWeight.w600),))),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Flexible(
                      child: GestureDetector(
                        onTap: () async {
                          final currentState = authViewModel.uploadFileObserver.value;

                          final isBusy = currentState.maybeWhen(
                            loading: () => true,
                            loadingCondition: (_, __) => true,
                            orElse: () => false,
                          );

                          if (isBusy) return;

                          if(hlImageController.uploadingFile.value.path.isNotEmpty){
                            await authViewModel.performUploadFile(hlImageController.uploadingFile.value,widget.fileName);
                            hlImageController.uploadingFile.value = File('');
                          }else{
                            Get.back();
                          }
                        },
                        child: Container(height: 45,decoration: BoxDecoration(border:Border.all(width: 0.5,color: CustomColors.secondary),borderRadius: BorderRadius.circular(200)),
                            child: Center(child: Obx(() => authViewModel.uploadFileObserver.value.maybeWhen(loading: () => SizedBox(width: 20,height: 20,child: CircularProgressIndicator(color: CustomColors.secondary,),),loadingCondition: (_,__) => Text("Compressing..",style: TextStyle(fontSize: 14,color: CustomColors.secondary,fontWeight: FontWeight.w600)),orElse: () => Text("Confirm",style: TextStyle(fontSize: 14,color: CustomColors.secondary,fontWeight: FontWeight.w600))) ))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
          ),
        ),),
    );
  }


}

