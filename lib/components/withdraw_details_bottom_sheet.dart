import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sasta_stay_dealer/pages/kyc_page.dart';

import '../response_model/auth_response_model.dart';
import '../response_model/transaction_response_model.dart';
import '../utils/custom_colors.dart';
import '../view_models/auth_view_model.dart';
import '../view_models/transaction_view_model.dart';

class WithdrawalDetailsBottomSheet extends StatefulWidget {
  final double? amount;
  final String? accountType;
  final String? accountNumber;
  const WithdrawalDetailsBottomSheet({super.key,required this.accountType, this.amount, required this.accountNumber});

  @override
  State<WithdrawalDetailsBottomSheet> createState() => _SelectingTimeBottomSheetState();
}

class _SelectingTimeBottomSheetState extends State<WithdrawalDetailsBottomSheet> {
  final transactionViewModel = Get.put(TransactionViewModel());
  final authViewModel = Get.put(AuthViewModel());
  RxString currentText = "".obs;


  @override
  Widget build(BuildContext context) {
    return
      Obx(() => transactionViewModel.fetchWithdrawalDetailsObserver.value.maybeWhen(
          loading: () => const SizedBox(height:100,child: Center(child: CircularProgressIndicator())),
          success: (data){
            final response = (data as FetchWithdrawalDetailsResponseModel).data;
            final mobile = authViewModel.fetchUserDetailsObserver.value.maybeWhen(success:(data) => (data as FetchUserDetailsResponseModel).data?.mobile ?? "",orElse: () => 0);
            return response?.isDocumentApproved == true && response?.payUAuthetication == false ?
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 20),
                      Text("Withdrawal Details",style: TextStyle(
                          fontSize: 18,
                          color: CustomColors.primary,
                          fontWeight: FontWeight.w600
                      )),
                      InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: const Icon(Icons.cancel_rounded,size: 30,))
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                      shrinkWrap: true,
                      primary: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: (response?.chargesList?.length  ?? 0),
                      itemBuilder: (BuildContext context, int index) {
                        final item = response?.chargesList?[index];
                        return
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child:
                            SizedBox(
                              height: 40,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text( item?.name ?? ""
                                        ,style: TextStyle(
                                            fontSize: 16,
                                            color: CustomColors.primary,
                                            fontWeight: FontWeight.w600
                                        )),
                                  ),
                                  Text("${item?.amount ?? 0}"
                                      ,style: TextStyle(
                                          fontSize: 16,
                                          color: CustomColors.primary,
                                          fontWeight: FontWeight.w600
                                      ))
                                ],
                              ),
                            ),
                          );
                      },
                    ),
                  ),
                  Text("-----------------------------------------------",style: TextStyle(
                      fontSize: 18,
                      color: CustomColors.primary,
                      fontWeight: FontWeight.w600
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child:
                    SizedBox(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Amount To Be Disbursed",style: TextStyle(
                                fontSize: 16,
                                color: CustomColors.primary,
                                fontWeight: FontWeight.w600
                            )),
                          ),
                          Text("${response?.amount ?? 0}",style: TextStyle(
                              fontSize: 18,
                              color: CustomColors.primary,
                              fontWeight: FontWeight.w600
                          ))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child:
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Obx(() => transactionViewModel.withdrawBalanceObserver.value.maybeWhen(
                          loading: ()=> const CircularProgressIndicator(),
                          orElse: (){
                            return Container(
                              width: double.infinity,// Set width as needed
                              decoration: BoxDecoration(
                                color: CustomColors.primary,
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  // transactionViewModel.performWithDrawBalanceAction(WithdrawBalanceRequestModel(amount: widget.amount ?? 00.00, accountType: widget.accountType??"" , accountNumber: widget.accountNumber??"",accountId:accountViewModel.accountId.value));
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodPage()));
                                },
                                child: const Text(
                                  'WITHDRAW',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            );
                          }),
                      ),
                    ),
                  ),
                ],
              ),
            )
                : response?.payUAuthetication == true ?
            SingleChildScrollView(
              reverse: true,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(width: 20),
                          Text("Withdrawal Details",style: TextStyle(
                              fontSize: 18,
                              color: CustomColors.primary,
                              fontWeight: FontWeight.w700
                          )),
                          InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child: const Icon(Icons.cancel_rounded,size: 30,))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Obx(() =>
                          transactionViewModel.payUAddCustomerObserver.value.maybeWhen(
                              loading: () => const CircularProgressIndicator(),
                              success: (payuresponse){
                                var state = (payuresponse as PayUAddCustomerResponseModel).data?.state ?? "";
                                return Column(
                                  children: [
                                    const SizedBox(height: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Center(child: Text("Enter Otp",style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontStyle: FontStyle.normal,
                                          color: CustomColors.primary
                                      ))),
                                    ),
                                    const SizedBox(height: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: PinCodeTextField(
                                        appContext: context,
                                        pastedTextStyle: TextStyle(
                                          color: CustomColors.primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        length:4,
                                        obscureText: false,
                                        blinkWhenObscuring: true,
                                        animationType: AnimationType.fade,
                                        validator: (v) {
                                          if (v!.length < 3) {
                                            return null;
                                          } else {
                                            return null;
                                          }
                                        },
                                        pinTheme: PinTheme(
                                            shape: PinCodeFieldShape.box,
                                            borderRadius: BorderRadius.circular(5),
                                            fieldHeight: 40,
                                            fieldWidth: 60,
                                            activeFillColor: Colors.white,
                                            selectedFillColor: Colors.white,
                                            inactiveFillColor: Colors.white,
                                            activeColor: CustomColors.textColor,
                                            // disabledColor: CustomColors.textcolor, // Set the border color to black
                                            selectedColor: CustomColors.textColor, // Set the border color to black
                                            inactiveColor: CustomColors.textColor,
                                            errorBorderColor:CustomColors.textColor
                                        ),
                                        cursorColor: Colors.black,
                                        animationDuration: const Duration(milliseconds: 300),
                                        enableActiveFill: true,
                                        keyboardType: TextInputType.number,
                                        boxShadows: const [
                                          BoxShadow(
                                            offset: Offset(0, 1),
                                            color: Colors.black12,
                                            blurRadius: 10,
                                          )
                                        ],
                                        onCompleted: (v) {
                                          debugPrint("Completed");
                                        },
                                        onChanged: (value) {
                                          debugPrint(value);
                                          currentText.value = value;
                                        },
                                        beforeTextPaste: (text) {
                                          debugPrint("Allowing to paste $text");
                                          return true;
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 20,),
                                    Obx(() => transactionViewModel.payUVerifyOtpObserver.value.maybeWhen(loading:() => CircularProgressIndicator(),
                                        orElse: () { return Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                          child: Container(
                                            width: double.infinity,// Set width as needed
                                            decoration: BoxDecoration(
                                              color: CustomColors.primary,
                                              borderRadius: BorderRadius.circular(8.0),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.3),
                                                  spreadRadius: 2,
                                                  blurRadius: 4,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: TextButton(
                                              onPressed: () {
                                                if(currentText.value.length !=4){
                                                  Get.snackbar('Exception','Invalid Otp', snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
                                                }
                                                else{
                                                  transactionViewModel.performPayUVerifyOtp(currentText.value,state);
                                                }
                                              },
                                              child: const Text(
                                                'Verify',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                        })
                                    ),
                                  ],
                                );
                              },
                              orElse: () =>  Column(
                                children: [
                                  SizedBox(width: 50,height: 50,child: Image.asset('assets/images/no_data_found.png')),
                                  const SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Center(child: Text(" Login Required To Withdraw \n  Please Login With Your Mobile Number : $mobile",style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: CustomColors.primary
                                    ))),
                                  ),
                                  const SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                    child: Container(
                                      width: double.infinity,// Set width as needed
                                      decoration: BoxDecoration(
                                        color: CustomColors.primary,
                                        borderRadius: BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          transactionViewModel.performPayUAddCustomer();
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodPage()));
                                        },
                                        child: const Text(
                                          'Login',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            )
                : IntrinsicHeight(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 20),
                      Text("Withdrawal Details",style: TextStyle(
                          fontSize: 18,
                          color: CustomColors.primary,
                          fontWeight: FontWeight.w700
                      )),
                      InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: const Icon(Icons.cancel_rounded,size: 30,))
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(width: 50,height: 50,child: Image.asset('assets/images/no_data_found.png')),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(child: Text("Documents Required To Withdraw",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: CustomColors.primary
                    ))),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Container(
                      width: double.infinity,// Set width as needed
                      decoration: BoxDecoration(
                        color: CustomColors.primary,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => KycPage(dealerModel: authViewModel.fetchUserDetailsObserver.value.maybeWhen(success: (data) => (data as FetchUserDetailsResponseModel).data,orElse: () => null)));
                        },
                        child: const Text(
                          'Upload Documents',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            );
          },
          error: (data) {
            return IntrinsicHeight(
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 20),
                      Text("Withdrawal Details",style: TextStyle(
                          fontSize: 18,
                          color: CustomColors.primary,
                          fontWeight: FontWeight.w700
                      )),
                      InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: const Icon(Icons.cancel_rounded,size: 30,))
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(width: 50,height: 50,child: Image.asset('assets/images/no_data_found.png')),
                  const SizedBox(height: 20,),
                  Center(child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(data,style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: CustomColors.primary
                    )),
                  )),
                  const SizedBox(height: 20,)
                ],
              ),
            );
          },
          orElse: () => IntrinsicHeight(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(width: 20),
                    Text("Withdrawal Details",style: TextStyle(
                        fontSize: 18,
                        color: CustomColors.primary,
                        fontWeight: FontWeight.w700
                    )),
                    InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: const Icon(Icons.cancel_rounded,size: 30,))
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(width: 50,height: 50,child: Image.asset('assets/images/no_data_found.png')),
                const SizedBox(height: 20,),
                Center(child: Text("Something Went Wrong",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: CustomColors.primary
                ))),
                const SizedBox(height: 20,),
              ],
            ),
          )));
  }
}


