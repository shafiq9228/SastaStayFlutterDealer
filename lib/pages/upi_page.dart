import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/custom_outlined_button.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/view_models/transaction_view_model.dart';

import '../request_models/account_request_models.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';



class UpiPage extends StatelessWidget {
  final transactionViewMode = Get.put(TransactionViewModel());
  final TextEditingController editTextController = TextEditingController();
  UpiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: CustomColors.white,
      body:
       SafeArea(
         top: true,
         child: Column(
           children: [
             const SecondaryHeadingComponent(buttonTxt: "Add Upi Account"),
             Expanded(
               child: SingleChildScrollView(
                 child: Container(
                    color: CustomColors.white,
                    child:Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: CustomColors.primary
                        ),'The amount will be transferred to the UPI linked bank account.'),
                        const SizedBox(height: 20),
                        Container(decoration: AppStyles.secondaryContainerStyle,
                        child:
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      color: CustomColors.primary
                                  ),'Add UPI Account'),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  color: CustomColors.primary
                              ),'Please enter your UPI ID'),
                              const SizedBox(height: 10),
                              Container(decoration: AppStyles.secondaryContainerStyle,child:
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                                  child: TextFormField(
                                    controller: editTextController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                     hintText: 'xxxx@upi'
                                  )),
                                )),
                              const SizedBox(height: 20),
                              Text(style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  color: CustomColors.primary
                              ),'The UPI is in the format of name/ Phone number@bankname')
                              ,const SizedBox(height: 20),
                            ],
                          ),
                        ),
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:
                          Obx( () =>
                          transactionViewMode.createAccountObserver.value.maybeWhen(
                            loading: () => const Center(
                              child:  CircularProgressIndicator(),
                            ),
                              error: (String error) {
                              return Text(error);
                              },
                              orElse: () {
                              return CustomOutlinedButton(buttonTxt: "Confirm", buttonClick: (){
                                onclickConfirm();
                              });
                              })
                          ),
                        )
                      ],
                    ),
                    ),
                     ),
               ),
             ),
           ],
         ),
       ),
      );
  }

  void onclickConfirm(){
    final upi = editTextController.text.trim();
    if(upi.isNotEmpty && editTextController.text.contains("@")){
      transactionViewMode.performCreateAccountAction(CreateAccountRequestModel(upiId: upi, accountType: "upi"));
    }
    else{
      Get.snackbar("Error", "Please Enter Upi Correctly",snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
    }
  }
}
