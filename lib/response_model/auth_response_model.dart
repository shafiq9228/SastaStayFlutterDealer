import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sasta_stay_dealer/response_model/hostel_response_model.dart';

import '../request_models/auth_request_model.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

class PaginationModel<T>{
  T data;
  bool isLoading;
  bool isPaginationCompleted;
  int page;
  String error;

  PaginationModel({
    required this.data,
    required this.isLoading,
    required this.isPaginationCompleted,
    required this.page,
    required this.error
  });
}


class OnBoardingDataModel<T>{
  String image;
  String title;
  String message;

  OnBoardingDataModel({
    required this.image,
    required this.title,
    required this.message
  });
}


@Freezed()
class PrimaryResponseModel with _$PrimaryResponseModel{
  const factory PrimaryResponseModel({
    int? status,
    String? message
  }) = _PrimaryResponseModel;

  factory PrimaryResponseModel.fromJson(Map<String, dynamic> json) => _$PrimaryResponseModelFromJson(json);
}


@Freezed()
class UploadFileResponseModel with _$UploadFileResponseModel{
  const factory UploadFileResponseModel({
    int? status,
    String? message,
    String? data
  }) = _UploadFileResponseModel;

  factory UploadFileResponseModel.fromJson(Map<String, dynamic> json) => _$UploadFileResponseModelFromJson(json);
}

@Freezed()
class FaqModel with _$FaqModel{
  const factory FaqModel({
    String? question,
    String? answer
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) => _$FaqModelFromJson(json);
}



@Freezed()
class FetchUserDetailsResponseModel with _$FetchUserDetailsResponseModel{
  const factory FetchUserDetailsResponseModel({
    int? status,
    String? message,
    DealerModel? data
  }) = _FetchUserDetailsResponseModel;

  factory FetchUserDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchUserDetailsResponseModelFromJson(json);
}

@Freezed()
class FormHelperDataResponseModel with _$FormHelperDataResponseModel{
  const factory FormHelperDataResponseModel({
    int? status,
    String? message,
    HelperDataModel? data,
  }) = _FormHelperDataResponseModel;

  factory FormHelperDataResponseModel.fromJson(Map<String, dynamic> json) => _$FormHelperDataResponseModelFromJson(json);
}

@Freezed()
class HelperDataModel with _$HelperDataModel{
  const factory HelperDataModel({
    bool? validVersion,
    String? page,
    String? token,
    DealerModel? dealerDetails,
    HostelModel? primaryHostel,
  }) = _HelperDataModel;

  factory HelperDataModel.fromJson(Map<String, dynamic> json) => _$HelperDataModelFromJson(json);
}


@Freezed()
class UserModel with _$UserModel{
  const factory UserModel({
    @JsonKey(name: '_id') String? id,
    int? mobile,
    String? name,
    String? email,
    String? profilePic
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@Freezed()
class DealerModel with _$DealerModel{
  const factory DealerModel({
    @JsonKey(name: '_id') String? id,
    int? mobile,
    String? name,
    String? email,
    int? otp,
    String? source,
    String? version,
    String? deviceId,
    int? monthlyIncome,
    int? totalIncome,
    int? totalVotes,
    dynamic rating,
    List<DocumentDataModel>? kycDocuments
  }) = _DealerModel;

  factory DealerModel.fromJson(Map<String, dynamic> json) => _$DealerModelFromJson(json);
}


@Freezed()
class DocumentDataModel with _$DocumentDataModel{
  const factory DocumentDataModel({
    required String? documentType,
    required String? documentStatus,
    required String? uploadedUrl,
    required String? errorTxt
  }) = _DocumentDataModel;

  factory DocumentDataModel.fromJson(Map<String, dynamic> json) => _$DocumentDataModelFromJson(json);
}