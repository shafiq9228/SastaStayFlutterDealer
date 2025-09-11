import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/components/amenity_component.dart';
import 'package:sasta_stay_dealer/components/home_page_component.dart';
import 'package:sasta_stay_dealer/pages/rating_reviews_page.dart';
import 'package:sasta_stay_dealer/pages/rooms_page.dart';
import 'package:sasta_stay_dealer/pages/update_hostel_details_page.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../components/amenities_component.dart';
import '../components/custom_network_image.dart';
import '../components/custom_outlined_button.dart';
import '../components/empty_data_view.dart';
import '../components/error_text_component.dart';
import '../components/rating_component.dart';
import '../components/room_component_1.dart';
import '../components/side_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/hostel_response_model.dart';
import '../shimmers/hostel_details_page_shimmer.dart';
import '../utils/app_styles.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';
import 'amenities_page.dart';
import 'hostel_images_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    final hostelViewModel = Get.put(HostelViewModel());
    final authViewModel = Get.put(AuthViewModel());


    Future<void> refresh() async {
      authViewModel.fetchUserDetails();
      hostelViewModel.fetchHostelDetails(PaginationRequestModel(page: 1,hostelId:authViewModel.getPrimaryId()));
    }

    return StatefulWrapper(
      onInit: refresh,
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Obx(() => hostelViewModel.fetchHostelDetailsObserver.value.maybeWhen(
            loading: () => const HostelDetailsPageShimmer(),
            success: (data){
              final hostelData = (data as FetchHostelDetailsResponseModel).data;
              return RefreshIndicator(
                onRefresh: refresh,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomePageComponent(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 80,
                            width: double.infinity,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  final statsModel =  hostelData?.stats?[index];
                                  RxList<BoxDecoration> decorations = [AppStyles.categoryBg1,AppStyles.categoryBg2,AppStyles.categoryBg3,AppStyles.categoryBg4,AppStyles.categoryBg5].obs;
                                  final random = Random();
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: Container(
                                      decoration: decorations[random.nextInt(decorations.length)],
                                      child: Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(statsModel?.type ?? "",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16,color: CustomColors.primary)),
                                            const SizedBox(height: 5),
                                            Text("₹${statsModel?.amount ?? "0"}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: CustomColors.textColor))
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },itemCount: hostelData?.stats?.length ?? 0),
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                      onTap: (){
                        authViewModel.images.value = hostelData?.images ?? [];
                        Get.to(() => HostelImagesPage(hostelModel: hostelData));
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomNetworkImage(imageUrl: hostelData?.hostelImage ??"",width: double.infinity,height: 300,fit: BoxFit.cover,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Visibility(
                              visible: hostelData?.images?.isNotEmpty == true,
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: CustomColors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: (hostelData?.images?.first.images?.length ?? 0) > 5
                                        ? 5
                                        : hostelData?.images?.first.images?.length ?? 0,
                                    itemBuilder: (context, index) {
                                      final images = hostelData?.images?.first.images ?? [];
                                      final imageUrl = images[index];
                                      // If last index and there are more than 5 images
                                      if (index == 4 && images.length > 5) {
                                        final remainingCount = images.length - 5;
                                        return Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomNetworkImage(
                                                imageUrl: imageUrl,
                                                fit: BoxFit.cover,
                                                width: 40,
                                                height: 40,
                                              ),
                                              Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: Colors.black54,
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '+$remainingCount',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                      // Normal image item
                                      return Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: CustomNetworkImage(
                                          imageUrl: imageUrl,
                                          fit: BoxFit.cover,
                                          width: 50,
                                          height: 50,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                        // StaggeredGridView.countBuilder(
                        //   physics: NeverScrollableScrollPhysics(),
                        //   shrinkWrap: true,
                        //   crossAxisCount: 2,
                        //   itemCount:trendingList.length,
                        //   itemBuilder:(BuildContext context, int index) {
                        //     final item = trendingList[index];
                        //     return TrendingListComponent(trendingListDataModel: item);},
                        //   mainAxisSpacing: 4.0,
                        //   crossAxisSpacing: 4.0,
                        //   staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
                        // ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                hostelData?.hostelName ?? 'Hostel',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Image.asset("assets/images/star.png",width: 18,height: 18),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text("${hostelData?.rating ?? 0}",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: CustomColors.black,decoration: TextDecoration.underline)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Image.asset("assets/images/location.png",width: 10,height: 10,color: CustomColors.textColor),
                              Expanded(child: Text(hostelData?.location?.address1 ?? "",maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: CustomColors.textColor))),
                              Text("${hostelData?.totalVotes ?? 0} reviews",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: CustomColors.darkGray))
                            ],
                          ),
                        ),
                        Text(
                          hostelData?.aboutHostel ?? 'No description available',
                          style: TextStyle(color: CustomColors.darkGray,fontSize: 14,fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 16),
                        CustomOutlinedButton(buttonTxt: "Edit Hostel Details", buttonClick: (){
                          Get.to(() =>  UpdateHostelDetailsPage(hostelModel: hostelData));
                        }),
                        // Chip(
                        //   label: Text(hostelData?.hostelType ?? 'Type'),
                        //   backgroundColor: _getHostelTypeColor(hostelData?.hostelType),
                        // ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: double.infinity,
                            color: CustomColors.lightGray,
                            height: 5,
                          ),
                        ),
                        SideHeadingComponent(title: "Amenities",
                            viewVisible: true
                            // viewVisible: (hostelData?.amenitiesMore ?? 0) > 0
                            ,viewClick: (){
                              authViewModel.amenityIds.clear();
                              Get.to(() =>  AmenitiesPage(hostelId: hostelData?.id ?? ""));
                            },viewType: 2),
                        _buildAmenitiesGrid(hostelData?.amenities,hostelData?.amenitiesMore),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: double.infinity,
                            color: CustomColors.lightGray,
                            height: 5,
                          ),
                        ),
                        SideHeadingComponent(title: "Room Types",
                            viewVisible: true,
                            // viewVisible: (hostelData?.roomsMore ?? 0) > 0,
                            viewClick: (){
                              Get.to(() =>  const RoomsPage(fromHomePage:true));
                            }),
                        _buildHostelRoomsList(hostelData),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: double.infinity,
                            color: CustomColors.lightGray,
                            height: 5,
                          ),
                        ),
                        const SideHeadingComponent(title: "Location",viewVisible:false),
                        _buildLocationInfo(hostelData?.location),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            width: double.infinity,
                            color: CustomColors.lightGray,
                            height: 5,
                          ),
                        ),
                        const SideHeadingComponent(title: "Rules",viewVisible: false),
                        _buildRulesList(hostelData?.rules ?? []),
                        SideHeadingComponent(title: "Ratings",viewVisible: true,viewClick: (){
                          Get.to(() => RatingReviewsPage(rating: double.tryParse((hostelData?.rating ?? "0").toString()) ?? 0));
                        }),
                        RatingComponent(rating: double.tryParse((hostelData?.rating ?? "0").toString()) ?? 0),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () => const Center(
              child: EmptyDataView(text: "Something went wrong"),
            ))
        ),
        // bottomNavigationBar: _buildBottomAppBar(),
      ),
    );
  }

  Widget _buildLocationInfo(LocationModel? location) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://maps.googleapis.com/maps/api/staticmap?center=${location?.latitude},${location?.longitude}&zoom=15&size=600x300&maptype=roadmap&markers=color:red%7C${location?.latitude},${location?.longitude}&key=AIzaSyDf0aKkhQtwMnkHdjLEAmK7hjajE5T32cU',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: AppStyles.categoryBg4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${location?.address1}, ${location?.address2}',
                  style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w700),
                ),
                Text(
                  '${location?.city}, ${location?.state} - ${location?.pinCode}',
                  style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16.0, color: Colors.blue),
                    const SizedBox(width: 4.0),
                    Text(
                      'Landmark: ${location?.landMark}',
                      style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        CustomOutlinedButton(buttonTxt: "Open In Google Maps", buttonClick: (){
          _openGoogleMaps(location?.latitude ?? 0.00,location?.longitude ?? 0.00);
        }),
        const SizedBox(height: 10),
      ],
    );
  }

  Future<void> _openGoogleMaps(double latitude, double longitude) async {
    if(latitude == 0.00 || latitude == 0.00) throw "Could not open Google Maps";
    final Uri googleMapsUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );

    if (await canLaunchUrl(googleMapsUrl)) {
      await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not open Google Maps';
    }
  }

  Widget _buildAmenitiesGrid(List<AmenitiesModel>? amenities,int? amenitiesMore) {
    return Builder(
      builder: (context) {
        final List<AmenitiesModel> displayList = List.from(amenities ?? []);
        if ((amenitiesMore ?? 0) > 0) {
          displayList.add(
            AmenitiesModel(
              image: "https://firebasestorage.googleapis.com/v0/b/sastastay-1d420.firebasestorage.app/o/bannerImages%2F1755513864049.png?alt=media&token=b25f99c1-8dcc-44a7-a888-fc7bf4398426",
              name: "${amenitiesMore} More",
            ),
          );
        }
        return displayList.isEmpty ? const ErrorTextComponent(text: "No Amenities Available") :
        Wrap(
          spacing:8,
          runSpacing:8,
          children: displayList.map((amenityModel) {
            return AmenitiesComponent(
              amenitiesModel: amenityModel,
              view: 2,
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildRulesList(List<String> rules) {
    return rules.isNotEmpty ? Container(
      decoration: AppStyles.categoryBg4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: rules.map((rule) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(width: 40,height:40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),color: CustomColors.white),child: Icon(Icons.rule,color: CustomColors.textColor,size: 20)),
                        const SizedBox(width: 10),
                        Expanded(child: Text(rule,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: CustomColors.textColor)))
                      ],
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      visible: rules.length > 1,
                      child: DottedLine(
                        dashColor: Colors.black.withOpacity(0.8),
                      ),
                    )
                  ],
                ),
              )
          ).toList(),
        ),
      ),
    ) : const ErrorTextComponent(text: "No Rules Attached");
  }

  Widget _buildHostelRoomsList(HostelModel? hostelModel) {
    final roomList = hostelModel?.rooms;
    final roomsMore = hostelModel?.roomsMore;
    final safeList = roomList ?? [];
    final displayList = List<RoomModel>.from(safeList);

    if ((roomsMore ?? 0) > 0) {
      displayList.add(
        RoomModel(
          image: "https://firebasestorage.googleapis.com/v0/b/sastastay-1d420.firebasestorage.app/o/bannerImages%2F1755513864049.png?alt=media&token=b25f99c1-8dcc-44a7-a888-fc7bf4398426",
          roomType: "$roomsMore More",
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: displayList.isEmpty ? const ErrorTextComponent(text: "Currently Rooms Are Not Available") : SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: displayList.length,
          itemBuilder: (context, index) {
            final roomModel = displayList[index];
            return InkWell(
                onTap:(){
                  Get.to(() => const RoomsPage());
                },
                child: RoomComponent1(roomModel: roomModel));
          },
        ),
      ),
    );
  }


  Color _getHostelTypeColor(String? type) {
    switch (type?.toLowerCase()) {
      case 'boys':
        return Colors.blue[100]!;
      case 'girls':
        return Colors.pink[100]!;
      default:
        return Colors.grey[200]!;
    }
  }
}


