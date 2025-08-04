import 'dart:convert';
import 'dart:io';
import 'package:geolocator/geolocator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image/image.dart' as img;

import '../api/api_provides.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../pages/main_page.dart';
import '../pages/mobile_verification_page.dart';
import '../pages/otp_verification_page.dart';
import '../pages/request_pending_page.dart';
import '../pages/splash_screen.dart';
import '../pages/update_version_screen.dart';
import '../request_models/auth_request_model.dart';
import 'package:http/http.dart' as http;

import '../response_model/auth_response_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/geo_util.dart';
import '../utils/preference_manager.dart';

class AuthViewModel extends GetxController{
  final apiProvider = Get.put(ApiProvider());


  final sendOtpResponseObserver = const ApiResult<PrimaryResponseModel>.init().obs;
  final verifyOtpResponseObserver  = const ApiResult<FormHelperDataResponseModel>.init().obs;
  final fetchUserDetailsObserver  = const ApiResult<FetchUserDetailsResponseModel>.init().obs;
  final dealerStatusObserver  = const ApiResult<FormHelperDataResponseModel>.init().obs;
  final registerDealerResponseObserver  = const ApiResult<FormHelperDataResponseModel>.init().obs;
  final registerHostelResponseObserver  = const ApiResult<PrimaryResponseModel>.init().obs;
  final updateDealerDetailsResponseObserver  = const ApiResult<FetchUserDetailsResponseModel>.init().obs;
  final uploadFileObserver  = const ApiResult<UploadFileResponseModel>.init().obs;

  final preferenceManager = Get.put(PreferenceManager());

  Rx<Position?> locationObserver = Rx<Position?>(null);
  Rx<LocationModel?> locationDetails = Rx<LocationModel?>(null);

  Rx<File> uploadingFile = File('').obs;
  Rx<String> companyImage = "".obs;
  Rx<String> companyLicence = "".obs;



  Future<Position?> fetchCurrentLocation() async {
    if (locationObserver.value == null) {
      await Geolocator.requestPermission();
      LocationPermission locationPermission =
      await Geolocator.checkPermission();
      if (locationPermission == LocationPermission.denied) return null;
      final position = await Geolocator.getCurrentPosition();
      final geoAddress = await GeoUtil().getApiAddress(position.latitude, position.longitude);
      locationObserver.value = position;
      locationDetails.value = geoAddress;
      return position;
    } else {
      return locationObserver.value;
    }
  }


