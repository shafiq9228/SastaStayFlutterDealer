// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HostelRoomAvailabilityResponseModelImpl
    _$$HostelRoomAvailabilityResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$HostelRoomAvailabilityResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : HostelRoomBookingDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$HostelRoomAvailabilityResponseModelImplToJson(
        _$HostelRoomAvailabilityResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ConfirmBookingResponseModelImpl _$$ConfirmBookingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmBookingResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HostelRoomBookingDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfirmBookingResponseModelImplToJson(
        _$ConfirmBookingResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$HostelRoomBookingDataModelImpl _$$HostelRoomBookingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HostelRoomBookingDataModelImpl(
      amount: json['amount'] as int?,
      discount: json['discount'] as int?,
      paymentDetailLogs: (json['paymentDetailLogs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingResponse: json['bookingResponse'] == null
          ? null
          : BookingModel.fromJson(
              json['bookingResponse'] as Map<String, dynamic>),
      onGoingBookings: (json['onGoingBookings'] as List<dynamic>?)
          ?.map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HostelRoomBookingDataModelImplToJson(
        _$HostelRoomBookingDataModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'discount': instance.discount,
      'paymentDetailLogs': instance.paymentDetailLogs,
      'bookingResponse': instance.bookingResponse,
      'onGoingBookings': instance.onGoingBookings,
    };

_$AmountDetailsModelImpl _$$AmountDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AmountDetailsModelImpl(
      message: json['message'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$$AmountDetailsModelImplToJson(
        _$AmountDetailsModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'amount': instance.amount,
    };

_$FetchBookingsResponseModelImpl _$$FetchBookingsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchBookingsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchBookingsResponseModelImplToJson(
        _$FetchBookingsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchBookingDetailsResponseModelImpl
    _$$FetchBookingDetailsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchBookingDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : BookingModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchBookingDetailsResponseModelImplToJson(
        _$FetchBookingDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      userId: json['userId'],
      dealerId: json['dealerId'],
      hostelId: json['hostelId'],
      roomId: json['roomId'],
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      checkInDate: json['checkInDate'] == null
          ? null
          : DateTime.parse(json['checkInDate'] as String),
      checkOutDate: json['checkOutDate'] == null
          ? null
          : DateTime.parse(json['checkOutDate'] as String),
      guestCount: json['guestCount'] as int?,
      total: json['total'] as int?,
      discount: json['discount'] as int?,
      guestDetailsList: (json['guestDetailsList'] as List<dynamic>?)
          ?.map((e) => GuestDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      logs: (json['logs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingStatus: json['bookingStatus'] as String?,
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dealerId': instance.dealerId,
      'hostelId': instance.hostelId,
      'roomId': instance.roomId,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'paymentStatus': instance.paymentStatus,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'guestCount': instance.guestCount,
      'total': instance.total,
      'discount': instance.discount,
      'guestDetailsList': instance.guestDetailsList,
      'logs': instance.logs,
      'bookingStatus': instance.bookingStatus,
    };

_$GuestDetailsModelImpl _$$GuestDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GuestDetailsModelImpl(
      name: json['name'] as String?,
      mobile: json['mobile'] as int?,
      aadharImage: json['aadharImage'] as String?,
      aadharNumber: json['aadharNumber'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
    );

Map<String, dynamic> _$$GuestDetailsModelImplToJson(
        _$GuestDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'aadharImage': instance.aadharImage,
      'aadharNumber': instance.aadharNumber,
      'gender': instance.gender,
      'dob': instance.dob,
    };

_$FetchCouponsResponseModelImpl _$$FetchCouponsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchCouponsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CouponDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchCouponsResponseModelImplToJson(
        _$FetchCouponsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CouponDataModelImpl _$$CouponDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CouponDataModelImpl(
      id: json['_id'] as String?,
      createdBy: json['createdBy'] as String?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      code: json['code'] as String?,
      orderValue: json['orderValue'] as int?,
      discount: json['discount'] as int?,
    );

Map<String, dynamic> _$$CouponDataModelImplToJson(
        _$CouponDataModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'createdBy': instance.createdBy,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'code': instance.code,
      'orderValue': instance.orderValue,
      'discount': instance.discount,
    };
