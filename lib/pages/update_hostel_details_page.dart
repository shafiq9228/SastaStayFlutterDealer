import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sasta_stay_dealer/components/custom_edit_text_component.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/pages/amenities_page.dart';
import 'package:sasta_stay_dealer/pages/hostel_images_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/utils/auth_utils.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';

import 'package:get/get.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/custom_progress_bar.dart';
import '../components/uploaded_view_component.dart';
import '../components/uploading_view_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/preference_manager.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import 'file_picker_page.dart';
import 'location_picker_page.dart';
class UpdateHostelDetailsPage extends StatefulWidget {
  final HostelModel? hostelModel;
  const UpdateHostelDetailsPage({super.key, required this.hostelModel});

  @override
  State<UpdateHostelDetailsPage> createState() => _UpdateHostelDetailsPageState();
}

class _UpdateHostelDetailsPageState extends State<UpdateHostelDetailsPage> {

  final authViewModel = Get.put(AuthViewModel());
  final hostelViewModel = Get.put(HostelViewModel());

  final TextEditingController hostelNameController = TextEditingController();
  final TextEditingController aboutHostelController = TextEditingController();
  final TextEditingController hostelCommissionController = TextEditingController();
  Rx<String> selectedHostelType = "Boys".obs;


  final preferenceManager = Get.put(PreferenceManager());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () async {
        // await authViewModel.fetchCurrentLocation();
        hostelViewModel.fetchHostelDetailsObserver.value.whenOrNull(success:
        (response) {
          final primaryHostel = (response as FetchHostelDetailsResponseModel).data;

          authViewModel.hostelImage.value = primaryHostel?.hostelImage ?? "";
          authViewModel.hostelLicence.value = primaryHostel?.hostelLicence ?? "";
          hostelNameController.text = primaryHostel?.hostelName ?? "";
          aboutHostelController.text = primaryHostel?.aboutHostel ?? "";
          selectedHostelType.value = primaryHostel?.hostelType ?? "Boys";
          hostelCommissionController.text = "${primaryHostel?.commission ?? 0}";


          authViewModel.images.clear();
          authViewModel.amenityIds.clear();
          authViewModel.rules.clear();

          authViewModel.images.assignAll(primaryHostel?.images ?? []);
          authViewModel.amenityIds.assignAll(primaryHostel?.amenityIds ?? []);
          authViewModel.rules.assignAll(primaryHostel?.rules ?? []);

          authViewModel.locationDetails.value = primaryHostel?.location;
        });
      },
      onStart: (){

      },
      child: Scaffold(
          backgroundColor: CustomColors.white,body: SafeArea(
          top: true,
          child: Column(
            children: [
              const SecondaryHeadingComponent(buttonTxt: "Update Hostel Details"),
              Expanded(
                child: Obx(
                  () => Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15,vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Enter Your Hostel Details",style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:10),
                                child: Text("Hostel Image",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                              ),
                              SizedBox(
                                child: authViewModel.hostelImage.value.isNotEmpty ?
                                UploadedViewComponent(fileType: "image", imageUrl: authViewModel.hostelImage.value, fileName: 'hostelImage')  :
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
                                  Get.to(() => HostelImagesPage(edit:true, hostelModel:widget.hostelModel));
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
                                child: Text("Hostel Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: AppStyles.editTextBg,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: TextFormField(
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
                                    items: ['Boys','Girls','Co-living','Luxury'].map((gender) {
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
                                          _showBottomSheet(context);
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
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:10),
                                child: Text("Hostel Address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                child: Text("LandMark",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                    child: Text(authViewModel.locationDetails.value?.landMark ?? "Enter Land Mark",style:  const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),),
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 20),
                              // CustomEditTextComponent(controller: hostelCommissionController, title: "Hostel Commission (In Rupees)", hint: "0",keyboardType: TextInputType.phone,),
                              const SizedBox(height: 120),
                            ],
                          ),
                        ),
                      ),
                      IntrinsicHeight(
                        child: Container(
                          color: CustomColors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                            child:Obx(() => authViewModel.updateHostelDetailsResponseObserver.value.maybeWhen(
                                loading: () => const CustomProgressBar(),
                                orElse: () => PrimaryButton(buttonClick: (){
                                  try {
                                    final request = RegistrationRequestModel(hostelId:authViewModel.getPrimaryId(),hostelImage: authViewModel.hostelImage.value,hostelType: selectedHostelType.value,hostelName: hostelNameController.text,aboutHostel: aboutHostelController.text,location: authViewModel.locationDetails.value,images: authViewModel.images,rules: authViewModel.rules,amenities: authViewModel.amenityIds,commission: int.tryParse(hostelCommissionController.text) ?? 0);
                                    final String? validatorResponse = AuthUtils.validateRequestFields(['hostelId','hostelImage','hostelName','aboutHostel','location','amenities','rules','images'], request.toJson());
                                    if(validatorResponse != null) {
                                      Get.snackbar("Error", validatorResponse,backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                                       return;
                                    };
                                    final String? locationValidation = AuthUtils.validateRequestFields(['address1','address2','city','state','pinCode','latitude','longitude'], request.location!.toJson());
                                    if(locationValidation != null) {
                                      Get.to(() => LocationPickerPage());
                                      Get.snackbar("Error", locationValidation,backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                                      return;
                                    };
                                    authViewModel.updateHostelDetails(request);
                                  } catch (e, s) {
                                    print(s);
                                  }
                                },buttonTxt: "Confirm And Update",))
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
      )),
    );
  }

  void _showBottomSheet(BuildContext context) {
    final TextEditingController ruleController = TextEditingController();

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
                  const Text(
                    'Enter Rule',
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: ruleController,
                    maxLines: null, // Allows for multiline input
                    decoration: const InputDecoration(
                      labelText: 'Enter Rule To Add',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PrimaryButton(
                      buttonTxt: 'Add',
                      buttonClick: () {
                        final rulesList = authViewModel.rules.toList();
                        if(rulesList.any((rule) => rule  == ruleController.text) == true){
                          Get.snackbar("Error","Same Rule Already Exist",backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                          return;
                        }
                        rulesList.add(ruleController.text);
                        authViewModel.rules.value = rulesList;
                        authViewModel.rules.refresh();
                        Get.back();
                      }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}
