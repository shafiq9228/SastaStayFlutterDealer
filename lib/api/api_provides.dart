import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../utils/preference_manager.dart';

class ApiProvider<T> extends GetConnect{
  String apiKey = "654321";
  // String localUrl = ;
  // String liveUrl = ;
  String liveUrl = true ? "https://sastastay-1d420.el.r.appspot.com/dealer/" : "http://192.168.0.218:8055/dealer/" ;

  @override
  void onInit() {
    httpClient.baseUrl = liveUrl;
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 25);
    httpClient.addRequestModifier<T>((request) async {
      final preferenceManager = Get.put(PreferenceManager());
      final token = await preferenceManager.getValue("token") ?? "";
      final modifiedRequest = request as Request<T>;
      modifiedRequest.headers['Authorization'] = token;
      modifiedRequest.headers['apiKey'] = apiKey;
      return modifiedRequest;
    });
    super.onInit();
  }
}