import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/custom_network_image.dart';
import 'package:sasta_stay_dealer/components/custom_outlined_button.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:sasta_stay_dealer/view_models/auth_view_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/secondary_heading_component.dart';
import '../utils/custom_colors.dart';
import 'file_picker_page.dart';

class HostelImagesPage extends StatelessWidget {
  final bool? edit;
  const HostelImagesPage({super.key, this.edit});


  @override
  Widget build(BuildContext context) {
    final authViewModel = Get.put(AuthViewModel());
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            SecondaryHeadingComponent(buttonTxt: "Hostel Images", buttonClick: (){
              Get.back();
            }),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() => MasonryGridView.count(
                    crossAxisCount: 3, // number of columns
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    itemCount: authViewModel.images.length,
                    itemBuilder: (context, index) {
                      // Random height for variation
                      final double height = (100 + (index % 5) * 40).toDouble();

                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomNetworkImage(
                              imageUrl:authViewModel.images[index],
                              height: height,
                              fit: BoxFit.cover,
                            ),
                            Visibility(
                              visible: edit == true,
                              child: IconButton(onPressed: (){
                                authViewModel.images.remove(authViewModel.images[index]);
                                authViewModel.images.refresh();
                              }, icon: Icon(Icons.highlight_remove,size: 20,color: CustomColors.primary)),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            if(edit ==  true) Padding(
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
                              border: Border.all(width: 0.5,color: CustomColors.darkGray)
                          ),
                          child: TextButton(
                            onPressed: (){
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
                            onPressed: (){
                              Get.to(() => const FilePickerPage(fileView: false,fileType: 'image', fileName: 'hostelImages'));
                            },
                            child: Text(
                              "Add New Image",
                              style: const TextStyle(
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
            )
          ],
        ),
      ),
    );
  }
}
