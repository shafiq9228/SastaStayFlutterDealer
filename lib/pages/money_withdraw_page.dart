import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/pages/profile_page.dart';
import 'package:sasta_stay_dealer/pages/transactions_page.dart';
import 'package:sasta_stay_dealer/pages/upi_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/helper_bottom_sheet.dart';
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
