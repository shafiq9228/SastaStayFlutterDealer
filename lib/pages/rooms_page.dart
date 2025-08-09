import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';

import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import '../components/room_component_2.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/custom_colors.dart';
import 'package:get/get.dart';

import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';


class RoomsPage extends StatefulWidget {
  const RoomsPage({super.key});

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  final authViewModel = Get.put(AuthViewModel());
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
                Container(
                   height: 50,
                    width: double.infinity,
                    color: CustomColors.primary,child: Center(child: Text("Rooms",style: TextStyle(color: CustomColors.white,fontWeight: FontWeight.w600,fontSize: 22),))),
                SizedBox(height: 20),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchHostelRoomsObserver.value.data.value.maybeWhen(
                            loading: () => const Center(child: CustomProgressBar()),
                            success: (data){
                              final responseData = (data as FetchHostelRoomsResponseModel).data;
                              final roomsList =  responseData;
                              return (roomsList?.length ?? 0) == 0 ? const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Rooms Found"),))))) :
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
                                          itemCount: roomsList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final roomModel = roomsList?[index];
                                            return RoomComponent2(roomModel: roomModel);
                                          }),
                                      Obx(() => Visibility(
                                          visible: hostelViewModel.fetchHostelRoomsObserver.value.isLoading,
                                          child: const CustomProgressBar()),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            orElse: () => SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: EmptyDataView(text: "No Rooms Found"))));
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
    hostelViewModel.fetchHostelRooms(PaginationRequestModel(page: 1,hostelId: authViewModel.getPrimaryId()),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchHostelRoomsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchHostelRooms(PaginationRequestModel(page: observer.value.page,hostelId: authViewModel.getPrimaryId()),false);
  }
}
