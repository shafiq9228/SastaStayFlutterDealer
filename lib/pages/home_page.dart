import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/components/amenity_component.dart';
import 'package:sasta_stay_dealer/components/home_page_component.dart';
import 'package:sasta_stay_dealer/pages/rooms_list_page.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dotted_line/dotted_line.dart';

import '../components/amenities_component.dart';
import '../components/custom_network_image.dart';
import '../components/custom_outlined_button.dart';
import '../components/empty_data_view.dart';
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

    return StatefulWrapper(
      onInit: (){
        authViewModel.fetchUserDetails();
        hostelViewModel.fetchHostelDetails(PaginationRequestModel(page: 1,hostelId:authViewModel.getPrimaryId()));
      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: Obx(() => hostelViewModel.fetchHostelDetailsObserver.value.maybeWhen(
            loading: () => HostelDetailsPageShimmer(),
            success: (data){
              final hostelData = (data as FetchHostelDetailsResponseModel).data;
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 400.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Hero(
                        tag: hostelData?.id ?? "",
                        child: Column(
                          children: [
                            HomePageComponent(),
                            InkWell(
                              onTap: (){
                                Get.to(() => HostelImagesPage(imageUrls: hostelData?.images ?? []));
                              },
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomNetworkImage(imageUrl: hostelData?.hostelImage ??"",width: double.infinity,height: 300,fit: BoxFit.cover,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                    child: Visibility(
                                      visible: hostelData?.images?.isNotEmpty == true,
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: CustomColors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: (hostelData?.images?.length ?? 0) > 5
                                                ? 5
                                                : hostelData?.images?.length ?? 0,
                                            itemBuilder: (context, index) {
                                              final images = hostelData?.images ?? [];
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
                                                  width: 40,
                                                  height: 40,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    width: double.infinity,
                                    decoration: BoxDecoration(color: CustomColors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  hostelData?.hostelName ?? 'Hostel',
                                  style: TextStyle(
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
                                Get.to(() => RoomsListPage(hostelId: hostelData?.id ?? ""));
                              }),
                          _buildHostelRoomsList(hostelData?.rooms,hostelData?.roomsMore),
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
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            orElse: () => Center(
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
        SizedBox(height: 10),
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
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16.0, color: Colors.blue),
                    SizedBox(width: 4.0),
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
        SizedBox(height: 10),
        CustomOutlinedButton(buttonTxt: "Open In Google Maps", buttonClick: (){

        }),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildAmenitiesGrid(List<AmenitiesModel>? amenities,int? amenitiesMore) {
    return Builder(
      builder: (context) {
        final List<AmenitiesModel> displayList = List.from(amenities ?? []);
        if ((amenitiesMore ?? 0) > 0) {
          displayList.add(
            AmenitiesModel(
              image: "https://icon-library.com/images/add-icon-png/add-icon-png-0.jpg",
              name: "${amenitiesMore} More",
            ),
          );
        }
        return GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.5,
          ),
          itemCount: displayList.length,
          itemBuilder: (context, index) {
            final amenityModel = displayList[index];
            return AmenitiesComponent(amenitiesModel: amenityModel,view: 2);
          },
        );
      },
    );
  }

  Widget _buildRulesList(List<String> rules) {
    return Container(
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
    );
  }

  Widget _buildHostelRoomsList(List<RoomModel>? roomList, int? roomsMore) {
    final safeList = roomList ?? [];
    final displayList = List<RoomModel>.from(safeList);

    if ((roomsMore ?? 0) > 0) {
      displayList.add(
        RoomModel(
          image: "https://icon-library.com/images/add-icon-png/add-icon-png-0.jpg",
          roomType: "$roomsMore More",
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: displayList.length,
          itemBuilder: (context, index) {
            final roomModel = displayList[index];
            return RoomComponent1(roomModel: roomModel);
          },
        ),
      ),
    );
  }


  Widget _buildBottomAppBar() {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Starting from',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '₹5,000/month',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                // Book now action
              },
              child: Text('Book Now'),
            ),
          ],
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
