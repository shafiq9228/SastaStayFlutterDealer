import 'package:get/get.dart';import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/view_models/transaction_view_model.dart';
import '../response_model/transaction_response_model.dart';
import '../utils/custom_colors.dart';


class UpiRadioComponent extends StatefulWidget {
  final UpiData? item;
  final Function(UpiData? item) onclick;
  const UpiRadioComponent({super.key,required this.item, required this.onclick});

  @override
  State<UpiRadioComponent> createState() => _UpiRadioComponentState();
}

class _UpiRadioComponentState extends State<UpiRadioComponent> {
  final transactionViewModel = Get.put(TransactionViewModel());

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 4),
      child: InkWell(
        onTap: (){
          widget.onclick(widget.item);
        },
        child: IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: CustomColors.primary
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            child:
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Obx(() {
                  return Radio(
                    value: widget.item?.id,
                    toggleable: true,
                    groupValue: transactionViewModel.accountDetails.value?.id,
                    activeColor: CustomColors.primary,
                    onChanged: (newValue) {
                      widget.onclick(widget.item);
                      // serviceViewModel.selectedOption.value = newValue ?? '';
                    },
                  );
                }
                ),
                Expanded(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(style: TextStyle(
                            color: CustomColors.primary,
                            fontSize:18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),widget.item?.accountType??""),
                        ),

                      ],
                    ),
                    const SizedBox(height: 5,),
                    (widget.item?.fullName??"").isNotEmpty ? Text(style: TextStyle(
                      color: CustomColors.textColor,
                      fontSize:18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),widget.item?.fullName??"") : const SizedBox(),
                    const SizedBox(height: 5,),
                    Text(style: TextStyle(
                      color: CustomColors.textColor,
                      fontSize:18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),widget.item?.accountNumber??""),
                  ],
              ),
                ),
                Obx(() => transactionViewModel.deleteAccountObserver.value.maybeWhen(
                  loadingCondition: (dataId,_) => dataId == widget.item?.id ? SizedBox(width: 20,height:20,child: CircularProgressIndicator(color: CustomColors.primary,))  : IconButton(onPressed: (){
                  }, icon: Icon(Icons.delete_rounded,size: 20,color: CustomColors.primary,)),
                    orElse: () => IconButton(onPressed: (){
                      transactionViewModel.performDeleteAccountAction(widget.item?.id ?? "");
                }, icon: Icon(Icons.delete_rounded,size: 20,color: CustomColors.primary,)))
                )
              ],
            ),
          ),
        ),
        ),
      )
      );
  }
}
