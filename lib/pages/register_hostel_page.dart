import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';


import '../components/custom_progress_bar.dart';
import '../components/primary_button.dart';
import '../components/progress_button.dart';
import '../components/uploaded_view_component.dart';
import '../components/uploading_view_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/preference_manager.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import 'amenities_page.dart';
import 'file_picker_page.dart';
import 'hostel_images_page.dart';
import 'location_picker_page.dart';

class RegisterHostelPage extends StatefulWidget {
  final bool? fromHostelListPage;
  const RegisterHostelPage({super.key, this.fromHostelListPage});

  @override
  State<RegisterHostelPage> createState() => _RegisterHostelPageState();
}

class _RegisterHostelPageState extends State<RegisterHostelPage> {
  final authViewModel = Get.put(AuthViewModel());

  final TextEditingController hostelNameController = TextEditingController();
  final TextEditingController aboutHostelController = TextEditingController();
  final TextEditingController gstInController = TextEditingController();
  var progress = 0.0.obs;
  Rx<String> rejectedReason = "".obs;
  Rx<bool> rejectedValuesAdded = false.obs;
  Rx<bool> rejected = false.obs;
  Rx<String> registerValue = "".obs;
  Rx<String> selectedHostelType = "Boys".obs;
  RxBool registerByMobile = true.obs;

  final page1Value = ["hostelType","hostelName","aboutHostel","gstIn","checkInTime","checkOutTime"];
  final page1LocationValue = ["address1","address2","city","state","pinCode","latitude","longitude"];
  final page2Value = ["hostelImage","hostelLicence","images"];
  final page3Value = ["rules","faq","amenities"];


  final preferenceManager = Get.put(PreferenceManager());
  // RxList<TaxModel> taxes = [TaxModel(name:"CGST",percentage:9.0),TaxModel(name:"SGST",percentage:9.0),TaxModel(name:"IGST",percentage:18.0),TaxModel(name:"CESS",percentage:0.0),TaxModel(name:"TDS",percentage:0.0)].obs;


