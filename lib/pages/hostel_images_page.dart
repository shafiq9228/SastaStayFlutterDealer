
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import 'package:sasta_stay_dealer/components/custom_progress_bar.dart';
import 'package:sasta_stay_dealer/response_model/bookings_response_model.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';

import '../components/secondary_heading_component.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../view_models/hostel_view_model.dart';
import 'file_picker_page.dart';

class HostelImagesPage extends StatelessWidget {
  final HostelModel? hostelModel;
  final bool? edit;
  const HostelImagesPage({super.key, this.edit,required this.hostelModel});

  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    final hostelViewModel = Get.put(HostelViewModel());

    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            SecondaryHeadingComponent(
              buttonTxt: "Hostel Images",
              buttonClick: () {
                Get.back();
              },
            ),

            /// Tabs + Views
            Obx(() {
              final imagesList = authViewModel.images;

              if (imagesList.isEmpty) {
                return const Expanded(
                  child: Center(child: Text("No images available")),
                );
              }

              return Expanded(
                child: DefaultTabController(
                  length: imagesList.length,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        labelColor: CustomColors.textColor,
                        unselectedLabelColor: Colors.black54,
                        indicatorColor: CustomColors.textColor,
                        tabs: imagesList
                            .map((data) =>
                            Tab(text: data.imagesType ?? "Unknown"))
                            .toList(),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: imagesList.asMap().entries.map((entry) {
                            final tabIndex = entry.key;
                            final data = entry.value;
                            final images = data.images ?? [];

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MasonryGridView.count(
                                crossAxisCount: 3,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                itemCount: images.length,
                                itemBuilder: (context, index) {
                                  final double height =
                                  (100 + (index % 5) * 40).toDouble();
                                  return Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: CustomNetworkImage(
                                          imageUrl: images[index],
                                          height: height,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Visibility(
                                         visible: edit == true,
                                          child: InkWell(
                                              onTap: (){
                                                     final updatedImages = List<String>.from(authViewModel.images[tabIndex].images ?? []);
                                                     updatedImages.remove(images[index]);
                                                     if (updatedImages.isEmpty) {
                                                       // remove the whole object if no images left
                                                       authViewModel.images.removeAt(tabIndex);
                                                     } else {
                                                       // otherwise update the existing object
                                                       authViewModel.images[tabIndex] =
                                                           authViewModel.images[tabIndex].copyWith(images: updatedImages);
                                                     }                                                },
                                              child: const Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Icon(Icons.cancel_outlined,size: 20),
                                          )))
                                    ],
                                  );
                                },
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),

            /// Bottom buttons
            if (edit == true)
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColors.white,
                            border: Border.all(
                              width: 0.5,
                              color: CustomColors.darkGray,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "Ok",
                              style: TextStyle(
                                color: CustomColors.textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: CustomColors.primary,
                          ),
                          child: TextButton(
                            onPressed: () {
                              hostelViewModel.getImagesType();
                              hostelViewModel.selectedHostelImageType.value = "";
                              showModalBottomSheet(
                                backgroundColor: Colors.white,
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext context) {
                                  return SingleChildScrollView(
                                    reverse: true,
                                    child: Container(
                                      color: CustomColors.white,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context).viewInsets.bottom,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Select Image Type",
                                                style: TextStyle(
                                                  color: CustomColors.textColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Obx(() => hostelViewModel.getImagesObserver.value.isLoading ==  true ? const CustomProgressBar() :  Wrap(
                                                    spacing: 8,
                                                    children: (hostelViewModel.getImagesObserver.value.data).map((item) {
                                                      return InkWell(
                                                          onTap: (){
                                                            hostelViewModel.selectedHostelImageType.value = item;
                                                            Get.to(() => const FilePickerPage(
                                                              fileView: false,
                                                              fileType: 'image',
                                                              fileName: 'hostelImages',
                                                            ));
                                                          }, child: Obx(() => CustomChip(label: item,isSelected:hostelViewModel.selectedHostelImageType.value == item))
                                                      );}).toList()
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: const Text(
                              "Add New Image",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

}

class CustomChip extends StatelessWidget {
  final String label;
  final bool? isSelected;
  const CustomChip({super.key, required this.label, this.isSelected = null});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: isSelected == null ? AppStyles.categoryBg3 : isSelected ==  true ? AppStyles.selectedCategoryBg : BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey.shade400,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

