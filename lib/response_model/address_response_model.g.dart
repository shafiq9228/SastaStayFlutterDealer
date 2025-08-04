// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleAddressResponseImpl _$$GoogleAddressResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleAddressResponseImpl(
      status: json['status'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => GoogleAddressResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoogleAddressResponseImplToJson(
        _$GoogleAddressResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };

_$GoogleAddressResultImpl _$$GoogleAddressResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleAddressResultImpl(
      addressComponent: (json['address_components'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoogleAddressResultImplToJson(
        _$GoogleAddressResultImpl instance) =>
    <String, dynamic>{
      'address_components': instance.addressComponent,
    };

_$AddressComponentImpl _$$AddressComponentImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressComponentImpl(
      longName: json['long_name'] as String?,
      shortName: json['short_name'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AddressComponentImplToJson(
        _$AddressComponentImpl instance) =>
    <String, dynamic>{
      'long_name': instance.longName,
      'short_name': instance.shortName,
      'types': instance.types,
    };

_$AddAddressesResponseModelImpl _$$AddAddressesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddAddressesResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AddressDetailResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddAddressesResponseModelImplToJson(
        _$AddAddressesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchAddressesResponseModelImpl _$$FetchAddressesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchAddressesResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FetchAddressesDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchAddressesResponseModelImplToJson(
        _$FetchAddressesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchAddressesDataModelImpl _$$FetchAddressesDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchAddressesDataModelImpl(
      defaultLocation: json['defaultLocation'] == null
          ? null
          : AddressDetailResponse.fromJson(
              json['defaultLocation'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
          ?.map(
              (e) => AddressDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchAddressesDataModelImplToJson(
        _$FetchAddressesDataModelImpl instance) =>
    <String, dynamic>{
      'defaultLocation': instance.defaultLocation,
      'locations': instance.locations,
    };

_$AddressDetailResponseImpl _$$AddressDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressDetailResponseImpl(
      id: json['_id'] as String?,
      addressType: json['addressType'] as String?,
      titleName: json['titleName'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pinCode: json['pinCode'] as int?,
      landMark: json['landMark'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AddressDetailResponseImplToJson(
        _$AddressDetailResponseImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'addressType': instance.addressType,
      'titleName': instance.titleName,
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'pinCode': instance.pinCode,
      'landMark': instance.landMark,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
