import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/pages/register_room_page.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';

import '../api/api_result.dart';
import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import '../components/hostel_room_availability_bottom_sheet.dart';
import '../components/room_component_2.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/hostel_response_model.dart';
import '../shimmers/room_details_shimmer.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import 'package:get/get.dart';

import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';


class RoomsPage extends StatefulWidget {
  final bool? fromHomePage;
  final RoomModel? roomModel;
  const RoomsPage({super.key, this.fromHomePage, this.roomModel});

  @override
  State<RoomsPage> createState() => _RoomsPageState();
}

class _RoomsPageState extends State<RoomsPage> {
  final authViewModel = Get.put(AuthViewModel());
  final hostelViewModel = Get.put(HostelViewModel());
  RxString searchQuery = "".obs;
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: StatefulWrapper(
        onInit:(){
          _refreshData();
          if(widget.roomModel != null){
            showModalBottomSheet(
              context: context,
              isScrollControlled: true, // allows full height scroll
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              builder: (context) {
                return HostelRoomAvailabilityBottomSheet(roomModel: widget.roomModel);
              },
            );
          }
        },
        child: SafeArea(
            top:true,
            child: Column(
              children: [
                widget.fromHomePage == true ? SecondaryHeadingComponent(buttonTxt: "Rooms", buttonClick: (){
                  Get.back();
                },extraBtnText: "List New Room",extraBtnClick: (){
                  Get.to(() => const RegisterRoomPage());
                }) : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Container(
                              color: CustomColors.white,child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                  padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
                  child: SizedBox(width:200,child: Text("Rooms",textAlign: TextAlign.start,style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 22),)),
                                ),
                              ),
                              InkWell(
                                onTap:(){
                  Get.to(() => const RegisterRoomPage());
                                },
                                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Container(
                    decoration: AppStyles.categoryBg3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text("List New Room",style: TextStyle(fontWeight: FontWeight.w500,color: CustomColors.textColor),),
                    ),
                  ),
                                ),
                              )
                            ],
                          )),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: AppStyles.categoryBg3,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SizedBox(width:20,height:20,child: Image.asset("assets/images/search.png",color: CustomColors.textColor)),
                                ),
                                Expanded(
                                  child: TextFormField(
                                      onChanged: (query){
                                        searchQuery.value = query;
                                        _onSearchChanged(query);
                                      },
                                      style: TextStyle(
                                          color:CustomColors.textColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),
                                      decoration: const InputDecoration(
                                        counterText: '',
                                        hintText: 'Search By Room Number Or Floor',
                                        hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Obx(() => searchQuery.value.isEmpty ? const SizedBox() : hostelViewModel.fetchHostelRoomsObserver.value.data.value.maybeWhen(
                                      loading: () => SizedBox(height: 10,width: 10,child: Center(child: CircularProgressIndicator(color:CustomColors.textColor,strokeWidth: 2))),
                                      orElse: () => GestureDetector(
                                          onTap: (){
                                            searchQuery.value = "";
                                            _refreshData();
                                          },
                                          child: SizedBox(height: 20,width: 20,child: Center(child: Icon(Icons.cancel_outlined,color:CustomColors.textColor)))))),
                                )
                              ],),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchHostelRoomsObserver.value.data.value.maybeWhen(
                            loading: () => ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return RoomDetailsShimmer(index: index);
                                },itemCount: 5),
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
                                      Visibility(
                                          visible: (roomsList?.length ?? 0) < 5,
                                          child: SizedBox(height: 500,width: double.infinity)),
                                      Obx(() => Visibility(
                                          visible: hostelViewModel.fetchHostelRoomsObserver.value.isLoading,
                                          child: const RoomDetailsShimmer(index: 0)),
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

  void _onSearchChanged(String query) {
    hostelViewModel.fetchHostelRoomsObserver.value.data.value = const ApiResult.loading();
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      searchQuery.value = query;;
      _refreshData();
    });
  }

  Future<void> _refreshData() async{
    hostelViewModel.fetchHostelRooms(PaginationRequestModel(page: 1,hostelId: authViewModel.getPrimaryId(),query: searchQuery.value),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchHostelRoomsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchHostelRooms(PaginationRequestModel(page: observer.value.page,hostelId: authViewModel.getPrimaryId(),query: searchQuery.value),false);
  }
}