  Rx<int> selectedPageIndex = 0.obs;

  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onBack();
        return false;
      },
      child: StatefulWrapper(
        onInit: () async {
          await authViewModel.fetchCurrentLocation();
        },
        onStart: (){
          calculateProgress();
          closeKeyboard(context);
        },
        child: Scaffold(
            backgroundColor: CustomColors.white,
            body: SafeArea(
            top: true,
            child: Obx(() => authViewModel.dealerStatusObserver.value.maybeWhen(
                loading: () => Center(child: SizedBox(width: 40,height: 40,child: CircularProgressIndicator(color: CustomColors.primary,),),),
                success: (data){
                  final responseUserData = (data as FormHelperDataResponseModel).data;
                  rejected.value =  responseUserData?.primaryHostel?.approvalStatus == "rejected";
                  final rejectedFields = responseUserData?.primaryHostel?.rejectedFields;
                  rejectedReason.value = responseUserData?.primaryHostel?.reason ?? "";
                  final primaryHostel = responseUserData?.primaryHostel;
                  if(rejected.value && rejectedValuesAdded.value == false){
                      authViewModel.hostelImage.value = rejectedFields?.contains("hostelImage") == true ? "" : primaryHostel?.hostelImage ?? "";
                      authViewModel.hostelGstDocument.value = rejectedFields?.contains("hostelImage") == true ? "" : primaryHostel?.hostelImage ?? "";
                      authViewModel.images.value = rejectedFields?.contains("images") == true ? [] : primaryHostel?.images ?? [];
                      authViewModel.rules.value = rejectedFields?.contains("rules") == true ? [] : primaryHostel?.rules ?? [];
                      authViewModel.faqs.value = rejectedFields?.contains("faq") == true ? [] : primaryHostel?.faq ?? [];
                      authViewModel.amenityIds.value = rejectedFields?.contains("amenities") == true ? [] : primaryHostel?.amenityIds ?? [];
                      authViewModel.hostelLicence.value = rejectedFields?.contains("hostelLicence") == true ? "" : primaryHostel?.hostelLicence ?? "";
                      hostelNameController.text = rejectedFields?.contains("hostelName") == true ? "" : primaryHostel?.hostelName ?? "";
                      aboutHostelController.text = rejectedFields?.contains("aboutHostel") == true ? "" : primaryHostel?.aboutHostel ?? "";
                      gstInController.text =  rejectedFields?.contains("gstIn") == true ? "" : primaryHostel?.gstIn ?? "";
                      authViewModel.locationDetails.value = (rejectedFields?.contains("location") == true ? null : primaryHostel?.location);
                      authViewModel.checkInTime.value = (rejectedFields?.contains("checkInTime") == true) ? "" : primaryHostel?.checkInTime ?? "";
                      authViewModel.checkOutTime.value = (rejectedFields?.contains("checkOutTime") == true) ? "" : primaryHostel?.checkOutTime ?? "";
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        navigateToIncompletePage();
                      });
                      rejectedValuesAdded.value = true;
                  }
                  calculateProgress();
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      widget.fromHostelListPage == true ? SecondaryHeadingComponent(buttonClick: onBack,buttonTxt: "List New Hostel") :
                      Container(color: CustomColors.white,child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
                          child: Row(
                            children: [
                              GestureDetector(child: const SizedBox(width:20,height:20)),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text("List Hostel",style: TextStyle(color: CustomColors.primary,fontWeight: FontWeight.w600,fontSize: 22),),
                              ),
                            ],
                          ),
                        ),
                        Container(width: double.infinity,height: 1,color: CustomColors.primary,),
                      ])),
                      Expanded(
                        child: PageView(
                          controller: pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            scrollWidget(page1()),
                            scrollWidget(page2(responseUserData)),
                            scrollWidget(page3())
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Note : ',
                                style: TextStyle(color: CustomColors.textColor, fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: 'Please fill details correctly — once approved by the admin, values cannot be changed.',
                                style: TextStyle(color: CustomColors.darkGray, fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Obx(() => authViewModel.registerHostelResponseObserver.value.maybeWhen(
                            loading: () => const CustomProgressBar(),
                            orElse: () => InkWell(
                                onTap: () {
                                  final request = RegistrationRequestModel(
                                    hostelId: rejected.value == true ? responseUserData?.primaryHostel?.id : "",

                                    hostelType: selectedHostelType.value,
                                    hostelName: hostelNameController.text,
                                    aboutHostel: aboutHostelController.text,
                                    gstIn: gstInController.text,
                                    checkInTime: authViewModel.checkInTime.value,
                                    checkOutTime: authViewModel.checkOutTime.value,

                                    hostelImage: authViewModel.hostelImage.value,
                                    images: authViewModel.images,
                                    hostelLicence: authViewModel.hostelLicence.value,
                                    hostelGstDocument:authViewModel.hostelGstDocument.value,

                                    rules: authViewModel.rules,
                                    faq: authViewModel.faqs,

                                    amenities: authViewModel.amenityIds,

                                    location: authViewModel.locationDetails.value,
                                  );


                                  final currentPage = pageController.page?.round() ?? 0;

                                  if ((rejectedValuesAdded.value == true) ? (progress.value >= 100.0) : (progress.value >= 100.0 && currentPage == 2)) {
                                    authViewModel.registerHostel(request);
                                  }
                                  else {
                                   try{
                                     final fieldValues = [page1Value,page2Value,page3Value];
                                     final String? validatorResponse = AuthUtils.validateRequestFields(fieldValues[currentPage],request.toJson());
                                     if(validatorResponse != null) throw validatorResponse;
                                     if(currentPage == 0){
                                       final String? locationValidatorResponse = AuthUtils.validateRequestFields(page1LocationValue,request.location!.toJson());
                                       if(locationValidatorResponse != null) throw locationValidatorResponse;
                                     }
                                     pageController.jumpToPage(currentPage + 1);
                                     selectedPageIndex.value = currentPage + 1;
                                   }
                                   catch(error){
                                     Get.snackbar('Missing Details', error.toString(),snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.redAccent,colorText: Colors.white,);
                                   }
                                  }
                                },
                                child: ProgressButton(
                                  progress: double.parse(progress.value.toString()),
                                  text: "Submit",
                                )))
                        ),
                      ),
                      const SizedBox(height: 10),
                      Obx( () => Visibility(visible: rejectedValuesAdded.value == true, child: Text(rejectedReason.value,style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red) ))),
                      const SizedBox(height: 20),
                    ],
                  );
                },
                error: (err) => Center(child: Text(err.toString(),style: AppStyles.textError)),
                orElse: () => Center(child: SizedBox(width: 40,height: 40,child: CircularProgressIndicator(color: CustomColors.primary,),)))
                )
            )),
      ),
    );
  }

  void _showBottomSheet(BuildContext context,bool rule) {
    final TextEditingController edt1 = TextEditingController();
    final TextEditingController edt2 = TextEditingController();

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
                  Text(
                    'Enter ${rule ? "Rule" : "Faq"}',
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: edt1,
                    maxLines: null, // Allows for multiline input
                    decoration:  InputDecoration(
                      labelText: 'Enter ${rule ? "Rule To Add" : "Question"}',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  if(rule == false) TextField(
                    controller: edt2,
                    maxLines: null, // Allows for multiline input
                    decoration:  const InputDecoration(
                      labelText: 'Enter Answer',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PrimaryButton(
                      buttonTxt: 'Add',
                      buttonClick: () {
                        try{
                          final rulesList = authViewModel.rules.toList();
                          final faqList = authViewModel.faqs.toList();

                          if(rulesList.any((rule) => rule  == edt1.text) == true && rule) throw "Same Rule Already Exist";

                          if(rule){
                            if(edt1.text.trim().isEmpty) throw "Rule Should Not Be Empty";
                            rulesList.add(edt1.text);
                            authViewModel.rules.value = rulesList;
                            authViewModel.rules.refresh();
                          }
                          else{
                            if(edt1.text.trim().isEmpty) throw "Question Should Not Be Empty";
                            if(edt2.text.trim().isEmpty) throw "Answer Should Not Be Empty";
                            faqList.add(FaqModel(question: edt1.text,answer: edt2.text));
                            authViewModel.faqs.value = faqList;
                            authViewModel.faqs.refresh();
                          }
                          calculateProgress();
                          Get.back();
                        }
                        catch(error){
                          Get.snackbar("Error",error.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                        }
                      }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget scrollWidget(Widget view) {
    final controller = ScrollController(); // 👈 create controller

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scrollbar(
        controller: controller, // 👈 attach same controller
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: controller, // 👈 same controller here
          primary: false, // 👈 prevents conflict with PrimaryScrollController
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please Fill Details Form",
                  style: TextStyle(
                    color: CustomColors.gray,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Enter Your Hostel Details",
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                view,
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget page1(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
                onChanged: (text){
                  calculateProgress();
                },
                controller: hostelNameController,
                style: TextStyle(
                    color:CustomColors.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Enter Your Hostel Name',
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Type",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Obx(() => DropdownButtonFormField<String>(
              value: selectedHostelType.value,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              icon: const Icon(Icons.keyboard_arrow_down),
              style: TextStyle(
                color: CustomColors.textColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              hint: Text(
                'Select Hostel Type',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              items: ["Boys","Girls","Co-living","Luxury"].map((gender) {
                return DropdownMenuItem(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (value) {
                selectedHostelType.value = value ?? "";
              },
            ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("About Your Hostel",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          height: 150,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
                onChanged: (text){
                  calculateProgress();
                },
                controller: aboutHostelController,
                style: TextStyle(
                    color:CustomColors.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'About Your Hostel',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        GestureDetector(
          onTap: (){
            Get.to(() =>  LocationPickerPage());
          },
          child: Container(
            width: double.infinity,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Text(authViewModel.locationDetails.value?.address1 ?? "Enter Address",style:  const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("City And State",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        GestureDetector(
          onTap: (){
            Get.to(() => const LocationPickerPage());
          },
          child: Container(
            width: double.infinity,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Text("${authViewModel.locationDetails.value?.city ?? ""},${authViewModel.locationDetails.value?.state ?? ""}",style:  const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("PinCode",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        GestureDetector(
          onTap: (){
            Get.to(() => LocationPickerPage());
          },
          child: Container(
            width: double.infinity,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Text(authViewModel.locationDetails.value?.pinCode.toString() ?? "Enter PinCode",style:  const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("LandMark (optional)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        GestureDetector(
          onTap: (){
            Get.to(() => const LocationPickerPage());
          },
          child: Container(
            width: double.infinity,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Text(authViewModel.locationDetails.value?.landMark ?? "Enter Land Mark",style:  const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Hostel Timings",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: CustomColors.textColor,
            ),
          ),
        ),
        InkWell(
          onTap: () async {
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (time != null) {
              authViewModel.checkInTime.value = time.format(context);
            }
            calculateProgress();
          },
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.login, size: 20, color: CustomColors.textColor),
                      const SizedBox(width: 8),
                      Text(
                        "Check-In Time",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: CustomColors.textColor,
                        ),
                      ),
                    ],
                  ),
                  Obx(() => Text(
                    authViewModel.checkInTime.value.isEmpty
                        ? "--:--"
                        : authViewModel.checkInTime.value,
                    style: TextStyle(
                      color: CustomColors.darkGray,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () async {
            final time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (time != null) {
              authViewModel.checkOutTime.value = time.format(context);
            }
            calculateProgress();
          },
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.logout, size: 20, color: CustomColors.textColor),
                      const SizedBox(width: 8),
                      Text(
                        "Check-Out Time",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: CustomColors.textColor,
                        ),
                      ),
                    ],
                  ),
                  Obx(() => Text(
                    authViewModel.checkOutTime.value.isEmpty
                        ? "--:--"
                        : authViewModel.checkOutTime.value,
                    style: TextStyle(
                      color: CustomColors.darkGray,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("GSTIN",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
                onChanged: (text){
                  calculateProgress();
                },
                maxLength: 15,
                controller: gstInController,
                style: TextStyle(
                    color:CustomColors.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'GSTIN',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),
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
      ],
    );
  }

  Widget page2(HelperDataModel? responseUserData){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Image",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        SizedBox(
          child: authViewModel.hostelImage.value.isNotEmpty ?  UploadedViewComponent(fileType: "image", imageUrl: authViewModel.hostelImage.value, fileName: 'hostelImage')  :
          UploadingViewComponent(uploadingText: "Upload Image", onClick: (){
            Get.to(() => const FilePickerPage(fileView: false,fileType: 'image', fileName: 'hostelImage'));
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Edit Hostel Images",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        InkWell(
          onTap: (){
            Get.to(() => HostelImagesPage(edit:true, hostelModel:responseUserData?.primaryHostel));
          },
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.edit,size: 20,color: CustomColors.textColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:  Text("Edit Hostel Images (${authViewModel.images.length ?? 0})",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.textColor),),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Licence",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        SizedBox(
          child: authViewModel.hostelLicence.value.isNotEmpty ?  UploadedViewComponent(fileType: "image", imageUrl: authViewModel.hostelLicence.value, fileName: 'hostelLicence')  :
          UploadingViewComponent(uploadingText: "Upload Licence Copy", onClick: (){
            Get.to(() => const FilePickerPage(fileView: false,fileType: 'image', fileName: 'hostelLicence'));
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Gst Document",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        SizedBox(
          child: authViewModel.hostelGstDocument.value.isNotEmpty ?  UploadedViewComponent(fileType: "image", imageUrl: authViewModel.hostelGstDocument.value, fileName: 'gst')  :
          UploadingViewComponent(uploadingText: "Upload Gst Document", onClick: (){
            Get.to(() => const FilePickerPage(fileView: false,fileType: 'image', fileName: 'gst'));
          }),
        ),
      ],
    );
  }

  Widget page3(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Rules",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() =>
                    SizedBox(
                      width: 200,
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: authViewModel.rules.map((rule) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: CustomColors.gray.withOpacity(0.2)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Text(rule,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: CustomColors.textColor))),
                                    GestureDetector(
                                        onTap:(){
                                          final rulesList = authViewModel.rules.toList();
                                          rulesList.remove(rule);
                                          authViewModel.rules.value = rulesList;
                                          authViewModel.rules.refresh();
                                          calculateProgress();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.cancel,size: 20,color: CustomColors.textColor),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                ),
                GestureDetector(
                  onTap:(){
                    _showBottomSheet(context,true);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: CustomColors.primary),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Add",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.white)),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Hostel Faq's",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        Container(
          width: double.infinity,
          decoration: AppStyles.editTextBg,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() =>
                    SizedBox(
                      width: 200,
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: authViewModel.faqs.map((faq) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: CustomColors.gray.withOpacity(0.2)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${faq.question ?? ""}?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: CustomColors.textColor)),
                                        Text(faq.answer ?? "",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                                      ],
                                    )),
                                    GestureDetector(
                                        onTap:(){
                                          final faqList = authViewModel.faqs.toList();
                                          faqList.remove(faq);
                                          authViewModel.faqs.value = faqList;
                                          authViewModel.faqs.refresh();
                                          calculateProgress();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.cancel,size: 20,color: CustomColors.textColor),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    )
                ),
                GestureDetector(
                  onTap:(){
                    _showBottomSheet(context,false);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: CustomColors.primary),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Add",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.white)),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Text("Edit Amenities",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
        ),
        InkWell(
          onTap: (){
            Get.to(() => const AmenitiesPage(edit:true, hostelId: ''));
          },
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: AppStyles.editTextBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.edit,size: 20,color: CustomColors.textColor),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:  Text("Edit Amenities (${authViewModel.amenityIds.length ?? 0})",style: TextStyle(fontWeight: FontWeight.w700,color: CustomColors.textColor),),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }



  void navigateToIncompletePage() {

    final location = authViewModel.locationDetails.value;
    bool isLocationComplete = location?.address1?.isNotEmpty == true &&
        location?.city?.isNotEmpty == true &&
        location?.state?.isNotEmpty == true &&
        location?.pinCode != null &&
        location?.latitude != null &&
        location?.longitude != null;

    if (hostelNameController.text.isEmpty || aboutHostelController.text.isEmpty || authViewModel.checkInTime.value.isEmpty || authViewModel.checkOutTime.value.isEmpty || gstInController.text.isEmpty || !isLocationComplete) {
      pageController.jumpToPage(0);
      selectedPageIndex.value = 0;
      print("Page : 0");
      return;
    }


    // Page 2 fields
    if (authViewModel.hostelImage.value.isEmpty || authViewModel.hostelGstDocument.value.isEmpty || authViewModel.images.isEmpty || authViewModel.hostelLicence.value.isEmpty) {
      pageController.jumpToPage(1);
      selectedPageIndex.value = 1;
      print("Page : 1");
      return;
    }

    // Page 3 fields
    if (authViewModel.rules.isEmpty || authViewModel.faqs.isEmpty || authViewModel.amenityIds.isEmpty) {
      pageController.jumpToPage(2);
      selectedPageIndex.value = 2;
      print("Page : 2");
      return;
    }


  }

  void closeKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }


  void onBack(){
    if(rejectedValuesAdded.value == true) {
      Get.back();
      return;
    }
    else{
      final currentPage = pageController.page?.round() ?? 0;
      if(currentPage == 0){
        Get.back();
      }
      else{
        pageController.jumpToPage(currentPage - 1);
        selectedPageIndex.value = currentPage - 1;
      }
    }
  }

  // void calculateProgress() {
  //   int filledFields = 0;
  //   int totalFields = 12; // Total number of field groups
  //
  //   // Page 1 fields (5 field groups)
  //   if (hostelNameController.text.isNotEmpty) filledFields++;
  //   if (aboutHostelController.text.isNotEmpty) filledFields++;
  //   if (authViewModel.checkInTime.value.isNotEmpty) filledFields++;
  //   if (authViewModel.checkOutTime.value.isNotEmpty) filledFields++;
  //   if (gstInController.text.isNotEmpty) filledFields++;
  //
  //   // Page 2 fields (3 field groups)
  //   if (authViewModel.hostelImage.value.isNotEmpty) filledFields++;
  //   if (authViewModel.images.isNotEmpty) filledFields++;
  //   if (authViewModel.hostelLicence.value.isNotEmpty) filledFields++;
  //
  //   // Page 3 fields (2 field groups)
  //   if (authViewModel.rules.isNotEmpty) filledFields++;
  //   if (authViewModel.faqs.isNotEmpty) filledFields++;
  //
  //   // Page 4 fields (1 field group)
  //   if (authViewModel.amenityIds.isNotEmpty) filledFields++;
  //
  //   // Page 5 fields (location - 1 field group, but all sub-fields must be filled)
  //   final location = authViewModel.locationDetails.value;
  //   bool isLocationComplete = location?.address1?.isNotEmpty == true &&
  //       location?.city?.isNotEmpty == true &&
  //       location?.state?.isNotEmpty == true &&
  //       location?.pinCode != null &&
  //       location?.landMark?.isNotEmpty == true &&
  //       location?.latitude != null &&
  //       location?.longitude != null;
  //
  //   if (isLocationComplete) filledFields++;
  //
  //   progress.value = (filledFields / totalFields * 100);
  // }


  void calculateProgress() {
    int filledFields = 0;
    int totalFields = 13;

    if(selectedPageIndex.value == 0){
      totalFields = 6;
      if (hostelNameController.text.isNotEmpty) filledFields++;
      if (aboutHostelController.text.isNotEmpty) filledFields++;
      if (authViewModel.checkInTime.value.isNotEmpty) filledFields++;
      if (authViewModel.checkOutTime.value.isNotEmpty) filledFields++;
      if (gstInController.text.isNotEmpty) filledFields++;

      final location = authViewModel.locationDetails.value;
      bool isLocationComplete = location?.address1?.isNotEmpty == true &&
          location?.city?.isNotEmpty == true &&
          location?.state?.isNotEmpty == true &&
          location?.pinCode != null &&
          location?.latitude != null &&
          location?.longitude != null;

      if (isLocationComplete) filledFields++;
    }
    else if(selectedPageIndex.value == 1){
      totalFields = 4;
      if (authViewModel.hostelImage.value.isNotEmpty) filledFields++;
      if (authViewModel.images.isNotEmpty) filledFields++;
      if (authViewModel.hostelLicence.value.isNotEmpty) filledFields++;
      if (authViewModel.hostelGstDocument.value.isNotEmpty) filledFields++;
    }
    else if(selectedPageIndex.value == 2){
      totalFields = 3;
      if (authViewModel.rules.isNotEmpty) filledFields++;
      if (authViewModel.faqs.isNotEmpty) filledFields++;
      if (authViewModel.amenityIds.isNotEmpty) filledFields++;
    }
    else{
      totalFields = 13;
      // Page 1 fields (5 field groups)
      if (hostelNameController.text.isNotEmpty) filledFields++;
      if (aboutHostelController.text.isNotEmpty) filledFields++;
      if (authViewModel.checkInTime.value.isNotEmpty) filledFields++;
      if (authViewModel.checkOutTime.value.isNotEmpty) filledFields++;
      if (gstInController.text.isNotEmpty) filledFields++;

      // Page 2 fields (3 field groups)
      if (authViewModel.hostelImage.value.isNotEmpty) filledFields++;
      if (authViewModel.images.isNotEmpty) filledFields++;
      if (authViewModel.hostelLicence.value.isNotEmpty) filledFields++;
      if(authViewModel.hostelGstDocument.value.isNotEmpty)  filledFields++;

      // Page 3 fields (2 field groups)
      if (authViewModel.rules.isNotEmpty) filledFields++;
      if (authViewModel.faqs.isNotEmpty) filledFields++;

      // Page 4 fields (1 field group)
      if (authViewModel.amenityIds.isNotEmpty) filledFields++;

      // Page 5 fields (location - 1 field group, but all sub-fields must be filled)
      final location = authViewModel.locationDetails.value;
      bool isLocationComplete = location?.address1?.isNotEmpty == true &&
          location?.city?.isNotEmpty == true &&
          location?.state?.isNotEmpty == true &&
          location?.pinCode != null &&
          location?.latitude != null &&
          location?.longitude != null;

      if (isLocationComplete) filledFields++;
    }

    progress.value = (filledFields / totalFields * 100);
  }


}
