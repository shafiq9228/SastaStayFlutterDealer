// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListRoomRequestModelImpl _$$ListRoomRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListRoomRequestModelImpl(
      roomId: json['roomId'] as String?,
      hostelId: json['hostelId'] as String?,
      image: json['image'] as String?,
      roomNo: json['roomNo'] as String?,
      floor: json['floor'] as int?,
      specialAmenities: (json['specialAmenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      capacityCount: json['capacityCount'] as int?,
      roomType: json['roomType'] as String?,
      rent: json['rent'] == null
          ? null
          : RentModel.fromJson(json['rent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListRoomRequestModelImplToJson(
        _$ListRoomRequestModelImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'hostelId': instance.hostelId,
      'image': instance.image,
      'roomNo': instance.roomNo,
      'floor': instance.floor,
      'specialAmenities': instance.specialAmenities,
      'capacityCount': instance.capacityCount,
      'roomType': instance.roomType,
      'rent': instance.rent,
    };
