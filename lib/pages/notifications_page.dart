import 'dart:math';

import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/empty_data_view.dart';
import '../components/notification_component.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';



class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final hostelViewModel = Get.put(HostelViewModel());

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
                SecondaryHeadingComponent(buttonTxt: "Notifications", buttonClick: (){
                  Get.back();
                }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchNotificationsObserver.value.data.value.maybeWhen(
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
                              final responseData = (data as FetchNotificationsResponseModel).data;
                              final notificationList =  responseData;
                              return (notificationList?.length ?? 0) == 0 ? const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Notifications Found"),))))) :
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
                                        itemCount: notificationList?.length ?? 0,
                                        itemBuilder: (context, index) {
                                          final notificationModel = notificationList?[index];
                                          return Dismissible(
                                            key: Key(notificationModel?.id.toString() ?? index.toString()), // unique key
                                            direction: DismissDirection.endToStart, // swipe from right to left
                                            background: Container(
                                              alignment: Alignment.centerRight,
                                              padding: const EdgeInsets.symmetric(horizontal: 20),
                                              color: Colors.red,
                                              child: const Icon(Icons.delete, color: Colors.white),
                                            ),
                                            onDismissed: (direction) async {
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                const SnackBar(content: Text("Notification deleted")),
                                              );
                                              await hostelViewModel.deleteNotification(notificationModel?.id);
                                            },
                                            child: NotificationComponent(
                                              notificationModel: notificationModel,
                                              hostelViewModel: hostelViewModel,
                                            ),
                                          );
                                        },
                                      ),
                                      Visibility(
                                        visible: (notificationList?.length ?? 0) < 5,
                                        child: SizedBox(
                                          height: max(0, (5 - (notificationList?.length ?? 0)) * 200),
                                          width: double.infinity,
                                        ),
                                      ),
                                      Obx(() => Visibility(
                                          visible: hostelViewModel.fetchNotificationsObserver.value.isLoading,
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
                            orElse: () => SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: EmptyDataView(text: "No Notification Found"))));
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
    hostelViewModel.fetchNotifications(PaginationRequestModel(page: 1),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchNotificationsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchNotifications(PaginationRequestModel(page: observer.value.page),false);
  }
}
