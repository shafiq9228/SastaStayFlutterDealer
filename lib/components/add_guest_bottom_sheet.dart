import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:sasta_stay_dealer/components/uploaded_view_component.dart';
import 'package:sasta_stay_dealer/components/uploading_view_component.dart';


import '../pages/file_picker_page.dart';
import '../response_model/bookings_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import '../view_models/booking_view_model.dart';
import 'custom_edit_text_component.dart';


class AddGuestBottomSheet extends StatefulWidget {
  final GuestDetailsModel? guestDetailsModel;
  const AddGuestBottomSheet({super.key, this.guestDetailsModel});

  @override
  State<AddGuestBottomSheet> createState() => _AddGuestBottomSheetState();
}

class _AddGuestBottomSheetState extends State<AddGuestBottomSheet> {
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController aadharNumberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  String? selectedGender = "Male";

  final authViewModel = Get.put(AuthViewModel());
  final bookingViewModel = Get.put(BookingViewModel());


  @override
  Widget build(BuildContext context) {


    return StatefulWrapper(
      onInit: (){
        if(widget.guestDetailsModel != null){
          nameController.text = widget.guestDetailsModel?.name ?? "";
          mobileController.text = "${widget.guestDetailsModel?.mobile ?? ""}";
          aadharNumberController.text = "${widget.guestDetailsModel?.aadharNumber ?? ""}";
          bookingViewModel.aadharImage.value = widget.guestDetailsModel?.aadharImage ?? "";
          dobController.text = widget.guestDetailsModel?.dob ?? "";
          setState(() {
            selectedGender = widget.guestDetailsModel?.gender ?? "Male";
          });
        }
        else{
          bookingViewModel.aadharImage.value = "";
        }
      },
      child: Container(
        decoration: BoxDecoration(color: CustomColors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom, // handle keyboard
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min, // makes sheet wrap content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text("Add Guest Details",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: CustomColors.textColor),)),
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.cancel,size: 30,color: CustomColors.primary,))
                  ],
                ),
                SizedBox(height: 10),
                CustomEditTextComponent(controller: nameController, title: "Enter You Name", hint: "Name"),
                CustomEditTextComponent(controller: mobileController, title: "Enter You Mobile Number", hint: "Mobile Number",keyboardType: TextInputType.phone,maxLength: 10),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: ['Male', 'Female', 'Other'].map((gender) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          decoration: AppStyles.categoryBg3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Radio<String>(
                                  value: gender,
                                  groupValue: selectedGender,
                                  activeColor: CustomColors.primary,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedGender = value;
                                    });
                                  },
                                ),
                                Text(
                                  gender,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColors.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Select Date of Birth",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.textColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now().subtract(Duration(days: 3650)), // 10 years back
                      firstDate: DateTime(1900), // min year
                      lastDate: DateTime.now(), // max year = today
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: ColorScheme.light(
                              primary: CustomColors.primary, // header background color
                              onPrimary: Colors.white, // header text color
                              onSurface: CustomColors.textColor, // body text color
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                foregroundColor: CustomColors.primary, // button text color
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );

                    if (pickedDate != null) {
                      setState(() {
                        dobController.text = "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                      });
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: AppStyles.editTextBg,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top:5),
                      child: IgnorePointer(
                        child: TextFormField(
                          controller: dobController,
                          style: TextStyle(
                            color: CustomColors.textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Select Date of Birth',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.calendar_month_outlined, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                CustomEditTextComponent(controller: aadharNumberController, title: "Enter You Aadhar Number", hint: "Aadhar Number",keyboardType: TextInputType.phone,maxLength: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10),
                  child: Text("Upload Aadhar Image",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                ),
                Obx(() => SizedBox(
                  child: bookingViewModel.aadharImage.value.isNotEmpty ?  UploadedViewComponent(fileType: "image", imageUrl: bookingViewModel.aadharImage.value, fileName: 'aadhar')  :
                  UploadingViewComponent(uploadingText: "Upload Image", onClick: (){
                    Get.to(() => const FilePickerPage(fileView: false,fileType: 'image', fileName: 'aadhar'));
                  }),
                ),
                ),
                const SizedBox(height: 10),
                PrimaryButton(buttonTxt: widget.guestDetailsModel == null ? "Add" : "Update", buttonClick: (){
                  try{
                    if(aadharNumberController.text.trim().length != 12) throw "Invalid Aadhar Number";
                    final request = GuestDetailsModel(name: nameController.text,mobile: int.tryParse(mobileController.text),aadharNumber:aadharNumberController.text,aadharImage:bookingViewModel.aadharImage.value,gender: selectedGender,dob:dobController.text);
                    final String? validatorResponse = AuthUtils.validateRequestFields(['name','mobile','aadharNumber','aadharImage','gender','dob'], request.toJson());
                    if(validatorResponse != null) throw validatorResponse;
                    if(widget.guestDetailsModel == null){
                      bookingViewModel.guestDetailsList.add(request);
                      bookingViewModel.guestDetailsList.refresh();
                    }else{
                      bookingViewModel.guestDetailsList.remove(widget.guestDetailsModel);
                      bookingViewModel.guestDetailsList.add(request);
                      bookingViewModel.guestDetailsList.refresh();
                    }
                    Get.back();
                  }
                  catch(error){
                    Get.snackbar("Error", error.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
                  }
                }),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
