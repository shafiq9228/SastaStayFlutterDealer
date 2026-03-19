import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/pages/profile_page.dart';
import 'package:sasta_stay_dealer/pages/transactions_page.dart';
import 'package:sasta_stay_dealer/pages/upi_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/helper_bottom_sheet.dart';
import '../components/money_input_formater.dart.dart';
import '../components/upi_radio_component.dart';
import '../request_models/bookings_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../response_model/transaction_response_model.dart';
import '../shimmers/money_withdraw_page_shimmer.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../utils/util.dart';
import '../view_models/auth_view_model.dart';
import '../view_models/transaction_view_model.dart';
import 'bankaccount_page.dart';


class MoneyWithdrawPage extends StatelessWidget {
  MoneyWithdrawPage({super.key});

  final hostelViewModel = Get.put(HostelViewModel());
  final transactionViewModel = Get.put(TransactionViewModel());


  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    RxString currentText = "".obs;


    return
      StatefulWrapper(onInit: (){

      },onStart: (){
           transactionViewModel.performFetchAccountsAction();
        },
        child: Scaffold(
          backgroundColor: CustomColors.white,
        body: SafeArea(
          top: true,
          child:
          Column(
            children: [
              SecondaryHeadingComponent(buttonTxt: "Money Transfer", buttonClick: () {
                Get.back();
              }),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: _refresh,
                  child: Container(
                    color: Colors.white,
                    child:
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Obx(()=> transactionViewModel.fetchAccountsObserver.value.maybeWhen(
                              loading: () =>  ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return MoneyWithdrawPageShimmer(index: index);
                                },
                              ),
                              success: (data) {
                                final mobile = authViewModel.fetchUserDetailsObserver.value.maybeWhen(success:(data) => (data as FetchUserDetailsResponseModel).data?.mobile ?? "",orElse: () => 0);
                                final options = (data as FetchAccountsResponseModel?)?.options ;
                                final List<UpiData> populerList = (data)?.data ?? List.empty();
                                return options?.blocked == true ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Animated warning icon
                                    TweenAnimationBuilder(
                                      tween: Tween<double>(begin: 0.8, end: 1.0),
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.elasticOut,
                                      builder: (context, double scale, child) {
                                        return Transform.scale(
                                          scale: scale,
                                          child: Container(
                                            padding: EdgeInsets.all(24),
                                            decoration: BoxDecoration(
                                              color: Colors.red.shade50,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.block_flipped,
                                              size: 80,
                                              color: Colors.red.shade400,
                                            ),
                                          ),
                                        );
                                      },
                                    ),

                                    SizedBox(height: 32),

                                    // Main message
                                    Text(
                                      'Withdrawals Temporarily Blocked',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade800,
                                      ),
                                    ),

                                    SizedBox(height: 16),

                                    // Detailed message
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(color: Colors.grey.shade200),
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Payment withdrawals are currently blocked.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade600,
                                              height: 1.5,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Please try again later or contact admin for support.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade600,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 40),

                                  ],
                                ) :
                                    options?.payUAutherised == false ? Obx(() =>
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
                                                      pastedTextStyle:  TextStyle(
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
                                                          activeColor: CustomColors.black,
                                                          // disabledColor: CustomColors.textcolor, // Set the border color to black
                                                          selectedColor: CustomColors.black, // Set the border color to black
                                                          inactiveColor: CustomColors.black,
                                                          errorBorderColor:CustomColors.black
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
                                                SizedBox(width: 50,height: 50,child: Image.asset('assets/images/mark.png')),
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
                                                        transactionViewModel.performPayUAddCustomer((authViewModel.getFetchedUserDetails()?.mobile ?? 0).toString(),authViewModel.getFetchedUserDetails()?.name ?? "");
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
                                    ) :
                                  Column(
                                    children: [
                                      Obx( () => transactionViewModel.setAsPrimaryAccountObserver.value.maybeWhen(
                                          loading: () => CircularProgressIndicator(),
                                          orElse: () {if(transactionViewModel.accountDetails.value == null){
                                            return const SizedBox();
                                          }
                                          else{
                                            return Padding(
                                              padding: const EdgeInsets.only(left: 15.0,right: 15),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: AppStyles.secondaryContainerStyle,
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child:
                                                      Padding(
                                                        padding: const EdgeInsets.all(10.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10.0),
                                                              child: Text(style: TextStyle(
                                                                color: CustomColors.primary,
                                                                fontSize:18,
                                                                fontWeight: FontWeight.w600,
                                                                fontStyle: FontStyle.normal,
                                                              ),'Automatic Money Transfer'),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right: 10.0),
                                                              child: Image.asset('assets/images/arrowright_image.png',width: 10,height: 15),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 20.0,right: 10,bottom: 20),
                                                      child: Row(
                                                        children: [
                                                          Text(style: TextStyle(
                                                            color: CustomColors.textColor,
                                                            fontSize:18,
                                                            fontWeight: FontWeight.w600,
                                                            fontStyle: FontStyle.normal,
                                                          ),'Transfer to'),
                                                          const SizedBox(width: 10),
                                                          Obx(() => Image.asset(((transactionViewModel.accountDetails.value?.accountType ?? "") == "upi") ?  'assets/images/upi_image.png' : 'assets/images/bank_image.png',width: 20,height: 20,))
                                                          ,Obx(() =>
                                                              SizedBox(
                                                                width: 150,
                                                                child: Text(
                                                                    maxLines: 1,
                                                                    overflow: TextOverflow.ellipsis,style: TextStyle(
                                                                  color: CustomColors.textColor,
                                                                  fontSize:18,
                                                                  fontWeight: FontWeight.w400,
                                                                  fontStyle: FontStyle.normal,
                                                                ),transactionViewModel.accountDetails.value?.accountNumber ?? ""),
                                                              ),
                                                          ),
                                                          const SizedBox(width: 10)
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          }
                                          })
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
                                          child: Text(style: TextStyle(
                                            color: CustomColors.primary,
                                            fontSize:18,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),'Transfer to'),
                                        ),
                                      ),
                                      ListView.builder(
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: populerList.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          final item = populerList[index];
                                          return UpiRadioComponent(item: item,onclick:  (selected){

                                            final accountNo = item.accountNumber ?? "";

                                            final maskedAccountNumber =
                                            accountNo.length > 4
                                                ? accountNo.substring(accountNo.length - 4)
                                                : accountNo;


                                            final String upiMessage =
                                                "Account Details\n"
                                                "Account Type : Upi\n"
                                                "Upi           : ${item.accountNumber ?? ""}\n\n"
                                                "This account will be used for all automatic transfers.\n";

                                            final String accountMessage =
                                                "Account Details\n"
                                                "Account Type : Bank\n"
                                                "Account Holder : ${item.fullName ?? ""}\n"
                                                "Account Number : •••• •••• $maskedAccountNumber\n\n"
                                                "This account will be used for all automatic transfers.\n";

                                            showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true, // allows full height scroll
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                              ),
                                              builder: (context) {
                                                return HelperBottomSheet(assetImage: "assets/images/splash.png",title: "Set as Auto Transfer Account?",message: item.accountType == "upi" ? upiMessage : accountMessage,btn1Txt: "NO",btn1Click: (){
                                                  Get.back();
                                                },btn2Txt: "Yes",btn2Click: () async {
                                                   Get.back();
                                                   await transactionViewModel.performSetAsPrimaryAccount(item.id ?? "");
                                                });
                                              },
                                            );
                                          });
                                        },
                                      ),
                                    ],
                                  );
                              },
                              error: (String error) {return
                                ListView.builder(itemBuilder:(BuildContext context, int index){
                                  return const SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Something went wrong",
                                        style: AppStyles.textError,
                                      ),
                                    ),
                                  );
                                },itemCount: 1,);},
                              orElse: () {
                                return  ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) {
                                    return MoneyWithdrawPageShimmer(index: index);
                                  },
                                );
                              })
                          ),
                          const SizedBox(height: 300)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Container(
                  decoration: BoxDecoration(
                      color: CustomColors.secondary,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.topLeft,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(style: TextStyle(
                              color: CustomColors.primary,
                              fontSize:18,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),'Add New Payment method'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Obx(() =>
                            transactionViewModel.fetchAccountsObserver.value.maybeWhen(
                            loading: () =>  const MoneyWithdrawPageShimmer(index: 1)
                            ,success: (data){
                              final  options = (data as FetchAccountsResponseModel?)?.options;
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Visibility(
                                    visible: options?.upiWithdrawals == true,
                                    child: InkWell(
                                      onTap: (){
                                        Get.to(() =>  UpiPage());
                                      },
                                      child: Container(
                                        decoration: AppStyles.secondaryContainerStyle,
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Row(
                                            children: [
                                              Image.asset('assets/images/upi_image.png',width: 20,height: 20),
                                              Text(style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize:15,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                              ),'Add New UPI Account')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Visibility(
                                    visible: options?.bankWithdrawals == true,
                                    child: InkWell(
                                      onTap: (){
                                        Get.to(() => const BankAccountPage());
                                      },
                                      child: Container(
                                        decoration: AppStyles.secondaryContainerStyle,
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.all(15),
                                          child: Row(
                                            children: [
                                              Image.asset('assets/images/bank_image.png',width: 20,height: 20),
                                              Text(style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize:15,
                                                fontWeight: FontWeight.w700,
                                                fontStyle: FontStyle.normal,
                                              ),'Add New Bank Account')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }
                            ,orElse: () => SizedBox()
                            )
                        )
                        ,InkWell(
                          onTap:(){
                            Get.to(() => const TransactionsPage());
                          },
                          child: Text(textAlign: TextAlign.start,style: TextStyle(
                            color: CustomColors.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),'Recent Transactions'),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
          ),
      );
  }

  Future<void> _refresh() async{
    transactionViewModel.performFetchAccountsAction();
  }
}
