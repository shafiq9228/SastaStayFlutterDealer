import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';

import 'package:get/get.dart';

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
  const UpdateHostelDetailsPage({super.key});

  @override
  State<UpdateHostelDetailsPage> createState() => _UpdateHostelDetailsPageState();
}

class _UpdateHostelDetailsPageState extends State<UpdateHostelDetailsPage> {

  final authViewModel = Get.put(AuthViewModel());

  final TextEditingController hostelNameController = TextEditingController();
  final TextEditingController aboutHostelController = TextEditingController();
  var progress = 0.0.obs;
  Rx<String> rejectedReason = "".obs;
  Rx<bool> rejectedValuesAdded = false.obs;
  Rx<bool> rejected = false.obs;
  Rx<String> registerValue = "".obs;
  Rx<String> selectedHostelType = "Boys".obs;


  final preferenceManager = Get.put(PreferenceManager());

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () async {
        await authViewModel.fetchCurrentLocation();
      },
      onStart: (){

      },
      child: Scaffold(backgroundColor: CustomColors.secondaryWhite,body: SafeArea(
          top: true,
          child: Obx(() => authViewModel.dealerStatusObserver.value.maybeWhen(
              loading: () => Center(child: SizedBox(width: 40,height: 40,child: CircularProgressIndicator(color: CustomColors.primary,),),),
              success: (data){
                final responseUserData = (data as FormHelperDataResponseModel).data;
                final primaryHostel = responseUserData?.primaryHostel;

                authViewModel.hostelImage.value = primaryHostel?.hostelImage ?? "";
                authViewModel.hostelLicence.value = primaryHostel?.hostelLicence ?? "";
                hostelNameController.text = primaryHostel?.hostelName ?? "";
                aboutHostelController.text = primaryHostel?.aboutHostel ?? "";
                selectedHostelType.value = primaryHostel?.hostelType ?? "Boys";

                authViewModel.images.clear();
                authViewModel.amenities.clear();
                authViewModel.rules.clear();

                authViewModel.images.assignAll(primaryHostel?.images ?? []);
                authViewModel.amenities.assignAll(primaryHostel?.amenities ?? []);
                authViewModel.rules.assignAll(primaryHostel?.rules ?? []);

                authViewModel.locationDetails.value = primaryHostel?.location;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(color: CustomColors.white,child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
                        child: Row(
                          children: [
                            GestureDetector(child: SizedBox(width:20,height:20)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text("Registration",style: TextStyle(color: CustomColors.primary,fontWeight: FontWeight.w600,fontSize: 22),),
                            ),
                          ],
                        ),
                      ),
                      Container(width: double.infinity,height: 1,color: CustomColors.primary,),
                    ])),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      child: Text("Please Fill Below Details Form",style: TextStyle(color: CustomColors.gray,fontWeight: FontWeight.w600,fontSize: 18),),
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Enter Your Hostel Details",style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 24),),
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
                                        items: ['Boys','Girls','Couple'].map((gender) {
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
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 10),
                                    Obx(() => authViewModel.registerHostelResponseObserver.value.maybeWhen(
                                        loading: () => const CustomProgressBar(),
                                        orElse: () => PrimaryButton(buttonClick: (){
                                          authViewModel.registerHostel(RegistrationRequestModel(hostelId:responseUserData?.primaryHostel?.id,hostelImage: authViewModel.hostelImage.value,hostelLicence: authViewModel.hostelLicence.value,hostelType: selectedHostelType.value,hostelName: hostelNameController.text,aboutHostel: aboutHostelController.text,location: authViewModel.locationDetails.value,images: authViewModel.images,rules: authViewModel.rules,amenities: authViewModel.amenities.value.map((data) => data.id ?? "").toList(),));
                                        },buttonTxt: "Submit",))
                                    ),
                                    const SizedBox(height: 10),
                                    Visibility(visible: rejected.value, child: Text(rejectedReason.value,style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red) ))
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
              error: (err) => Center(child: Text(err.toString(),style: AppStyles.textError)),
              orElse: () => Center(child: SizedBox(width: 40,height: 40,child: CircularProgressIndicator(color: CustomColors.primary,),)))
          )
      )),
    );
  }
}
