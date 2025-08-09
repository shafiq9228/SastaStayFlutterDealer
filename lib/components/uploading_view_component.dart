import 'package:flutter/cupertino.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';



class UploadingViewComponent extends StatelessWidget {
  final String uploadingText;
  final VoidCallback onClick;
  const UploadingViewComponent({super.key, required this.uploadingText, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 0.5,color: CustomColors.darkGray)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 18,height: 18,child: Image.asset("assets/images/upload.png",color: CustomColors.textColor)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Text(uploadingText,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: CustomColors.textColor),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
