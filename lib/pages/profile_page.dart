import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/add_guest_item.dart';
import 'package:sasta_stay_dealer/components/error_text_component.dart';
import 'package:sasta_stay_dealer/components/icon_title_message_component.dart';
import 'package:sasta_stay_dealer/pages/help_support_page.dart';
import 'package:sasta_stay_dealer/pages/hostels_page.dart';
import 'package:sasta_stay_dealer/components/profile_menu.dart';
import 'package:sasta_stay_dealer/pages/money_withdraw_page.dart';
import 'package:sasta_stay_dealer/pages/rating_reviews_page.dart';
import 'package:sasta_stay_dealer/pages/registration_page.dart';
import 'package:sasta_stay_dealer/pages/transactions_page.dart';
import 'package:sasta_stay_dealer/response_model/auth_response_model.dart';
import 'package:sasta_stay_dealer/utils/auth_utils.dart';

import '../components/custom_progress_bar.dart';
import '../components/empty_data_view.dart';
import '../components/helper_bottom_sheet.dart';
import '../utils/app_styles.dart';
import '../utils/custom_colors.dart';
import '../utils/preference_manager.dart';
import '../utils/statefullwrapper.dart';
import '../view_models/auth_view_model.dart';
import 'coupons_page.dart';
import 'kyc_page.dart';
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
  RxString version = "".obs;

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
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                Get.to(() => RegistrationPage(dealer: userModel));
                              },
                              child: IntrinsicWidth(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 0.5,color: CustomColors.darkGray),
                                    color: CustomColors.white.withOpacity(0.3),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  child: Row(
                                    children: [
                                      Icon(Icons.mode_edit_outline_outlined,color: CustomColors.textColor,size: 15),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: CustomColors.textColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                decoration: AppStyles.categoryBg3,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      ProfileMenu(title: "Helps", image: "assets/images/help.png", onTapped: (){
                                        Get.to(() =>  HelpSupportPage());
                                      }),
                                      DottedLine(dashColor: CustomColors.darkGray,),
                                      Obx(() =>
                                          Visibility(
                                          visible: (authViewModel.kysDocuments).any((edir) =>  edir.documentStatus == "pending") == true,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              ProfileMenu(title: "Kyc Verification", image: "assets/images/kyc.png", onTapped: (){
                                                Get.to(() => KycPage(dealerModel: userModel));
                                              }),
                                              DottedLine(dashColor: CustomColors.darkGray),
                                            ],
                                          ),
                                        ),
                                      ),
                                      ProfileMenu(title: "Transaction History", image: "assets/images/wallet.png", onTapped: (){
                                        Get.to(() => const TransactionsPage());
                                      }),
                                      DottedLine(dashColor: CustomColors.darkGray),
                                      ProfileMenu(title: "Wallet", image: "assets/images/wallet.png", onTapped: (){
                                        Get.to(() =>  MoneyWithdrawPage());
                                      }),
                                      DottedLine(dashColor: CustomColors.darkGray),
                                      ProfileMenu(title: "Rating And Reviews", image: "assets/images/star.png", onTapped: (){
                                         Get.to(() => RatingReviewsPage(rating: 0));
                                      }),
                                      DottedLine(dashColor: CustomColors.darkGray,),
                                      ProfileMenu(title: "Swap Hostel", image: "assets/images/swap.png", onTapped: (){
                                        Get.to(() => const HostelsPage());
                                      }),
                                      DottedLine(dashColor: CustomColors.darkGray,),
                                      ProfileMenu(title: "Coupons", image: "assets/images/couponv.png", onTapped: (){
                                        Get.to(() => const CouponsPage(selecting: false));
                                      }),
                                      DottedLine(dashColor: CustomColors.darkGray),
                                      Obx(() => logOuting.value == true ? CustomProgressBar() :
                                      ProfileMenu(title: "Log Out", image: "assets/images/log_out_icon.png", onTapped: () {
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true, // allows full height scroll
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                                          ),
                                          builder: (context) {
                                            return HelperBottomSheet(assetImage: "assets/images/log_out.png",title: "Are you sure you want to log out?",message: "You will need to sign in again to access your account.",btn1Txt: "NO",btn1Click: (){
                                              Get.back();
                                            },btn2Txt: "Yes",btn2Click: ()async {
                                              Get.back();
                                              logOuting.value = true;
                                              preferenceManager.clearAll();
                                              logOuting.value = false;
                                              Get.offAll(() =>  MobileVerificationPage());
                                            });
                                          },
                                        );
                                        // logOutConfirmationDialog(userModel);
                                      },logOutMenu: true),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Obx(()=> Text("V ${version.value ?? ""}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: CustomColors.textColor)),
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
    version.value = await AuthUtils.getAppVersion() ?? "";
  }
}
