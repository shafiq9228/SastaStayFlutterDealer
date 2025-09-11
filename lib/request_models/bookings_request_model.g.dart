// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestModelImpl _$$BookingRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingRequestModelImpl(
      roomModel: json['roomModel'] == null
          ? null
          : RoomModel.fromJson(json['roomModel'] as Map<String, dynamic>),
      hostelId: json['hostelId'] as String?,
      roomId: json['roomId'] as String?,
      checkInDate: json['checkInDate'] == null
          ? null
          : DateTime.parse(json['checkInDate'] as String),
      checkOutDate: json['checkOutDate'] == null
          ? null
          : DateTime.parse(json['checkOutDate'] as String),
      guestCount: json['guestCount'] as int?,
      guestDetailsList: (json['guestDetailsList'] as List<dynamic>?)
          ?.map((e) => GuestDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponId: json['couponId'] as String?,
    );

Map<String, dynamic> _$$BookingRequestModelImplToJson(
        _$BookingRequestModelImpl instance) =>
    <String, dynamic>{
      'roomModel': instance.roomModel,
      'hostelId': instance.hostelId,
      'roomId': instance.roomId,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'guestCount': instance.guestCount,
      'guestDetailsList': instance.guestDetailsList,
      'couponId': instance.couponId,
    };

_$AddBalanceRequestModelImpl _$$AddBalanceRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBalanceRequestModelImpl(
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$AddBalanceRequestModelImplToJson(
        _$AddBalanceRequestModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
    };
