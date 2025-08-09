import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../components/amenity_component.dart';
import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';

class AmenitiesPage extends StatefulWidget {
  final String? hostelId;
  const AmenitiesPage({super.key, required this.hostelId});

  @override
  State<AmenitiesPage> createState() => _AmenitiesPageState();
}

class _AmenitiesPageState extends State<AmenitiesPage> {

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
                SecondaryHeadingComponent(buttonTxt: "Amenities", buttonClick: (){
                  Get.back();
                }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchAmenitiesObserver.value.data.value.maybeWhen(
                            loading: () => const Center(child: CustomProgressBar()),
                            success: (data){
                              final responseData = (data as FetchAmenitiesResponseModel).data;
                              final amenitieslList =  responseData;
                              return (amenitieslList?.length ?? 0) == 0 ? SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Amenities Found"),))))) :
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
                                          itemCount: amenitieslList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final amentityModel = amenitieslList?[index];
                                            return AmenityComponent(amenitiesModel: amentityModel);
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
                            orElse: () => SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: EmptyDataView(text: "No Amenities Found"))));
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
    hostelViewModel.fetchAmenities(PaginationRequestModel(page: 1,hostelId: widget.hostelId),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchAmenitiesObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchAmenities(PaginationRequestModel(page: observer.value.page,hostelId: widget.hostelId),false);
  }

}
