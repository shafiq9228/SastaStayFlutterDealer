import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class SideHeadingComponent extends StatelessWidget {
  final String title;
  final int? viewType;
  final bool viewVisible;
  final VoidCallback? viewClick;
  const SideHeadingComponent({super.key, required this.title, required this.viewVisible, this.viewClick,this.viewType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: viewType == 1 ? const EdgeInsets.symmetric(horizontal: 20,vertical: 20) :  const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
      child: Row(
        children: [
          Expanded(child: Text(title,style: viewType == 1 ? TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: CustomColors.black) : TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.black))),
          const SizedBox(width: 20),
          Visibility(
            visible: viewVisible,
            child: InkWell(
              onTap:viewClick,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.darkGray)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    Text("View All",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: CustomColors.black)),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.darkGray)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(Icons.arrow_forward_ios_rounded,color: CustomColors.black,size: 8),
                      ),
                    )
                  ],
                ),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
