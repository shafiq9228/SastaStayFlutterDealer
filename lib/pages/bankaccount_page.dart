import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/view_models/transaction_view_model.dart';
import '../request_models/account_request_models.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';

class BankAccountPage extends StatefulWidget {
  const BankAccountPage({super.key});

  @override
  State<BankAccountPage> createState() => _BankAccountPageState();
}

class _BankAccountPageState extends State<BankAccountPage> {
  final TextEditingController fullNameText = TextEditingController();
  final TextEditingController accountNumberText1 = TextEditingController();
  final TextEditingController accountNumberText2 = TextEditingController();
  final TextEditingController ifscCodeText = TextEditingController();
  final TextEditingController bankNameText = TextEditingController();
  final transactionViewMode = Get.put(TransactionViewModel());

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: CustomColors.white,
        body:
        SafeArea(
          top:true,
          child: Column(
            children: [
              SecondaryHeadingComponent(buttonTxt: "Add Bank Account", buttonClick: (){
                Get.back();
              }),
              Expanded(
                child: Container(
                  color: CustomColors.white,
                  child:Padding(
                    padding: const EdgeInsets.all(20),
                    child:
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: CustomColors.primary
                        ),'Your earning will be transferred to the account details you provide below:'),
                        const SizedBox(height: 20),
                        Text(style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color: CustomColors.primary
                        ),'Full name (same as Bank Account)'),
                        const SizedBox(height: 5),
                        Container(decoration: AppStyles.secondaryContainerStyle,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: TextFormField(
                              controller: fullNameText,
                              decoration:
                              const InputDecoration(
                                  hintText: 'Enter your name'
                                  ,border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color: CustomColors.primary
                        ),'Account Number'),
                        const SizedBox(height: 5),
                        Container(decoration: AppStyles.secondaryContainerStyle,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: TextFormField(
                              controller: accountNumberText1,
                              keyboardType: TextInputType.number,
                              decoration:
                              const InputDecoration(
                                  hintText: 'Enter Account Number'
                                  ,border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(decoration: AppStyles.secondaryContainerStyle,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: TextFormField(
                              controller: accountNumberText2,
                              keyboardType: TextInputType.number,
                              decoration:
                              const InputDecoration(
                                  hintText: 'Re-Enter Account Number'
                                  ,border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color: CustomColors.primary
                        ),'IFSC code'),
                        const SizedBox(height: 5),
                        Container(decoration: AppStyles.secondaryContainerStyle,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: TextFormField(
                              controller: ifscCodeText,
                              decoration:
                              const InputDecoration(
                                  hintText: 'Enter IFSC code'
                                  ,border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            color: CustomColors.primary
                        ),'Name of Bank'),
                        const SizedBox(height: 5),
                        Container(decoration: AppStyles.secondaryContainerStyle,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8),
                            child: TextFormField(
                              controller:bankNameText,
                              decoration:
                              const InputDecoration(
                                  hintText: 'Enter Bank name'
                                  ,border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: PrimaryButton(buttonTxt: "Confirm", buttonClick: (){
                            onclick();
                          }),
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

  void onclick(){
    if(accountNumberText1.text == accountNumberText2.text){
      final request = CreateBankAccountRequestModel(fullName: fullNameText.text, bankName: bankNameText.text, ifscCode: ifscCodeText.text , accountNumber: accountNumberText1.text);
      String? error = AuthUtils.validateRequestFields(['fullName','bankName','ifscCode','accountNumber'], request.toJson());;
      if (error != null) {
        Get.snackbar('Error', error,snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
      } else {
        transactionViewMode.performCreateBankAccountAction(request);
      }
    }
    else{
      Get.snackbar('Error',"Re-Enter Bank Account Correctly",snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
    }
  }
}
