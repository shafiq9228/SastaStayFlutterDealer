
import 'dart:math';

import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';


import '../components/custom_outlined_button.dart';
import '../components/empty_data_view.dart';
import '../components/rating_and_review_component.dart';
import '../components/rating_component.dart';
import '../components/secondary_heading_component.dart';
import '../components/side_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/hostel_response_model.dart';
import '../shimmers/rating_and_review_shimmer.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';

class RatingReviewsPage extends StatefulWidget {
  final double? rating;
  final List<CategoryRating>? categoryRating;
  const RatingReviewsPage({super.key,required this.rating,this.categoryRating});

  @override
  State<RatingReviewsPage> createState() => _RatingReviewsPageState();
}

class _RatingReviewsPageState extends State<RatingReviewsPage> {
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
                SecondaryHeadingComponent(buttonTxt: "Rating And Reviews", buttonClick: (){
                  Get.back();
                }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchRatingAndReviewsObserver.value.data.value.maybeWhen(
                            loading: () => ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                                    child: RatingAndReviewShimmer(index: index),
                                  );
                                },itemCount: 10),
                            success: (data){
                              final responseData = (data as FetchRatingAndReviewsResponseModel).data;
                              final ratingAndReviewsList =  responseData;
                              return (ratingAndReviewsList?.length ?? 0) == 0 ? const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Rating And Reviews Found"),))))) :
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
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: RatingComponent(rating: widget.rating,categoryRatings:widget.categoryRating),
                                      ),
                                      const SizedBox(height: 16),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Container(
                                          width: double.infinity,
                                          color: CustomColors.lightGray,
                                          height: 5,
                                        ),
                                      ),
                                      const Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          children: [
                                            SideHeadingComponent(title: "Rating And Reviews", viewVisible: false),
                                          ],
                                        ),
                                      ),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          itemCount: ratingAndReviewsList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final ratingAndReviewModel = ratingAndReviewsList?[index];
                                            return RatingAndReviewComponent(ratingAndReviewModel: ratingAndReviewModel);
                                          }),
                                      Visibility(
                                        visible: (ratingAndReviewsList?.length ?? 0) < 5,
                                        child: SizedBox(
                                          height: max(0, (5 - (ratingAndReviewsList?.length ?? 0)) * 100),
                                          width: double.infinity,
                                        ),
                                      ),
                                      Obx(() => Visibility(
                                          visible: hostelViewModel.fetchRatingAndReviewsObserver.value.isLoading,
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
                            orElse: () => const SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: EmptyDataView(text: "No Rating And Reviews Found"))));
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
    hostelViewModel.fetchRatingAndReviews(PaginationRequestModel(page: 1,hostelId: authViewModel.getPrimaryId()),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchRatingAndReviewsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchRatingAndReviews(PaginationRequestModel(page: observer.value.page,hostelId: authViewModel.getPrimaryId()),false);
  }
}
