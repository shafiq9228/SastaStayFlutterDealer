import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/pages/hostels_page.dart';
import 'package:sasta_stay_dealer/components/profile_menu.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';

import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import '../utils/custom_colors.dart';
import '../utils/preference_manager.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import 'mobile_verification_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final preferenceManager = Get.put(PreferenceManager());
  final authViewModel = Get.put(AuthViewModel());
  RxBool logOuting = false.obs;
  RxString customerSupportNumber = "".obs;


  void logOutConfirmationDialog(DealerModel? dealerModel){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Text("Are you sure you want to Log Out?",style:TextStyle(fontSize: 16,color: CustomColors.textColor,fontWeight: FontWeight.w700)),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(70, 40),
                        ),
                        child: const Text(
                          "No",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          Get.back();
                          logOuting.value = true;
                          preferenceManager.clearAll();
                          logOuting.value = false;
                          Get.offAll(() =>  MobileVerificationPage());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(70, 40),
                        ),
                        child: const Text(
                          "Yes",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: _refreshData,
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: RefreshIndicator(
          onRefresh: _refreshData,
          child: SafeArea(
              top: true,
              child: Obx(() => authViewModel.fetchUserDetailsObserver.value.maybeWhen(
                  error: (error) => const SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: EmptyDataView(text: "Something went wrong"),))))),
                  loading: () => SizedBox(width: double.infinity,height: double.infinity,child: Center(child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),child: SizedBox(width: double.infinity,height: 500,child: Center(child: SizedBox(height: 30,width: 30,child: CircularProgressIndicator(color: CustomColors.primary)),))))),
                  success: (data){
                    final userModel = (data as FetchUserDetailsResponseModel).data;

                    return SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 50),
                            GestureDetector(
                              onTap: (){

                              },
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    radius: 50, // Adjust the radius as needed
                                    backgroundImage: NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
                                    backgroundColor: Colors.grey, // You can set a background color for the avatar
                                  ),
                                  Container(width: 30,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(200),color: CustomColors.primary),child: Center(child: Icon(Icons.edit,color: CustomColors.white)),)
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(userModel?.name ?? "",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.textColor)),
                            Text(userModel?.name ?? "",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.darkGray)),
                            Text("${userModel?.mobile ?? 000}",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: CustomColors.darkGray)),
                            SizedBox(height: 50),

                            ProfileMenu(title: "Helps", image: "assets/images/help.png", onTapped: (){

                            }),
                            const Divider(),
                            ProfileMenu(title: "Swap Hostel", image: "assets/images/swap.png", onTapped: (){
                                Get.to(() => const HostelsPage());
                            }),
                            const Divider(),
                            Obx(() => logOuting.value == true ? CustomProgressBar() :
                            ProfileMenu(title: "Log Out", image: "assets/images/log_out.png", onTapped: () {
                              logOutConfirmationDialog(userModel);
                            }),
                            ),
                            SizedBox(height: 100)
                          ],
                        ),
                      ),
                    );
                  },
                  orElse: () => SizedBox())
              )
          ),
        ),),
    );
  }


  Future<void> _refreshData() async{
    authViewModel.fetchUserDetails();
  }
}
