import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/pages/register_hostel_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';
import 'package:sasta_stay_dealer/view_models/booking_view_model.dart';
import 'package:sasta_stay_dealer/view_models/hostel_view_model.dart';
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
  final registerHostelResponseObserver  = const ApiResult<FormHelperDataResponseModel>.init().obs;
  final updateHostelDetailsResponseObserver  = const ApiResult<FormHelperDataResponseModel>.init().obs;
  final trueCallerVerificationObserver = const ApiResult<FormHelperDataResponseModel>.init().obs;


  final updateDealerDetailsResponseObserver  = const ApiResult<FetchUserDetailsResponseModel>.init().obs;
  final uploadFileObserver  = const ApiResult<UploadFileResponseModel>.init().obs;

  final preferenceManager = Get.put(PreferenceManager());

  Rx<Position?> locationPosition = Rx<Position?>(null);
  Rx<LocationModel?> locationDetails = Rx<LocationModel?>(null);

  Rx<File> uploadingFile = File('').obs;
  Rx<String> primaryHostelId = "".obs;
  Rx<String> hostelImage = "".obs;
  Rx<String> checkInTime = "".obs;
  Rx<String> checkOutTime = "".obs;
  Rx<String> hostelLicence = "".obs;
  Rx<String> hostelGstDocument = "".obs;
  RxList<String> rules = <String>[].obs;
  RxList<ImageDataModel> images = <ImageDataModel>[].obs;
  RxList<FaqModel> faqs = <FaqModel>[].obs;
  RxList<String> amenityIds = <String>[].obs;

  final hostelViewModel = Get.put(HostelViewModel());
  final bookingViewModel = Get.put(BookingViewModel());

  RxList<DocumentDataModel> kysDocuments = [
    DocumentDataModel(
      documentType: "aadhar",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    ),
    DocumentDataModel(
      documentType: "pan",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    )
  ].obs;

  List<DocumentDataModel> initialKycDocuments = [
    DocumentDataModel(
      documentType: "aadhar",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    ),
    DocumentDataModel(
      documentType: "pan",
      documentStatus: "pending",
      uploadedUrl: "",
      errorTxt: '',
    )
  ];


  String? getPrimaryId(){
    return dealerStatusObserver.value.maybeWhen(success: (data) => (data as FormHelperDataResponseModel).data?.primaryHostel?.id ?? "",orElse: () => "");
  }

  Future<Position?> fetchCurrentLocation() async {
    if (locationPosition.value == null) {
      await Geolocator.requestPermission();

      LocationPermission locationPermission =
      await Geolocator.checkPermission();

      if (locationPermission == LocationPermission.denied ||
          locationPermission == LocationPermission.deniedForever) {
        return null;
      }

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );

      final geoAddress = await GeoUtil()
          .getApiAddress(position.latitude, position.longitude);

      locationPosition.value = position;
      locationDetails.value = geoAddress;

      return position;
    } else {
      return locationPosition.value;
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
          await preferenceManager.setValue("page",page);
          await preferenceManager.setValue("registerValue",request.mobile.toString());
          await preferenceManager.setValue("token",responseData.data?.token);

          dealerStatusObserver.value = ApiResult.success(responseData);

          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(page,responseData.data?.primaryHostel);
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

  Future<void> trueCallerLogin(TrueCallerRequestModel request) async {
    try{
      trueCallerVerificationObserver.value = const ApiResult.loading();
      final String? validatorResponse = AuthUtils.validateRequestFields(['authorizationCode','codeVerifier','source','version','deviceId'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      print(request.toString());
      final response = await apiProvider.post(EndPoints.trueCallerLogin,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          trueCallerVerificationObserver.value = ApiResult.success(responseData);
          final page = responseData.data?.page;
          await preferenceManager.setValue("page",page);
          await preferenceManager.setValue("registerValue",responseData.data?.registerValue);
          await preferenceManager.setValue("token",responseData.data?.token);

          dealerStatusObserver.value = ApiResult.success(responseData);

          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(page,responseData.data?.primaryHostel);
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
      trueCallerVerificationObserver.value = ApiResult.error(e.toString());
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
          await preferenceManager.setValue("page",page);
          dealerStatusObserver.value = ApiResult.success(responseData);
          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(page,responseData.data?.primaryHostel);
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
          if((responseData.data?.kycDocuments ?? []).length == 2){
            kysDocuments.value = responseData.data?.kycDocuments ??  initialKycDocuments;
          }

          await FirebaseMessaging.instance.subscribeToTopic(responseData.data?.id ?? "");
          await FirebaseMessaging.instance.subscribeToTopic("all");
          await FirebaseMessaging.instance.subscribeToTopic("dealers");

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
      if(hostelViewModel.selectedHostelImageType.value == "" && type == "hostelImages") throw "ImagesType Is Required";
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
          if(type == "hostelImage"){
            hostelImage.value = jsonData.data ?? "";
          }
          if(type == "gst"){
            hostelGstDocument.value = jsonData.data ?? "";
          }
          else if (type == "hostelImages") {
            final existIndex = images.indexWhere(
                  (imageObj) => imageObj.imagesType == hostelViewModel.selectedHostelImageType.value,
            );

            if (existIndex == -1) {
              images.add(
                ImageDataModel(
                  imagesType: hostelViewModel.selectedHostelImageType.value,
                  images: [jsonData.data ?? ""],
                ),
              );
            } else {
              // Clone the list so it's mutable
              final existingImages = images[existIndex].images ?? [];
              final updatedImages = [...existingImages, jsonData.data ?? ""]; // spread operator creates a new list

              images[existIndex] = images[existIndex].copyWith(images: updatedImages);
            }
          }
          else if(type == "guestDoc"){
            bookingViewModel.aadharImage.value = jsonData.data ?? "";
          }
          else if(type == "aadhar" || type == "pan" || type == "selfie"){
            final existingKycList = kysDocuments.toList() ?? List.empty();
            final index = existingKycList.indexWhere((element) => element.documentType == type);
            if(index != -1){
              final updatedKycList = existingKycList[index].copyWith(uploadedUrl: jsonData.data ?? "",documentStatus: "pending");
              existingKycList[index] = updatedKycList;
              kysDocuments.value = existingKycList;
              kysDocuments.refresh();
            }
          }
          else if(type == "roomImage"){
            hostelViewModel.roomImage.value = jsonData.data ?? "";
          }
          else if(type == "hostelLicence"){
            hostelLicence.value = jsonData.data ?? "";
          }
          Get.close(1);
          return;
        }
        throw jsonData.message.toString();
    }
      throw "Body Null";
    } catch (e) {
      print(e);
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      uploadFileObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<File> compressImage(File file, int quality) async {
    try{
      final originalSize = file.lengthSync();
      final image = img.decodeImage(await file.readAsBytes());
      final tempDir = await getTemporaryDirectory();
      final targetPath = "${tempDir.path}/compressed_${file.path.split('/').last}";
      final compressedImage = File(targetPath)
        ..writeAsBytesSync(img.encodeJpg(image!, quality: quality));
      final compressedSize = compressedImage.lengthSync();
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
      // final String? locationValidation = AuthUtils.validateRequestFields(['address1','address2','city','state','pinCode','latitude','longitude'], request.location!.toJson());
      // if(locationValidation != null) throw locationValidation;
      final response = await apiProvider.post(EndPoints.registerDealer,request.toJson());
      final body = response.body;
      if(response.isOk && body != null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          registerDealerResponseObserver.value = ApiResult.success(responseData);
          dealerStatusObserver.value = ApiResult.success(responseData);
          if(responseData.data?.validVersion == true){
            AuthUtils.navigateFromPageName(responseData.data?.page,responseData.data?.primaryHostel);
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
      final String? validatorResponse = AuthUtils.validateRequestFields(['hostelImage','hostelLicence','hostelName','aboutHostel','gstIn','location','faq','amenities','images','rules','checkInTime','checkOutTime'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;
      final String? locationValidation = AuthUtils.validateRequestFields(['address1','address2','city','state','pinCode','latitude','longitude'], request.location!.toJson());
      if(locationValidation != null) throw locationValidation;
      final response = await apiProvider.post(EndPoints.registerHostel,request.toJson());
      final body = response.body;
      if(response.isOk && body != null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          registerHostelResponseObserver.value = ApiResult.success(responseData);
          await preferenceManager.setValue("token",responseData.data?.token);
          Get.offAll(() =>  RequestPendingPage(hostelModel: responseData.data?.primaryHostel));
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

  Future<void> updateHostelDetails(RegistrationRequestModel request) async {
    try{
      updateHostelDetailsResponseObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.updateHostelDetails,request.toJson());
      final body = response.body;
      if(response.isOk && body != null){
        final responseData = FormHelperDataResponseModel.fromJson(body);
        if(responseData.status == 1){
          updateHostelDetailsResponseObserver.value = ApiResult.success(responseData);
          Get.offAll(() => const MainPage());
          return;
        }
        throw "something went wrong${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      updateHostelDetailsResponseObserver.value = ApiResult.error(e.toString());
    }
  }

}