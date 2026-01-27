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

_$FetchTransactionsResponseModelImpl
    _$$FetchTransactionsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchTransactionsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  TransactionDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchTransactionsResponseModelImplToJson(
        _$FetchTransactionsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$TransactionDataModelImpl _$$TransactionDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataModelImpl(
      id: json['_id'] as String?,
      dealerTitle: json['dealerTitle'] as String?,
      transactionType: json['transactionType'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      userId: json['userId'],
      dealerId: json['dealerId'],
      bookingId: json['bookingId'],
      withdrawTransactionId: json['withdrawTransactionId'],
      failedReason: json['failedReason'] as String?,
      orderId: json['orderId'] as String?,
      paymentId: json['paymentId'] as String?,
      amount: json['amount'] as int?,
      logs: (json['logs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetailModel.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionDataModelImplToJson(
        _$TransactionDataModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'dealerTitle': instance.dealerTitle,
      'transactionType': instance.transactionType,
      'paymentStatus': instance.paymentStatus,
      'userId': instance.userId,
      'dealerId': instance.dealerId,
      'bookingId': instance.bookingId,
      'withdrawTransactionId': instance.withdrawTransactionId,
      'failedReason': instance.failedReason,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'logs': instance.logs,
      'createdAt': instance.createdAt?.toIso8601String(),
      'paymentDetails': instance.paymentDetails,
    };

_$PaymentDetailModelImpl _$$PaymentDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDetailModelImpl(
      amount: json['amount'],
      discount: json['discount'],
      discountByAdmin: json['discountByAdmin'] as bool?,
      roomGstPercentage: json['roomGstPercentage'],
      roomGst: json['roomGst'],
      platformCharges: json['platformCharges'],
      platformGstPercentage: json['platformGstPercentage'],
      platformChargesBase: json['platformChargesBase'],
      platformChargesGst: json['platformChargesGst'],
      walletDeduction: json['walletDeduction'],
      subTotal: json['subTotal'],
      refundedAmount: json['refundedAmount'],
      chargePercentage: json['chargePercentage'],
      chargeAmount: json['chargeAmount'],
      chargeGst: json['chargeGst'],
      outwardBaseAmount: json['outwardBaseAmount'],
      outwardGst: json['outwardGst'],
      outwardAmount: json['outwardAmount'],
      profitExcludingItc: json['profitExcludingItc'],
      profitIncludingItc: json['profitIncludingItc'],
    );

Map<String, dynamic> _$$PaymentDetailModelImplToJson(
        _$PaymentDetailModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'discount': instance.discount,
      'discountByAdmin': instance.discountByAdmin,
      'roomGstPercentage': instance.roomGstPercentage,
      'roomGst': instance.roomGst,
      'platformCharges': instance.platformCharges,
      'platformGstPercentage': instance.platformGstPercentage,
      'platformChargesBase': instance.platformChargesBase,
      'platformChargesGst': instance.platformChargesGst,
      'walletDeduction': instance.walletDeduction,
      'subTotal': instance.subTotal,
      'refundedAmount': instance.refundedAmount,
      'chargePercentage': instance.chargePercentage,
      'chargeAmount': instance.chargeAmount,
      'chargeGst': instance.chargeGst,
      'outwardBaseAmount': instance.outwardBaseAmount,
      'outwardGst': instance.outwardGst,
      'outwardAmount': instance.outwardAmount,
      'profitExcludingItc': instance.profitExcludingItc,
      'profitIncludingItc': instance.profitIncludingItc,
    };

_$HostelRoomBookingDataModelImpl _$$HostelRoomBookingDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HostelRoomBookingDataModelImpl(
      amount: json['amount'] as int?,
      discount: json['discount'] as int?,
      subTotal: json['subTotal'] as int?,
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
      'subTotal': instance.subTotal,
      'paymentDetailLogs': instance.paymentDetailLogs,
      'bookingResponse': instance.bookingResponse,
      'onGoingBookings': instance.onGoingBookings,
    };

_$AmountDetailsModelImpl _$$AmountDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AmountDetailsModelImpl(
      message: json['message'] as String?,
      amount: json['amount'] as String?,
      extraData: json['extraData'] as String?,
    );

Map<String, dynamic> _$$AmountDetailsModelImplToJson(
        _$AmountDetailsModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'amount': instance.amount,
      'extraData': instance.extraData,
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
      id: json['_id'] as String?,
      bookedBy: json['bookedBy'] as String?,
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
      transactionId: json['transactionId'],
      guestCount: json['guestCount'] as int?,
      amount: json['amount'] as int?,
      discount: json['discount'] as int?,
      walletDeduction: json['walletDeduction'] as int?,
      subTotal: json['subTotal'] as int?,
      guestDetailsList: (json['guestDetailsList'] as List<dynamic>?)
          ?.map((e) => GuestDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      logs: (json['logs'] as List<dynamic>?)
          ?.map((e) => AmountDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookingStatus: json['bookingStatus'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'bookedBy': instance.bookedBy,
      'userId': instance.userId,
      'dealerId': instance.dealerId,
      'hostelId': instance.hostelId,
      'roomId': instance.roomId,
      'orderId': instance.orderId,
      'paymentId': instance.paymentId,
      'paymentStatus': instance.paymentStatus,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'transactionId': instance.transactionId,
      'guestCount': instance.guestCount,
      'amount': instance.amount,
      'discount': instance.discount,
      'walletDeduction': instance.walletDeduction,
      'subTotal': instance.subTotal,
      'guestDetailsList': instance.guestDetailsList,
      'logs': instance.logs,
      'bookingStatus': instance.bookingStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
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

_$CreateCouponResponseModelImpl _$$CreateCouponResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCouponResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CouponDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateCouponResponseModelImplToJson(
        _$CreateCouponResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CouponDataModelImpl _$$CouponDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CouponDataModelImpl(
      id: json['_id'] as String?,
      discountType: json['discountType'] as String?,
      isActive: json['isActive'] as bool?,
      singleUse: json['singleUse'] as bool?,
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
      'discountType': instance.discountType,
      'isActive': instance.isActive,
      'singleUse': instance.singleUse,
      'createdBy': instance.createdBy,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'code': instance.code,
      'orderValue': instance.orderValue,
      'discount': instance.discount,
    };
