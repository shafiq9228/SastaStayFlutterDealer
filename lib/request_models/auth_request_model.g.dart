// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationRequestModelImpl _$$PaginationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationRequestModelImpl(
      hostelId: json['hostelId'] as String?,
      roomId: json['roomId'] as String?,
      query: json['query'] as String?,
      searchQuery: json['searchQuery'] as String?,
      type: json['type'] as String?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$$PaginationRequestModelImplToJson(
        _$PaginationRequestModelImpl instance) =>
    <String, dynamic>{
      'hostelId': instance.hostelId,
      'roomId': instance.roomId,
      'query': instance.query,
      'searchQuery': instance.searchQuery,
      'type': instance.type,
      'page': instance.page,
    };

_$TrueCallerRequestModelImpl _$$TrueCallerRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrueCallerRequestModelImpl(
      authorizationCode: json['authorizationCode'] as String?,
      codeVerifier: json['codeVerifier'] as String?,
      source: json['source'] as String?,
      version: json['version'] as String?,
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$$TrueCallerRequestModelImplToJson(
        _$TrueCallerRequestModelImpl instance) =>
    <String, dynamic>{
      'authorizationCode': instance.authorizationCode,
      'codeVerifier': instance.codeVerifier,
      'source': instance.source,
      'version': instance.version,
      'deviceId': instance.deviceId,
    };

_$SendOtpRequestModelImpl _$$SendOtpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOtpRequestModelImpl(
      mobile: json['mobile'] as int?,
      primaryHostelId: json['primaryHostelId'] as String?,
    );

Map<String, dynamic> _$$SendOtpRequestModelImplToJson(
        _$SendOtpRequestModelImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'primaryHostelId': instance.primaryHostelId,
    };

_$VerifyOtpRequestModelImpl _$$VerifyOtpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpRequestModelImpl(
      mobile: json['mobile'] as int?,
      otp: json['otp'] as int?,
      source: json['source'] as String?,
      version: json['version'] as String?,
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$$VerifyOtpRequestModelImplToJson(
        _$VerifyOtpRequestModelImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'otp': instance.otp,
      'source': instance.source,
      'version': instance.version,
      'deviceId': instance.deviceId,
    };

_$RegistrationRequestModelImpl _$$RegistrationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationRequestModelImpl(
      hostelId: json['hostelId'] as String?,
      mobile: json['mobile'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      hostelImage: json['hostelImage'] as String?,
      hostelType: json['hostelType'] as String?,
      hostelLicence: json['hostelLicence'] as String?,
      hostelName: json['hostelName'] as String?,
      aboutHostel: json['aboutHostel'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rules:
          (json['rules'] as List<dynamic>?)?.map((e) => e as String).toList(),
      faq: (json['faq'] as List<dynamic>?)
          ?.map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkInTime: json['checkInTime'] as String?,
      checkOutTime: json['checkOutTime'] as String?,
      gstIn: json['gstIn'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      commission: json['commission'] as int?,
      kycDocuments: (json['kycDocuments'] as List<dynamic>?)
          ?.map((e) => DocumentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegistrationRequestModelImplToJson(
        _$RegistrationRequestModelImpl instance) =>
    <String, dynamic>{
      'hostelId': instance.hostelId,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'hostelImage': instance.hostelImage,
      'hostelType': instance.hostelType,
      'hostelLicence': instance.hostelLicence,
      'hostelName': instance.hostelName,
      'aboutHostel': instance.aboutHostel,
      'images': instance.images,
      'amenities': instance.amenities,
      'rules': instance.rules,
      'faq': instance.faq,
      'checkInTime': instance.checkInTime,
      'checkOutTime': instance.checkOutTime,
      'gstIn': instance.gstIn,
      'location': instance.location,
      'commission': instance.commission,
      'kycDocuments': instance.kycDocuments,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      landMark: json['landMark'] as String?,
      pinCode: json['pinCode'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'landMark': instance.landMark,
      'pinCode': instance.pinCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
