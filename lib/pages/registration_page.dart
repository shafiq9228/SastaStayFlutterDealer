import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_progress_bar.dart';
import '../components/primary_button.dart';
import '../components/progress_button.dart';
import '../components/secondary_heading_component.dart';
import '../request_models/auth_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/preference_manager.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';

class RegistrationPage extends StatefulWidget {
  final DealerModel? dealer;
  const RegistrationPage({super.key,this.dealer});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final authViewModel = Get.put(AuthViewModel());
  final preferenceManager = Get.put(PreferenceManager());
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  RxBool registerByMobile = true.obs;

  String? selectedGender;


  @override
  Widget build(BuildContext context) {
    // final addressViewModel = Get.put(AddressViewModel());


    return StatefulWrapper(
      onInit: () async {
        if(widget.dealer == null){
          final value = await preferenceManager.getValue("registerValue") ?? "";
          final mobileNumberRegex = RegExp(r'^\d{10}$');
          if(mobileNumberRegex.hasMatch(value)){
            mobileController.text = value ?? "";
            registerByMobile.value = true;
          }
          else{
            emailIdController.text = value ?? "";
            registerByMobile.value = false;
          }
        }
        else{
          mobileController.text = (widget.dealer?.mobile ?? 0).toString();
          emailIdController.text = widget.dealer?.email ?? "";
          nameController.text = widget.dealer?.name ?? "";
        }
      },
      child: Scaffold(
          backgroundColor: CustomColors.white,
          body:SafeArea(top:true,child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.dealer != null ? SecondaryHeadingComponent(buttonTxt: "VERIFY DETAILS",buttonClick:(){
                Get.close(1);
              }) : Container(
                  color: CustomColors.white,child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(width:200,child: Text("REGISTER",textAlign: TextAlign.start,style: TextStyle(color: CustomColors.primary,fontWeight: FontWeight.w600,fontSize: 22),)),
                ),
                Container(width: double.infinity,height: 1,color: CustomColors.primary,),
              ])),
              const SizedBox(height:30),
              Expanded(child: SingleChildScrollView(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10),
                      child: Text("Enter Your Mobile Number",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: AppStyles.editTextBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Obx(() => TextFormField(
                            enabled: registerByMobile.value == false && widget.dealer == null,
                            maxLength: 10,
                            keyboardType: TextInputType.phone,
                            controller: mobileController,
                            style: TextStyle(
                                color:CustomColors.textColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Enter Your Mobile Number',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10),
                      child: Text("Enter Your Email Id",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: AppStyles.editTextBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Obx(() =>
                            TextFormField(
                                enabled: registerByMobile.value == true && widget.dealer == null,
                                controller: emailIdController,
                                style: TextStyle(
                                    color:CustomColors.textColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                ),
                                decoration: InputDecoration(
                                  counterText: '',
                                  hintText: 'Enter Your Email Id',
                                  hintStyle: const TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10),
                      child: Text("Enter Your Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: AppStyles.editTextBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                            maxLength: 15,
                            controller: nameController,
                            style: TextStyle(
                                color:CustomColors.textColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Enter Your Name',
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
                      child: Text("Enter Your Age",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: AppStyles.editTextBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                            maxLength: 3,
                            keyboardType: TextInputType.phone,
                            controller: ageController,
                            style: TextStyle(
                                color:CustomColors.textColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Enter Your Age',
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
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Select Your Gender",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: CustomColors.textColor,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: AppStyles.editTextBg,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButtonFormField<String>(
                          value: selectedGender,
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
                            'Select Your Gender',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          items: ['Male', 'Female', 'Other'].map((gender) {
                            return DropdownMenuItem(
                              value: gender,
                              child: Text(gender),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(widget.dealer != null ? "Email And Mobile Can\'t Be Edited" : "${registerByMobile.value == true ? "Mobile" : "Email"} Can\'t Be Edited",style: TextStyle(fontWeight: FontWeight.w400,color: CustomColors.secondary,fontSize: 12),),
                    const SizedBox(height: 20),
                    Obx(() => authViewModel.registerDealerResponseObserver.value.maybeWhen(
                        loading: () => const CustomProgressBar(),
                        orElse: () => PrimaryButton(buttonTxt: "CONFIRM", buttonClick: () {
                          if(selectedGender == "Other"){
                            Get.snackbar("Error","Please Select Gender",backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                            return;
                          }
                          authViewModel.registerUser(RegistrationRequestModel(mobile: mobileController.text,email: emailIdController.text,name: nameController.text));
                        },))
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),))
            ],
          ),)),
    );
  }

}
