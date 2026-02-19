import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sasta_stay_dealer/pages/mobile_verification_page.dart';
import 'package:sasta_stay_dealer/pages/onboarding_screens.dart';
import 'package:sasta_stay_dealer/pages/register_hostel_page.dart';
import 'package:sasta_stay_dealer/pages/registration_page.dart';
import 'package:sasta_stay_dealer/pages/request_pending_page.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';

import '../pages/main_page.dart';

class AuthUtils {

  AuthUtils._();

  static DateTime _toIndianTime(DateTime date) {
    return date.toUtc().add(const Duration(hours: 5, minutes: 30));
  }

  static String formatPrice(double price) => '\$${price.toStringAsFixed(2)}';

  static String formatDate(DateTime date) {
    final indiaTime = _toIndianTime(date);
    return DateFormat.yMd().format(indiaTime);
  }

  static String maskMobileNumber(String mobile) {
    if (mobile.length <= 2) return mobile;

    final visibleDigits = mobile.substring(mobile.length - 2);
    final maskedPart = '*' * (mobile.length - 2);

    return maskedPart + visibleDigits;
  }

  static String dateFormatToCheckInCheckOut1(DateTime? checkInDate, DateTime? checkOutDate) {
    if (checkInDate == null || checkOutDate == null) return "";

    final indiaCheckIn = _toIndianTime(checkInDate);
    final indiaCheckOut = _toIndianTime(checkOutDate);

    bool isSameDate = indiaCheckIn.year == indiaCheckOut.year &&
        indiaCheckIn.month == indiaCheckOut.month &&
        indiaCheckIn.day == indiaCheckOut.day;

    if (isSameDate) {
      return formatDateToLong(indiaCheckIn);
    }
    return "${formatDateToLong(indiaCheckIn)} - ${formatDateToLong(indiaCheckOut)}";

  }

  static String dateFormatToCheckInCheckOut(DateTime? checkInDate, DateTime? checkOutDate) {
    if (checkInDate == null || checkOutDate == null) return "";

    final indiaCheckIn = _toIndianTime(checkInDate);
    final indiaCheckOut = _toIndianTime(checkOutDate);

    bool isSameDate = indiaCheckIn.year == indiaCheckOut.year &&
        indiaCheckIn.month == indiaCheckOut.month &&
        indiaCheckIn.day == indiaCheckOut.day;

    if (isSameDate) {
      return "${formatDateToLong(indiaCheckIn)}\nCheck In : ${formatDateToLong(indiaCheckIn)}\nCheck Out : ${formatDateToLong(indiaCheckOut.add(Duration(days: 1)))}";
    }
    return "${formatDateToLong(indiaCheckIn)} - ${formatDateToLong(indiaCheckOut)}\nCheck In : ${formatDateToLong(indiaCheckIn)}\nCheck Out : ${formatDateToLong(indiaCheckOut.add(Duration(days: 1)))}";
  }





  static int parseToInt(String value) {
    double? numValue = double.tryParse(value);
    if (numValue == null) return 0;
    final integer = numValue.toInt();
    return integer;
  }



  static void navigateFromPageName(String? page,HostelModel? hostel){
    switch(page){
      case "registrationPage": Get.offAll(() => const RegistrationPage());
      case "registerHostel": Get.offAll(() => const RegisterHostelPage());
      case "mainPage": Get.offAll(() =>  const MainPage());
      case "pendingPage" : Get.offAll(() =>  RequestPendingPage(hostelModel: hostel));
      case "mobileVerification" : Get.offAll(() =>  const OnBoardingScreens());
      default: Get.offAll(() =>  const OnBoardingScreens());
    }
  }


  static String formatNumber(num? number) {
    if (number == null) return '';
    if (number < 1000) return number.toString();
    if (number < 1000000) return "${(number / 1000).toStringAsFixed(number % 1000 < 100 ? 1 : 0)}K";
    if (number < 1000000000) return "${(number / 1000000).toStringAsFixed(number % 1000000 < 100000 ? 1 : 0)}M";
    return "${(number / 1000000000).toStringAsFixed(number % 1000000000 < 100000000 ? 1 : 0)}B";
  }

  static String formatDateToLong(DateTime? date) {
    if (date == null) return "";
    final indiaTime = date.toUtc().add(const Duration(hours: 5, minutes: 30));
    return DateFormat("MMM d yyyy").format(indiaTime);
  }

  static String formatDatetime(DateTime? date) {
    if (date == null) return "";
    final indiaTime = date.toUtc().add(const Duration(hours: 5, minutes: 30));
    return DateFormat("dd MMMM yyyy, hh:mm a").format(indiaTime);
  }


  static bool isValidBase64(String base64Str) {
    final base64Pattern = RegExp(r'^[A-Za-z0-9+/]+={0,2}$');
    return base64Pattern.hasMatch(base64Str) && (base64Str.length % 4 == 0);
  }

  static String repairBase64(String base64Str) {
    base64Str = base64Str.replaceAll(RegExp(r'[^A-Za-z0-9+/=]'), '');
    int mod = base64Str.length % 4;
    if (mod > 0) {
      base64Str += "=" * (4 - mod);
    }
    return base64Str;
  }




  static String? validateRequestFields(List<String> requiredFields, Map<String, dynamic> body) {
    if (requiredFields.contains('mobile') && body['mobile']?.toString().length != 10) {
      return 'Check Your Mobile Number';
    }

    if (requiredFields.contains('otp') && body['otp']?.toString().length != 6) {
      return 'Check Your Otp';
    }

    if (requiredFields.contains('email') && !(body['email']?.toString().contains('@gmail.com') ?? false)) {
      return 'Check Your Email Id';
    }

    List<String> missingFields = requiredFields.where((field) {
      var value = body[field];
      return value == null ||
          value == '' ||
          (value is List && value.isEmpty);
    }).toList();

    if (missingFields.isNotEmpty) {
      return 'Missing required fields: ${missingFields.join(", ")}';
    }

    return null;
  }

  static Future<String?>  getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  static Future<String?> getDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor;
    }
    return null;
  }


  static Future<Map<String, String?>> getDeviceDetails() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    String? imei;
    String? deviceVersion;
    String? deviceId;

    if (Platform.isAndroid) {
      // Request Permission
      if (await Permission.phone.request().isGranted) {
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        imei = androidInfo.id; // IMEI
        deviceVersion = androidInfo.version.release; // Android version
        deviceId = androidInfo.id; // Device ID
      }
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      imei = iosInfo.identifierForVendor; // No IMEI on iOS, so use identifierForVendor
      deviceVersion = iosInfo.systemVersion; // iOS version
      deviceId = iosInfo.identifierForVendor;
    }

    return {
      "imei": imei,
      "deviceVersion": deviceVersion,
      "deviceId": deviceId
    };
  }

  static String  getSource(){
    return Platform.isAndroid ? "android" : "ios";
  }



  static String convertDate(String? timestamp) {
    DateTime dateTime;

    if (timestamp == null || timestamp.trim().isEmpty) {
      dateTime = DateTime.now().toUtc();
    } else {
      dateTime = DateTime.parse(timestamp).toUtc();
    }

    DateTime istDateTime = dateTime.add(Duration(hours: 5, minutes: 30));
    String formattedDate = DateFormat('MMMM dd | yyyy | hh:mm a').format(istDateTime);

    return formattedDate;
  }


}