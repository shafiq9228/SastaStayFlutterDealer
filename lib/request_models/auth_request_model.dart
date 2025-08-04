import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_model.freezed.dart';
part 'auth_request_model.g.dart';


@Freezed()
class PaginationRequestModel with _$PaginationRequestModel{
  const factory PaginationRequestModel({
    String? orderId,
    String? categoryId,
    String? subCategoryId,
    String? type,
    required int? page
  }) = _PaginationRequestModel;

  factory PaginationRequestModel.fromJson(Map<String, dynamic> json) => _$PaginationRequestModelFromJson(json);
}

@Freezed()
class SendOtpRequestModel with _$SendOtpRequestModel{
  const factory SendOtpRequestModel({
    required int? mobile
  }) = _SendOtpRequestModel;

  factory SendOtpRequestModel.fromJson(Map<String, dynamic> json) => _$SendOtpRequestModelFromJson(json);
}



@Freezed()
class VerifyOtpRequestModel with _$VerifyOtpRequestModel{
  const factory VerifyOtpRequestModel({
    required int? mobile,
    required int? otp,
    required String? source,
    required String? version,
    required String? deviceId,
  }) = _VerifyOtpRequestModel;

  factory VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) => _$VerifyOtpRequestModelFromJson(json);
}


@Freezed()
class RegistrationRequestModel with _$RegistrationRequestModel{
  const factory RegistrationRequestModel({
    String? mobile,
    String? name,
    String? email,
    String? hostelImage,
    String? hostelLicence,
    String? hostelName,
    String? aboutHostel,
    String? gstIn,
    LocationModel? location,
  }) = _RegistrationRequestModel;

  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) => _$RegistrationRequestModelFromJson(json);
}

@Freezed()
class LocationModel with _$LocationModel{
  const factory LocationModel({
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? landMark,
    int? pinCode,
    double? latitude,
    double? longitude,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
}