import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/request_models/auth_request_model.dart';


import '../components/kyc_document_component.dart';
import '../components/primary_button.dart';
import '../components/secondary_heading_component.dart';
import '../components/side_heading_component.dart';
import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';


class KycPage extends StatefulWidget {
  final DealerModel? dealerModel;
  const KycPage({super.key,required this.dealerModel});

  @override
  State<KycPage> createState() => _KycPageState();
}

class _KycPageState extends State<KycPage> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){

      },
      onStart: (){

      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: SafeArea(
          top: true,
            child:  Column(
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                const SecondaryHeadingComponent(buttonTxt: "KYC Verification"),
                 Expanded(child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(decoration: AppStyles.gradientColorDecoration1,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.info_outline,size: 20,color: CustomColors.primary),
                              SizedBox(width: 10),
                              Expanded(child: Text("Upload a valid ID and a selfie to complete verification"))
                            ],
                          ),
                        ),),
                        Obx(() => ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context,index){
                                final documentModel =  authViewModel.kysDocuments[index];
                                return Column(
                                  children: [
                                    SideHeadingComponent(title: "Upload ${documentModel.documentType}", viewVisible: false),
                                    KycDocumentComponent(documentModel:documentModel),
                                    const SizedBox(height: 10),
                                  ],
                                );
                              },itemCount: authViewModel.kysDocuments.length ?? 0),
                        ),
                      ],
                    ),
                  ),
                )),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                   child: Obx(() => authViewModel.registerDealerResponseObserver.value.maybeWhen(
                     loading: () => const CircularProgressIndicator(),
                       orElse: () => PrimaryButton(buttonTxt: "Save", buttonClick: (){
                         if(authViewModel.kysDocuments.toList().any((document) => document.uploadedUrl?.isEmpty == true) == true){
                           Get.snackbar("Error","Please Upload Files",backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                            return;
                         }
                       authViewModel.registerUser(RegistrationRequestModel(name:widget.dealerModel?.name ?? "",mobile: "${widget.dealerModel?.mobile ?? 0}",email: widget.dealerModel?.email ?? "",kycDocuments: authViewModel.kysDocuments));
                   }))),
                 )
              ],
            )),
      ),
    );
  }
}
