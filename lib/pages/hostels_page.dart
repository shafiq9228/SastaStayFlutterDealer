import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sasta_stay_dealer/components/hostel_details_component.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/pages/register_hostel_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/utils/statefullwrapper.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import 'package:get/get.dart';

import '../request_models/auth_request_model.dart';
import '../utils/custom_colors.dart';


class HostelsPage extends StatefulWidget {
  const HostelsPage({super.key});

  @override
  State<HostelsPage> createState() => _HostelsPageState();
}

class _HostelsPageState extends State<HostelsPage> {
  final hostelViewModel = Get.put(HostelViewModel());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: CustomColors.white,
      body: Stack(
        children: [
          StatefulWrapper(
          onInit: _refreshData,
          child: SafeArea(
              top:true,
              child: Column(
              children: [
                SecondaryHeadingComponent(buttonTxt: "Hostels", buttonClick: (){
                     Get.back();
                },extraBtnText: "List New Hostel",extraBtnClick: (){
                  Get.to(() => const RegisterHostelPage(fromHostelListPage: true));
                }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchHostelsObserver.value.data.value.maybeWhen(
                            loading: () => const Center(child: CustomProgressBar()),
                            success: (data){
                              final responseData = (data as FetchHostelsResponseModel).data;
                              final hostelList =  responseData;
                              return (hostelList?.length ?? 0) == 0 ? const SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Hostels Found"),)))))
                                  :
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
                                          itemCount: hostelList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final hostelData = hostelList?[index];
                                            return HostelDetailsComponent(hostelModel: hostelData,);
                                          }),
                                      Obx(() => Visibility(
                                          visible: hostelViewModel.fetchHostelsObserver.value.isLoading,
                                          child: const CustomProgressBar()),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            orElse: () => const Center(child: EmptyDataView(text: "No Hostels Found")));
                      }
                      ),
                    ),
                  ),
                )
                      ],
                    )),
              ),
          Obx(()=> hostelViewModel.setAsPrimaryHostelResponseObserver.value.maybeWhen(loading: () => Container(width: double.infinity,height: double.infinity,color: CustomColors.black.withOpacity(0.4),child: Center(child: CircularProgressIndicator(color: CustomColors.white)),),orElse: () => const SizedBox())),
        ],
      ),);
  }

  Future<void> _refreshData() async{
    hostelViewModel.fetchHostels(const PaginationRequestModel(page: 1),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchHostelsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchHostels(PaginationRequestModel(page: observer.value.page),false);
  }

}
