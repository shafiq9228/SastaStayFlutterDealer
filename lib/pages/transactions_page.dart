import 'dart:math';

import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/empty_data_view.dart';
import '../components/secondary_heading_component.dart';
import '../components/transaction_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/bookings_response_model.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/transaction_view_model.dart';


class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  final transactionViewModel = Get.put(TransactionViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: StatefulWrapper(
        onInit: _refreshData,
        child: SafeArea(
            top:true,
            child: Column(
              children: [
                SecondaryHeadingComponent(buttonTxt: "Transaction History", buttonClick: (){
                  Get.back();
                }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return transactionViewModel.fetchTransactionsObserver.value.data.value.maybeWhen(
                            loading: () => ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                                    child: FadeShimmer(
                                      height: 50,
                                      width: double.infinity,
                                      radius: 20,
                                      millisecondsDelay: index*300,
                                      highlightColor: Colors.grey.shade200,
                                      baseColor:Colors.white,
                                    ),
                                  );
                                },itemCount: 10),
                            success: (data){
                              final responseData = (data as FetchTransactionsResponseModel).data;
                              final transactionList =  responseData;
                              return (transactionList?.length ?? 0) == 0 ? SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: const AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Transactions Found"),))))) :
                              NotificationListener(
                                onNotification: (ScrollNotification scrollNotification) {
                                  if (scrollNotification.metrics.pixels >= scrollNotification.metrics.maxScrollExtent - 20) {
                                    _addData();
                                  }
                                  return false;
                                },
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          itemCount: transactionList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final transactionModel = transactionList?[index];
                                            return TransactionComponent(transactionModel:transactionModel);
                                          }),
                                      Visibility(
                                        visible: (transactionList?.length ?? 0) < 5,
                                        child: SizedBox(
                                          height: max(0, (5 - (transactionList?.length ?? 0)) * 200),
                                          width: double.infinity,
                                        ),
                                      ),
                                      Obx(() => Visibility(
                                          visible: transactionViewModel.fetchTransactionsObserver.value.isLoading,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: FadeShimmer(
                                              height: 50,
                                              width: double.infinity,
                                              radius: 20,
                                              millisecondsDelay: 300,
                                              highlightColor: Colors.grey.shade200,
                                              baseColor:Colors.white,
                                            ),
                                          )),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            orElse: () => SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: EmptyDataView(text: "No Transactions Found"))));
                      }
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),);
  }

  Future<void> _refreshData() async{
    transactionViewModel.fetchTransactions(const PaginationRequestModel(page: 1),true);
  }

  Future<void> _addData() async {
    final observer = transactionViewModel.fetchTransactionsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    transactionViewModel.fetchTransactions(PaginationRequestModel(page: observer.value.page),false);
  }
}
