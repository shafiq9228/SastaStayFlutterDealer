// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrimaryResponseModelImpl _$$PrimaryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrimaryResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$PrimaryResponseModelImplToJson(
        _$PrimaryResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$UploadFileResponseModelImpl _$$UploadFileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadFileResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$UploadFileResponseModelImplToJson(
        _$UploadFileResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FaqModelImpl _$$FaqModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqModelImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$FaqModelImplToJson(_$FaqModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };

_$FetchUserDetailsResponseModelImpl
    _$$FetchUserDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchUserDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : DealerModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchUserDetailsResponseModelImplToJson(
        _$FetchUserDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FormHelperDataResponseModelImpl _$$FormHelperDataResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FormHelperDataResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HelperDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FormHelperDataResponseModelImplToJson(
        _$FormHelperDataResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$HelperDataModelImpl _$$HelperDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HelperDataModelImpl(
      validVersion: json['validVersion'] as bool?,
      registerValue: json['registerValue'],
      page: json['page'] as String?,
      token: json['token'] as String?,
      dealerDetails: json['dealerDetails'] == null
          ? null
          : DealerModel.fromJson(json['dealerDetails'] as Map<String, dynamic>),
      primaryHostel: json['primaryHostel'] == null
          ? null
          : HostelModel.fromJson(json['primaryHostel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HelperDataModelImplToJson(
        _$HelperDataModelImpl instance) =>
    <String, dynamic>{
      'validVersion': instance.validVersion,
      'registerValue': instance.registerValue,
      'page': instance.page,
      'token': instance.token,
      'dealerDetails': instance.dealerDetails,
      'primaryHostel': instance.primaryHostel,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['_id'] as String?,
      mobile: json['mobile'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profilePic: json['profilePic'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'profilePic': instance.profilePic,
    };

_$DealerModelImpl _$$DealerModelImplFromJson(Map<String, dynamic> json) =>
    _$DealerModelImpl(
      id: json['_id'] as String?,
      mobile: json['mobile'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      otp: json['otp'] as int?,
      source: json['source'] as String?,
      version: json['version'] as String?,
      deviceId: json['deviceId'] as String?,
      monthlyIncome: json['monthlyIncome'] as int?,
      totalIncome: json['totalIncome'] as int?,
      totalVotes: json['totalVotes'] as int?,
      rating: json['rating'],
      dealingType: json['dealingType'] as String?,
      kycDocuments: (json['kycDocuments'] as List<dynamic>?)
          ?.map((e) => DocumentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DealerModelImplToJson(_$DealerModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'otp': instance.otp,
      'source': instance.source,
      'version': instance.version,
      'deviceId': instance.deviceId,
      'monthlyIncome': instance.monthlyIncome,
      'totalIncome': instance.totalIncome,
      'totalVotes': instance.totalVotes,
      'rating': instance.rating,
      'dealingType': instance.dealingType,
      'kycDocuments': instance.kycDocuments,
    };

_$DocumentDataModelImpl _$$DocumentDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentDataModelImpl(
      documentType: json['documentType'] as String?,
      documentStatus: json['documentStatus'] as String?,
      uploadedUrl: json['uploadedUrl'] as String?,
      errorTxt: json['errorTxt'] as String?,
    );

Map<String, dynamic> _$$DocumentDataModelImplToJson(
        _$DocumentDataModelImpl instance) =>
    <String, dynamic>{
      'documentType': instance.documentType,
      'documentStatus': instance.documentStatus,
      'uploadedUrl': instance.uploadedUrl,
      'errorTxt': instance.errorTxt,
    };
