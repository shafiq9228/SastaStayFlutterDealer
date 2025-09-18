import 'dart:math';
import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../components/coupon_code_component.dart';
import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import '../components/primary_button.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/bookings_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/hostel_view_model.dart';


class CouponsPage extends StatefulWidget {
  final bool selecting;
  const CouponsPage({super.key, required this.selecting});

  @override
  State<CouponsPage> createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {
  final hostelViewModel = Get.put(HostelViewModel());
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);


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
                SecondaryHeadingComponent(buttonTxt: "Coupons", buttonClick: (){
                  Get.back();
                }),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () => _refreshData(),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Obx(() {
                        return hostelViewModel.fetchCouponsObserver.value.data.value.maybeWhen(
                            loading: () => ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context,index){
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                                    child: FadeShimmer(
                                      height: 50,
                                      width: double.infinity,
                                      radius: 20,
                                      millisecondsDelay: index*300,
                                      highlightColor: Colors.grey.shade200,
                                      baseColor:Colors.white,
                                    ),
                                  );
                                },itemCount: 10),
                            success: (data){
                              final responseData = (data as FetchCouponsResponseModel).data;
                              final couponsList =  responseData;
                              return (couponsList?.length ?? 0) == 0 ? SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "No Coupons Found"),))))) :
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
                                          itemCount: couponsList?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final couponModel = couponsList?[index];
                                            return CouponCodeComponent(couponModel:couponModel, selecting: widget.selecting);
                                          }),
                                      Visibility(
                                        visible: (couponsList?.length ?? 0) < 5,
                                        child: SizedBox(
                                          height: max(0, (5 - (couponsList?.length ?? 0)) * 200),
                                          width: double.infinity,
                                        ),
                                      ),
                                      Obx(() => Visibility(
                                          visible: hostelViewModel.fetchCouponsObserver.value.isLoading,
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
                            orElse: () => SizedBox(width: double.infinity,height: double.infinity,child: const Center(child: EmptyDataView(text: "No Coupons Found"))));
                      }
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: !widget.selecting,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: PrimaryButton(buttonTxt: "Create An Coupon",buttonClick: (){
                      _showBottomSheet(context);
                    },),
                  ),
                )
              ],
            )),
      ),);
  }

  void _showBottomSheet(BuildContext context) {
    final TextEditingController codeController = TextEditingController();
    final TextEditingController orderValueController = TextEditingController();
    final TextEditingController discountController = TextEditingController();

    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              decoration: AppStyles.bottomBg,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 12),
                  Text("Create Coupon",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: CustomColors.textColor)),
                  const SizedBox(height: 12),
                  Text("Code",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: AppStyles.editTextBg,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          controller: codeController,
                          style: TextStyle(
                              color:CustomColors.textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: 'Enter New Coupon Code',
                            hintStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Default color
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColors.white, width: 2.0), // Focus color
                            ),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Minimum Order Value In Rupees',
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: AppStyles.editTextBg,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          controller: orderValueController,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                              color:CustomColors.textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: 'Enter Minimum Order Value',
                            hintStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Default color
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColors.white, width: 2.0), // Focus color
                            ),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Discount In Rupees',
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: AppStyles.editTextBg,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                          controller: discountController,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                              color:CustomColors.textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: 'Enter Discount',
                            hintStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white), // Default color
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: CustomColors.white, width: 2.0), // Focus color
                            ),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    decoration: AppStyles.editTextBg,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'Select Coupon Expiry Date',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Obx(() => Text(
                            selectedDate.value == null ? "No date selected" : "Selected Date: ${AuthUtils.convertDate(selectedDate.toString())}",
                          ),
                          ),
                          SizedBox(height: 10),
                          PrimaryButton(
                            buttonClick: () => _selectDate(context),
                            buttonTxt: "Pick a Date",
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Obx(() => hostelViewModel.createCouponObserver.value.maybeWhen(
                      loading: () => const CustomProgressBar(),
                      orElse: () => PrimaryButton(
                          buttonTxt: 'Create',
                          buttonClick: () {
                            if(codeController.text.toString().trim().isEmpty){
                              Get.snackbar(
                                "Error",
                                "Code Should No Empty",
                                backgroundColor: CustomColors.primary,
                                colorText: CustomColors.white,
                                snackPosition: SnackPosition.BOTTOM,
                              );
                              return;
                            }
                            if((AuthUtils.parseToInt(discountController.text.trim()) ?? 0) == 0 || (AuthUtils.parseToInt(orderValueController.text.trim()) ?? 0) == 0){
                              Get.snackbar(
                                "Error",
                                (AuthUtils.parseToInt(orderValueController.text.trim()) ?? 0) == 0 ? "Order Value should not be zero" :"Discount should not be zero",
                                backgroundColor: CustomColors.primary,
                                colorText: CustomColors.white,
                                snackPosition: SnackPosition.BOTTOM,
                              );
                              return;
                            }
                            if(selectedDate.value == null) {
                              Get.snackbar(
                                "Error",
                                "Select Expiry Date",
                                backgroundColor: CustomColors.primary,
                                colorText: CustomColors.white,
                                snackPosition: SnackPosition.BOTTOM,
                              );
                              return;
                            }
                            hostelViewModel.createCoupon(CouponDataModel(code: codeController.text.trim(),expiryDate: selectedDate.value,orderValue:AuthUtils.parseToInt(orderValueController.text.trim()) ?? 0,discount:AuthUtils.parseToInt(orderValueController.text.trim()) ?? 0));
                            Get.back();
                          })),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }

  Future<void> _refreshData() async{
    hostelViewModel.fetchCoupons(const PaginationRequestModel(page: 1),true);
  }

  Future<void> _addData() async {
    final observer = hostelViewModel.fetchCouponsObserver;
    if(observer.value.isPaginationCompleted || observer.value.isLoading ) return;
    hostelViewModel.fetchCoupons(PaginationRequestModel(page: observer.value.page),false);
  }
}
