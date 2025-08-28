import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../api/api_result.dart';
import '../components/booking_details_component.dart';
import '../components/empty_data_view.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/bookings_response_model.dart';
import '../shimmers/booking_details_shimmer.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/booking_view_model.dart';

class BookingsPage extends StatefulWidget {
  final String? roomId;
  const BookingsPage({super.key, this.roomId});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  final bookingsViewModel = Get.put(BookingViewModel());
  final displayList = ["All","Ongoing","Upcoming","Past"];
  RxString filterType = "All".obs;

  final TextEditingController searchController = TextEditingController();

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
        onInit: _refreshData,
        child: SafeArea(
            top:true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.roomId == null ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Text("My Bookings",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: CustomColors.textColor)),
                ) : const SecondaryHeadingComponent(buttonTxt: "Room Bookings"),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                  child: Container(
                    height: 50,
                    width: double.infinity,
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
                              controller: searchController,
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
                          child: Obx(() {
                            final observer = getCurrentObserver();
                            return searchQuery.value.isEmpty ? const SizedBox() : observer.value.data.value.maybeWhen(
                              loading: () => SizedBox(height: 10,width: 10,child: Center(child: CircularProgressIndicator(color:CustomColors.textColor,strokeWidth: 2))),
                              orElse: () => GestureDetector(
                                  onTap: (){
                                    searchController.clear();
                                    searchQuery.value = "";
                                    _refreshData();
                                  },
                                  child: SizedBox(height: 20,width: 20,child: Center(child: Icon(Icons.cancel_outlined,color:CustomColors.textColor)))));
                          }),
                        )
                      ],),
                  ),
                ),
                Obx(() => Visibility(
                    visible: searchQuery.value.trim().isEmpty,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 40,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: displayList.length,
                          itemBuilder: (context, index) {
                            final heading = displayList[index];
                            return GestureDetector(
                              onTap: (){
                                filterType.value = heading;
                                _onTabTap();
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Obx(() => Container(
                                    decoration: filterType.value != heading ? BoxDecoration(borderRadius: BorderRadius.circular(15),color: CustomColors.white,border: Border.all(width: 0.5,color: CustomColors.textColor)) : AppStyles.selectedCategoryBg,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                        child: Text("$heading (${getListCount(heading)})",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
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
                        final observer = getCurrentObserver();
                        return observer.value.data.value.maybeWhen(
                            loading: () => ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return BookingDetailsShimmer(index: index);
                                },itemCount: 10),
                            success: (data){
                              final responseData = (data as FetchBookingsResponseModel).data;
                              final bookingsList =  responseData;
                              return (bookingsList?.length ?? 0) == 0 ? const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Bookings Found"),))))) :
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
                                          itemCount: bookingsList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final bookingModel = bookingsList?[index];
                                            return BookingDetailsComponent(bookingModel:bookingModel);
                                          }),
                                      Visibility(
                                          visible: (bookingsList?.length ?? 0) < 5,
                                          child: SizedBox(height: 500,width: double.infinity)),
                                      Obx(() => Visibility(
                                          visible: observer.value.isLoading,
                                          child: const BookingDetailsShimmer(index: 1)),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            orElse: () => const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: EmptyDataView(text: "No Coupons Found"))));
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
    bookingsViewModel.fetchSearchedBookingsObserver.value.data.value = const ApiResult.loading();
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      searchQuery.value = query;
      _refreshData();
    });
  }

  Future<void> _onTabTap() async{
    _refreshData();
  }

  Future<void> _refreshData() async{
    bookingsViewModel.fetchBookings(PaginationRequestModel(roomId: widget.roomId,page: 1,query:filterType.value,searchQuery: searchQuery.value),true);
  }

  getCurrentObserver() {
    if(searchQuery.value.trim().isNotEmpty){
      return bookingsViewModel.fetchSearchedBookingsObserver;
    }
    else{
      switch (filterType.value) {
        case "Ongoing":
          return bookingsViewModel.fetchOngoingBookingsObserver;
        case "Upcoming":
          return bookingsViewModel.fetchUpComingBookingsObserver;
        case "Past":
          return bookingsViewModel.fetchPastBookingsObserver;
        default:
          return bookingsViewModel.fetchAllBookingsObserver;
      }
    }
  }

  Future<void> _addData() async {
    final observer = getCurrentObserver();
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    bookingsViewModel.fetchBookings(PaginationRequestModel(roomId: widget.roomId,page: observer.value.page,query:filterType.value,searchQuery: searchQuery.value),false);
  }



  getListCount(String type) {
    switch (type) {
      case "Ongoing":
        return bookingsViewModel.fetchOngoingBookingsObserver.value.data.value.maybeWhen(success:(data) => (data as FetchBookingsResponseModel).data?.length ?? 0,orElse: () => 0);
      case "Upcoming":
        return bookingsViewModel.fetchUpComingBookingsObserver.value.data.value.maybeWhen(success:(data) => (data as FetchBookingsResponseModel).data?.length ?? 0,orElse: () => 0);
      case "Past":
        return bookingsViewModel.fetchPastBookingsObserver.value.data.value.maybeWhen(success:(data) => (data as FetchBookingsResponseModel).data?.length ?? 0,orElse: () => 0);
      default:
        return bookingsViewModel.fetchAllBookingsObserver.value.data.value.maybeWhen(success:(data) => (data as FetchBookingsResponseModel).data?.length ?? 0,orElse: () => 0);
    }
  }
}