  Future<void> sendOtp(SendOtpRequestModel request) async {
    try{
      sendOtpResponseObserver.value = const ApiResult.loading();
      final String? validatorResponse = AuthUtils.validateRequestFields(['mobile'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      final response = await apiProvider.post(EndPoints.sendOtp,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
         final responseData = PrimaryResponseModel.fromJson(body);
         if(responseData.status == 1){
           sendOtpResponseObserver.value = ApiResult.success(responseData);
           Get.to(() => OtpVerificationPage(mobileNumber: request.mobile));
           return;
         }
         throw "something went wrong${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      sendOtpResponseObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> verifyOtp(VerifyOtpRequestModel request) async {
    try{
      verifyOtpResponseObserver.value = const ApiResult.loading();
      final String? validatorResponse = AuthUtils.validateRequestFields(['mobile','otp','source','version','deviceId'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      final response = await apiProvider.post(EndPoints.verifyOtp,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          verifyOtpResponseObserver.value = ApiResult.success(responseData);
          final page = responseData.data?.page;
          preferenceManager.setValue("page",page);
          preferenceManager.setValue("registerValue",request.mobile.toString());
          preferenceManager.setValue("token",responseData.data?.token);

          dealerStatusObserver.value = ApiResult.success(responseData);

          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(page);
          }else{
            Get.offAll(() => const UpdateVersionScreen());
          }

          return;
        }
        throw "something went wrong${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      verifyOtpResponseObserver.value = ApiResult.error(e.toString());
    }
  }


  Future<void> fetchDealerStatus(String? version) async {
    try{
      dealerStatusObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.fetchDealerStatus,{"version":version});
      final body = response.body;
      if(response.statusCode == 401){
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove('token');
        prefs.remove('page');
        prefs.clear();
        Get.offAll(() => const MobileVerificationPage());
        throw "Please Login Again";
      }
      if(response.isOk && body != null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          final page = responseData.data?.page;
          preferenceManager.setValue("page",page);
          dealerStatusObserver.value = ApiResult.success(responseData);
          fetchUserDetailsObserver.value = ApiResult.success(FetchUserDetailsResponseModel(status: 1,message:"Fetched User Details",data:responseData.data?.dealerDetails));
          fetchUserDetailsObserver.refresh();
          dealerStatusObserver.value = ApiResult.success(responseData);
          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(page);
          }else{
            Get.offAll(() => const UpdateVersionScreen());
          }
          return;
        }
        throw "something went wrong${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      print("helloE");
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      dealerStatusObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> fetchUserDetails() async {
    try{
      fetchUserDetailsObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.fetchUserDetails,{});
      final body = response.body;
      if(response.statusCode == 401){
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.remove('token');
        prefs.remove('page');
        prefs.clear();
        Get.offAll(() => const MobileVerificationPage());
        throw "Please Login Again";
      }
      if(response.isOk && body !=null){
        final responseData = FetchUserDetailsResponseModel.fromJson(body);
        if(responseData.status == 1){
          fetchUserDetailsObserver.value = ApiResult.success(responseData);
          // await FirebaseMessaging.instance.subscribeToTopic(responseData.data?.id ?? "");
          // await FirebaseMessaging.instance.subscribeToTopic("all");
          // await FirebaseMessaging.instance.subscribeToTopic("dealer");
          // final fcmToken = await FirebaseMessaging.instance.getToken();
          // print("Fcm Token");
          // print(fcmToken);
          return;
        }
        throw "something went wrong${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      fetchUserDetailsObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> performUploadFile(File selectedFile,String type) async {
    try {
      uploadFileObserver.value = const ApiResult.loadingCondition("dsx", false);
      File file = await compressImage(selectedFile,50);
      uploadFileObserver.value = const ApiResult.loading();
      var uri = Uri.parse(apiProvider.liveUrl + EndPoints.uploadFile);
      var request = http.MultipartRequest('POST', uri);
      request.headers['apiKey'] = apiProvider.apiKey;
      final preferenceManager = Get.put(PreferenceManager());
      final token = await preferenceManager.getValue("token") ?? "";
      request.headers['authorization'] = token;
      request.fields['type'] = type;
      var stream = http.ByteStream(file.openRead());
      stream.cast();
      var length = await file.length() ?? 0;
      var multipart = http.MultipartFile(
        'file',
        stream,
        length,
        filename: file.path
            .split('/')
            .last,
      );
      request.files.add(multipart);
      var response = await request.send();
      String responseBody = await response.stream.bytesToString();
      final json = jsonDecode(responseBody);
      if(json != null){
        final jsonData = UploadFileResponseModel.fromJson(json);
        if (jsonData.status == 1) {
          uploadFileObserver.value = ApiResult.success(jsonData);
          companyImage.value = jsonData.data ?? "";
          Get.close(1);
          return;
        }
        throw jsonData.message.toString();
    }
      throw "Body Null";
    } catch (e) {
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      uploadFileObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<File> compressImage(File file, int quality) async {
    try{
      final originalSize = file.lengthSync();
      print('Original size: ${(originalSize / 1024).toStringAsFixed(2)} KB');
      final image = img.decodeImage(await file.readAsBytes());
      final tempDir = await getTemporaryDirectory();
      final targetPath = "${tempDir.path}/compressed_${file.path.split('/').last}";
      final compressedImage = File(targetPath)
        ..writeAsBytesSync(img.encodeJpg(image!, quality: quality));
      final compressedSize = compressedImage.lengthSync();
      print('Compressed size: ${(compressedSize / 1024).toStringAsFixed(2)} KB');
      return compressedImage;
    }
    catch(error){
      return file;
    }
  }

  Future<void> registerUser(RegistrationRequestModel request) async {
    try{
      registerDealerResponseObserver.value = const ApiResult.loading();
      final String? validatorResponse = AuthUtils.validateRequestFields(['mobile','name','email'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      // final String? locationValidation = AuthUtils.validateRequestFields(['address1','address2','city','state','landmark','pinCode','latitude','longitude'], request.location!.toJson());
      // if(locationValidation != null) throw locationValidation;
      final response = await apiProvider.post(EndPoints.registerDealer,request.toJson());
      final body = response.body;
      if(response.isOk && body != null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          registerDealerResponseObserver.value = ApiResult.success(responseData);
          dealerStatusObserver.value = ApiResult.success(responseData);
          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(responseData.data?.page);
          }else{
            Get.offAll(() => const UpdateVersionScreen());
          }
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      registerDealerResponseObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> registerHostel(RegistrationRequestModel request) async {
    try{
      registerHostelResponseObserver.value = const ApiResult.loading();
      final String? validatorResponse = AuthUtils.validateRequestFields(['hostelImage','hostelLicence','hostelName','aboutHostel','gstIn','location'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      final String? locationValidation = AuthUtils.validateRequestFields(['address1','address2','city','state','landMark','pinCode','latitude','longitude'], request.location!.toJson());
      if(locationValidation != null) throw locationValidation;
      final response = await apiProvider.post(EndPoints.registerHostel,request.toJson());
      final body = response.body;
      if(response.isOk && body != null){
        final responseData = PrimaryResponseModel.fromJson(body);
        if(responseData.status == 1){
          registerHostelResponseObserver.value = ApiResult.success(responseData);
          Get.offAll(() => const RequestPendingPage());
          return;
        }
        throw "something went wrong${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      registerHostelResponseObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> updateDealerDetails(RegistrationRequestModel request) async {
    try{
      updateDealerDetailsResponseObserver.value = const ApiResult.loading();
      final String? validatorResponse = AuthUtils.validateRequestFields(['name','email'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      final response = await apiProvider.post(EndPoints.updateDealerDetails,request.toJson());
      final body = response.body;
      if(response.isOk && body != null){
        final updatedResponseData = FetchUserDetailsResponseModel.fromJson(body);
        if(updatedResponseData.status == 1){
          updateDealerDetailsResponseObserver.value = ApiResult.success(updatedResponseData);
          final updatedDealerDetails = updatedResponseData.data;
          fetchUserDetailsObserver.value.whenOrNull(success: (responseData){
            var userResponse = (responseData as FetchUserDetailsResponseModel);
            userResponse = userResponse.copyWith(data:updatedDealerDetails);
            fetchUserDetailsObserver.value = ApiResult.success(userResponse);
          });
          Get.back();
          Get.snackbar("Success","Details Updated Successfully",backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
          return;
        }

        throw "something went wrong${updatedResponseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      updateDealerDetailsResponseObserver.value = ApiResult.error(e.toString());
    }
  }

}