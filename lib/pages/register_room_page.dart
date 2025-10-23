import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';

import '../components/custom_progress_bar.dart';
import '../components/progress_button.dart';
import '../components/secondary_heading_component.dart';
import '../components/uploaded_view_component.dart';
import '../components/uploading_view_component.dart';
import '../request_models/auth_request_model.dart';
import '../request_models/hostel_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/preference_manager.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import 'file_picker_page.dart';


class RegisterRoomPage extends StatefulWidget {
  final RoomModel? roomModel;
  const RegisterRoomPage({super.key, this.roomModel});

  @override
  State<RegisterRoomPage> createState() => _RegisterRoomPageState();
}

class _RegisterRoomPageState extends State<RegisterRoomPage> {
  final hostelViewModel = Get.put(HostelViewModel());

  final authViewModel = Get.put(AuthViewModel());
  final TextEditingController roomNoController = TextEditingController();
  final TextEditingController floorController = TextEditingController();
  final TextEditingController capacityCountController = TextEditingController();
  final TextEditingController dailyPriceController = TextEditingController();
  final TextEditingController monthlyPriceController = TextEditingController();

  var progress = 0.0.obs;
  Rx<String> selectedRoomType = "Select Type".obs;

  final preferenceManager = Get.put(PreferenceManager());
  // RxList<TaxModel> taxes = [TaxModel(name:"CGST",percentage:9.0),TaxModel(name:"SGST",percentage:9.0),TaxModel(name:"IGST",percentage:18.0),TaxModel(name:"CESS",percentage:0.0),TaxModel(name:"TDS",percentage:0.0)].obs;


  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () async {
        if(widget.roomModel != null){
          hostelViewModel.roomImage.value = widget.roomModel?.image ?? "";
          selectedRoomType.value = widget.roomModel?.roomType ?? "Select Type";
          roomNoController.text = widget.roomModel?.roomNo ?? "";
          floorController.text = "${widget.roomModel?.floor ?? 0}";
          capacityCountController.text = "${widget.roomModel?.capacityCount ?? 0}";
          dailyPriceController.text = "${widget.roomModel?.rent?.daily ?? 0}";
          monthlyPriceController.text = "${widget.roomModel?.rent?.monthly ?? 0}";
        }
        else{
          hostelViewModel.roomImage.value = "";
          selectedRoomType.value = "Select Type";
        }
      },
      onStart: (){
        calculateProgress();
      },
      child: Scaffold(
          backgroundColor: CustomColors.white,
          body: SafeArea(
              top: true,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SecondaryHeadingComponent(buttonTxt: widget.roomModel == null ? "List Room" : "Edit Room Details"),
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
                            Text("Enter Your Room Details",style: TextStyle(color: CustomColors.textColor,fontWeight: FontWeight.w600,fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:10),
                              child: Text("Room Image",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                            ),
                            Obx(() => SizedBox(
                                child: hostelViewModel.roomImage.value.isNotEmpty ?  UploadedViewComponent(fileType: "image", imageUrl: hostelViewModel.roomImage.value, fileName: 'roomImage')  :
                                UploadingViewComponent(uploadingText: "Upload Image", onClick: (){
                                  Get.to(() => const FilePickerPage(fileView: false,fileType: 'image', fileName: 'roomImage'));
                                }),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:10),
                              child: Text("Room Number",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                    controller: roomNoController,
                                    style: TextStyle(
                                        color:CustomColors.textColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                    ),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'Enter Room Number',
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
                              child: Text("Floor",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                    controller: floorController,
                                    style: TextStyle(
                                        color:CustomColors.textColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                    ),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'Enter Room Floor Number',
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
                            Text("0(Ground Floor),1(1st Floor) etc..",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: CustomColors.textColor)),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:10),
                              child: Text("Room Type",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: AppStyles.editTextBg,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Obx(() => DropdownButtonFormField<String>(
                                  value: selectedRoomType.value,
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
                                  items: [
                                    const DropdownMenuItem(
                                      value: "Select Type",
                                      child: Text("Select Type"),
                                    ),
                                    ...hostelViewModel.roomTypeDropList.map((roomType) {
                                      return DropdownMenuItem(
                                        value: roomType,
                                        child: Text(roomType),
                                      );
                                    }).toList(),
                                  ],
                                  onChanged: (value) {
                                    selectedRoomType.value = value ?? "";
                                  },
                                ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:10),
                              child: Text("Room Guests Capacity Count",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                    controller: capacityCountController,
                                    keyboardType: TextInputType.phone,
                                    style: TextStyle(
                                        color:CustomColors.textColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                    ),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'Enter Guest Capacity',
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
                              child: Text("Daily Rent Charges",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                    controller: dailyPriceController,
                                    keyboardType: TextInputType.phone,
                                    style: TextStyle(
                                        color:CustomColors.textColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                    ),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'Enter Daily Rent Charges',
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
                              child: Text("Monthly Rent Charges",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
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
                                    controller: monthlyPriceController,
                                    keyboardType: TextInputType.phone,
                                    style: TextStyle(
                                        color:CustomColors.textColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16
                                    ),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      hintText: 'Enter Monthly Rent Charges',
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
                            SizedBox(height: 20),
                            Obx(() => hostelViewModel.registerRoomObserver.value.maybeWhen(
                                loading: () => const CustomProgressBar(),
                                orElse: () => InkWell(
                                    onTap: () => hostelViewModel.registerRoomDetails(ListRoomRequestModel(roomId: widget.roomModel?.id ?? "",hostelId: authViewModel.getPrimaryId(), image: hostelViewModel.roomImage.value, roomNo: roomNoController.text, floor: int.tryParse(floorController.text), specialAmenities: hostelViewModel.roomSpecialAmenities.value, capacityCount: int.tryParse(capacityCountController.text), roomType: selectedRoomType.value, rent: RentModel(daily: int.tryParse(dailyPriceController.text),monthly: int.tryParse(monthlyPriceController.text)))),
                                    child: ProgressButton(progress: double.parse(progress.value.toString()),text: "Submit",)))
                            ),
                            SizedBox(height: 20)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
          )),
    );
  }


  void calculateProgress() {
    int filledFields = 0;
    if (hostelViewModel.roomImage.value.trim().isNotEmpty) filledFields++;
    if (roomNoController.text.trim().isNotEmpty) filledFields++;
    if (floorController.text.trim().isNotEmpty) filledFields++;
    if (hostelViewModel.roomTypeDropList.contains(selectedRoomType.value)) filledFields++;
    if (capacityCountController.text.trim().isNotEmpty) filledFields++;
    if (dailyPriceController.text.trim().isNotEmpty) filledFields++;
    if (monthlyPriceController.text.trim().isNotEmpty) filledFields++;
    progress.value = (filledFields / 7 * 100);
  }


}
