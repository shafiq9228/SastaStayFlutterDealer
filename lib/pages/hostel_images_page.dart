import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../components/secondary_heading_component.dart';
import '../utils/custom_colors.dart';

class HostelImagesPage extends StatelessWidget {
  final List<String> imageUrls;
  const HostelImagesPage({super.key, required this.imageUrls});


  @override
  Widget build(BuildContext context) {
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
                child: MasonryGridView.count(
                  crossAxisCount: 3, // number of columns
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, index) {
                    // Random height for variation
                    final double height = (100 + (index % 5) * 40).toDouble();

                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        imageUrls[index],
                        height: height,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
