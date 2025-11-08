import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/pages/profile_page.dart';
import 'package:sasta_stay_dealer/pages/transactions_page.dart';
import 'package:sasta_stay_dealer/pages/upi_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/money_input_formater.dart.dart';
import '../components/upi_radio_component.dart';
import '../components/withdraw_details_bottom_sheet.dart';
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
    final TextEditingController editTextController = TextEditingController();
    return
      WillPopScope(
        onWillPop: () async {
          Get.offAll(() => const ProfilePage());
          return false;
        },
        child: StatefulWrapper(onInit: (){

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
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: CustomColors.primary
                                    ,borderRadius: BorderRadius.circular(15)
                                ),
                                child:
                                SizedBox(
                                  width: double.infinity,
                                  child:
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:CrossAxisAlignment.center,
                                      children: [
                                        IntrinsicWidth(
                                          child: TextFormField(
                                              maxLength: 10,
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w800,
                                                  color: CustomColors.white
                                              ),
                                              keyboardType: TextInputType.phone,
                                              inputFormatters: [MoneyInputFormatter()],
                                              controller: editTextController,
                                              cursorColor: CustomColors.white,
                                              decoration: InputDecoration(
                                                  counterText: '',
                                                  prefixIcon: Icon(Icons.currency_rupee,size: 20,color:CustomColors.white),
                                                  border: InputBorder.none,
                                                  hintText:'00',
                                                  hintStyle:  TextStyle(
                                                      fontSize: 30,
                                                      fontWeight: FontWeight.w800,
                                                      color: CustomColors.white
                                                  ),
                                                  contentPadding: const EdgeInsets.symmetric(vertical: 5)
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Text(style: TextStyle(
                                            color: CustomColors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                          ),'Total amount to be transferred'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child:
                                          Obx(() => Text( 'Your Earning : ₹ ${hostelViewModel.fetchHostelStatisticsObserver.value.maybeWhen(success: (data) => ((data as FetchHostelStatisticsResponseModel).data?.first.amount ?? 0).toString() ,orElse: () => "0")}',style: TextStyle(fontSize: 16,color: CustomColors.white,fontWeight: FontWeight.w600))),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Obx( () {
                              if(transactionViewModel.upiId.trim().isEmpty){
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
                                              Image.asset('assets/images/upi_image.png',width: 20,height: 20,)
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
                                                    ),transactionViewModel.upiId.toString()),
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
                            }),
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
                            Obx( () => transactionViewModel.fetchAccountsObserver.value.maybeWhen(
                                loading: () =>  ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) {
                                    return MoneyWithdrawPageShimmer(index: index);
                                  },
                                ),
                                success: (data) {
                                  final List<UpiData> populerList = (data as FetchAccountsResponseModel?)?.data ?? List.empty();
                                  return
                                    ListView.builder(
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: populerList.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        final item = populerList[index];
                                        return UpiRadioComponent(item: item);
                                      },
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
                          ),
                          Center(
                            child:
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Obx(() => transactionViewModel.fetchWithdrawalDetailsObserver.value.maybeWhen(
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
                                          if(editTextController.text.trim().isNotEmpty && transactionViewModel.upiId.trim().isNotEmpty){
                                            transactionViewModel.fetchWithdrawalDetails(AddBalanceRequestModel(amount:double.parse(removeCommas(editTextController.text))));
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return  WithdrawalDetailsBottomSheet(amount: double.parse(removeCommas(editTextController.text)),accountType: transactionViewModel.accountType.toString(), accountNumber: transactionViewModel.upiId.toString());
                                                }
                                            );
                                            // transactionViewModel.performWithDrawBalanceAction(WithdrawBalanceRequestModel(amount: double.parse(removeCommas(editTextController.text)), accountType: accountViewModel.accountType.toString(), accountNumber: accountViewModel.upiId.toString()));
                                          }
                                          else if(editTextController.text.trim().isEmpty){
                                            Get.snackbar("Failed", "Enter Amount",snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
                                          }
                                          else{
                                            Get.snackbar("Failed", "Select Your Account To Transfer",snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
                                          }
                                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodPage()));
                                        },
                                        child: const Text(
                                          'TRANSFER',
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
        ),
      );
  }

  Future<void> _refresh() async{
    transactionViewModel.performFetchAccountsAction();
  }
}
