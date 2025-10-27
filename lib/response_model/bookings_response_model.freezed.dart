// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HostelRoomAvailabilityResponseModel
    _$HostelRoomAvailabilityResponseModelFromJson(Map<String, dynamic> json) {
  return _HostelRoomAvailabilityResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HostelRoomAvailabilityResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HostelRoomBookingDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostelRoomAvailabilityResponseModelCopyWith<
          HostelRoomAvailabilityResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostelRoomAvailabilityResponseModelCopyWith<$Res> {
  factory $HostelRoomAvailabilityResponseModelCopyWith(
          HostelRoomAvailabilityResponseModel value,
          $Res Function(HostelRoomAvailabilityResponseModel) then) =
      _$HostelRoomAvailabilityResponseModelCopyWithImpl<$Res,
          HostelRoomAvailabilityResponseModel>;
  @useResult
  $Res call({int? status, String? message, HostelRoomBookingDataModel? data});

  $HostelRoomBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HostelRoomAvailabilityResponseModelCopyWithImpl<$Res,
        $Val extends HostelRoomAvailabilityResponseModel>
    implements $HostelRoomAvailabilityResponseModelCopyWith<$Res> {
  _$HostelRoomAvailabilityResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HostelRoomBookingDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HostelRoomBookingDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HostelRoomBookingDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HostelRoomAvailabilityResponseModelImplCopyWith<$Res>
    implements $HostelRoomAvailabilityResponseModelCopyWith<$Res> {
  factory _$$HostelRoomAvailabilityResponseModelImplCopyWith(
          _$HostelRoomAvailabilityResponseModelImpl value,
          $Res Function(_$HostelRoomAvailabilityResponseModelImpl) then) =
      __$$HostelRoomAvailabilityResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HostelRoomBookingDataModel? data});

  @override
  $HostelRoomBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HostelRoomAvailabilityResponseModelImplCopyWithImpl<$Res>
    extends _$HostelRoomAvailabilityResponseModelCopyWithImpl<$Res,
        _$HostelRoomAvailabilityResponseModelImpl>
    implements _$$HostelRoomAvailabilityResponseModelImplCopyWith<$Res> {
  __$$HostelRoomAvailabilityResponseModelImplCopyWithImpl(
      _$HostelRoomAvailabilityResponseModelImpl _value,
      $Res Function(_$HostelRoomAvailabilityResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HostelRoomAvailabilityResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HostelRoomBookingDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostelRoomAvailabilityResponseModelImpl
    implements _HostelRoomAvailabilityResponseModel {
  const _$HostelRoomAvailabilityResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$HostelRoomAvailabilityResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HostelRoomAvailabilityResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HostelRoomBookingDataModel? data;

  @override
  String toString() {
    return 'HostelRoomAvailabilityResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostelRoomAvailabilityResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostelRoomAvailabilityResponseModelImplCopyWith<
          _$HostelRoomAvailabilityResponseModelImpl>
      get copyWith => __$$HostelRoomAvailabilityResponseModelImplCopyWithImpl<
          _$HostelRoomAvailabilityResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostelRoomAvailabilityResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HostelRoomAvailabilityResponseModel
    implements HostelRoomAvailabilityResponseModel {
  const factory _HostelRoomAvailabilityResponseModel(
          {final int? status,
          final String? message,
          final HostelRoomBookingDataModel? data}) =
      _$HostelRoomAvailabilityResponseModelImpl;

  factory _HostelRoomAvailabilityResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$HostelRoomAvailabilityResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HostelRoomBookingDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HostelRoomAvailabilityResponseModelImplCopyWith<
          _$HostelRoomAvailabilityResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConfirmBookingResponseModel _$ConfirmBookingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ConfirmBookingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmBookingResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HostelRoomBookingDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmBookingResponseModelCopyWith<ConfirmBookingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmBookingResponseModelCopyWith<$Res> {
  factory $ConfirmBookingResponseModelCopyWith(
          ConfirmBookingResponseModel value,
          $Res Function(ConfirmBookingResponseModel) then) =
      _$ConfirmBookingResponseModelCopyWithImpl<$Res,
          ConfirmBookingResponseModel>;
  @useResult
  $Res call({int? status, String? message, HostelRoomBookingDataModel? data});

  $HostelRoomBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConfirmBookingResponseModelCopyWithImpl<$Res,
        $Val extends ConfirmBookingResponseModel>
    implements $ConfirmBookingResponseModelCopyWith<$Res> {
  _$ConfirmBookingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HostelRoomBookingDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HostelRoomBookingDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HostelRoomBookingDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfirmBookingResponseModelImplCopyWith<$Res>
    implements $ConfirmBookingResponseModelCopyWith<$Res> {
  factory _$$ConfirmBookingResponseModelImplCopyWith(
          _$ConfirmBookingResponseModelImpl value,
          $Res Function(_$ConfirmBookingResponseModelImpl) then) =
      __$$ConfirmBookingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HostelRoomBookingDataModel? data});

  @override
  $HostelRoomBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ConfirmBookingResponseModelImplCopyWithImpl<$Res>
    extends _$ConfirmBookingResponseModelCopyWithImpl<$Res,
        _$ConfirmBookingResponseModelImpl>
    implements _$$ConfirmBookingResponseModelImplCopyWith<$Res> {
  __$$ConfirmBookingResponseModelImplCopyWithImpl(
      _$ConfirmBookingResponseModelImpl _value,
      $Res Function(_$ConfirmBookingResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ConfirmBookingResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HostelRoomBookingDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmBookingResponseModelImpl
    implements _ConfirmBookingResponseModel {
  const _$ConfirmBookingResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$ConfirmBookingResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConfirmBookingResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HostelRoomBookingDataModel? data;

  @override
  String toString() {
    return 'ConfirmBookingResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmBookingResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmBookingResponseModelImplCopyWith<_$ConfirmBookingResponseModelImpl>
      get copyWith => __$$ConfirmBookingResponseModelImplCopyWithImpl<
          _$ConfirmBookingResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmBookingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmBookingResponseModel
    implements ConfirmBookingResponseModel {
  const factory _ConfirmBookingResponseModel(
          {final int? status,
          final String? message,
          final HostelRoomBookingDataModel? data}) =
      _$ConfirmBookingResponseModelImpl;

  factory _ConfirmBookingResponseModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmBookingResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HostelRoomBookingDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmBookingResponseModelImplCopyWith<_$ConfirmBookingResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchTransactionsResponseModel _$FetchTransactionsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchTransactionsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchTransactionsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<TransactionDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchTransactionsResponseModelCopyWith<FetchTransactionsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTransactionsResponseModelCopyWith<$Res> {
  factory $FetchTransactionsResponseModelCopyWith(
          FetchTransactionsResponseModel value,
          $Res Function(FetchTransactionsResponseModel) then) =
      _$FetchTransactionsResponseModelCopyWithImpl<$Res,
          FetchTransactionsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<TransactionDataModel>? data});
}

/// @nodoc
class _$FetchTransactionsResponseModelCopyWithImpl<$Res,
        $Val extends FetchTransactionsResponseModel>
    implements $FetchTransactionsResponseModelCopyWith<$Res> {
  _$FetchTransactionsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchTransactionsResponseModelImplCopyWith<$Res>
    implements $FetchTransactionsResponseModelCopyWith<$Res> {
  factory _$$FetchTransactionsResponseModelImplCopyWith(
          _$FetchTransactionsResponseModelImpl value,
          $Res Function(_$FetchTransactionsResponseModelImpl) then) =
      __$$FetchTransactionsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<TransactionDataModel>? data});
}

/// @nodoc
class __$$FetchTransactionsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchTransactionsResponseModelCopyWithImpl<$Res,
        _$FetchTransactionsResponseModelImpl>
    implements _$$FetchTransactionsResponseModelImplCopyWith<$Res> {
  __$$FetchTransactionsResponseModelImplCopyWithImpl(
      _$FetchTransactionsResponseModelImpl _value,
      $Res Function(_$FetchTransactionsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchTransactionsResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchTransactionsResponseModelImpl
    implements _FetchTransactionsResponseModel {
  const _$FetchTransactionsResponseModelImpl(
      {this.status, this.message, final List<TransactionDataModel>? data})
      : _data = data;

  factory _$FetchTransactionsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchTransactionsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<TransactionDataModel>? _data;
  @override
  List<TransactionDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchTransactionsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTransactionsResponseModelImplCopyWith<
          _$FetchTransactionsResponseModelImpl>
      get copyWith => __$$FetchTransactionsResponseModelImplCopyWithImpl<
          _$FetchTransactionsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchTransactionsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchTransactionsResponseModel
    implements FetchTransactionsResponseModel {
  const factory _FetchTransactionsResponseModel(
          {final int? status,
          final String? message,
          final List<TransactionDataModel>? data}) =
      _$FetchTransactionsResponseModelImpl;

  factory _FetchTransactionsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchTransactionsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<TransactionDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchTransactionsResponseModelImplCopyWith<
          _$FetchTransactionsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionDataModel _$TransactionDataModelFromJson(Map<String, dynamic> json) {
  return _TransactionDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionDataModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get dealerTitle => throw _privateConstructorUsedError;
  String? get transactionType => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get dealerId => throw _privateConstructorUsedError;
  dynamic get bookingId => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  List<AmountDetailsModel>? get logs => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataModelCopyWith<TransactionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataModelCopyWith<$Res> {
  factory $TransactionDataModelCopyWith(TransactionDataModel value,
          $Res Function(TransactionDataModel) then) =
      _$TransactionDataModelCopyWithImpl<$Res, TransactionDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? dealerTitle,
      String? transactionType,
      String? paymentStatus,
      dynamic userId,
      dynamic dealerId,
      dynamic bookingId,
      String? orderId,
      String? paymentId,
      int? amount,
      List<AmountDetailsModel>? logs,
      DateTime? createdAt});
}

/// @nodoc
class _$TransactionDataModelCopyWithImpl<$Res,
        $Val extends TransactionDataModel>
    implements $TransactionDataModelCopyWith<$Res> {
  _$TransactionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dealerTitle = freezed,
    Object? transactionType = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
    Object? dealerId = freezed,
    Object? bookingId = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? logs = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerTitle: freezed == dealerTitle
          ? _value.dealerTitle
          : dealerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDataModelImplCopyWith<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  factory _$$TransactionDataModelImplCopyWith(_$TransactionDataModelImpl value,
          $Res Function(_$TransactionDataModelImpl) then) =
      __$$TransactionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? dealerTitle,
      String? transactionType,
      String? paymentStatus,
      dynamic userId,
      dynamic dealerId,
      dynamic bookingId,
      String? orderId,
      String? paymentId,
      int? amount,
      List<AmountDetailsModel>? logs,
      DateTime? createdAt});
}

/// @nodoc
class __$$TransactionDataModelImplCopyWithImpl<$Res>
    extends _$TransactionDataModelCopyWithImpl<$Res, _$TransactionDataModelImpl>
    implements _$$TransactionDataModelImplCopyWith<$Res> {
  __$$TransactionDataModelImplCopyWithImpl(_$TransactionDataModelImpl _value,
      $Res Function(_$TransactionDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dealerTitle = freezed,
    Object? transactionType = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
    Object? dealerId = freezed,
    Object? bookingId = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? logs = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$TransactionDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerTitle: freezed == dealerTitle
          ? _value.dealerTitle
          : dealerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      logs: freezed == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataModelImpl implements _TransactionDataModel {
  const _$TransactionDataModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.dealerTitle,
      this.transactionType,
      this.paymentStatus,
      this.userId,
      this.dealerId,
      this.bookingId,
      this.orderId,
      this.paymentId,
      this.amount,
      final List<AmountDetailsModel>? logs,
      this.createdAt})
      : _logs = logs;

  factory _$TransactionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? dealerTitle;
  @override
  final String? transactionType;
  @override
  final String? paymentStatus;
  @override
  final dynamic userId;
  @override
  final dynamic dealerId;
  @override
  final dynamic bookingId;
  @override
  final String? orderId;
  @override
  final String? paymentId;
  @override
  final int? amount;
  final List<AmountDetailsModel>? _logs;
  @override
  List<AmountDetailsModel>? get logs {
    final value = _logs;
    if (value == null) return null;
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TransactionDataModel(id: $id, dealerTitle: $dealerTitle, transactionType: $transactionType, paymentStatus: $paymentStatus, userId: $userId, dealerId: $dealerId, bookingId: $bookingId, orderId: $orderId, paymentId: $paymentId, amount: $amount, logs: $logs, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dealerTitle, dealerTitle) ||
                other.dealerTitle == dealerTitle) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.dealerId, dealerId) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dealerTitle,
      transactionType,
      paymentStatus,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(dealerId),
      const DeepCollectionEquality().hash(bookingId),
      orderId,
      paymentId,
      amount,
      const DeepCollectionEquality().hash(_logs),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith =>
          __$$TransactionDataModelImplCopyWithImpl<_$TransactionDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionDataModel implements TransactionDataModel {
  const factory _TransactionDataModel(
      {@JsonKey(name: '_id') final String? id,
      final String? dealerTitle,
      final String? transactionType,
      final String? paymentStatus,
      final dynamic userId,
      final dynamic dealerId,
      final dynamic bookingId,
      final String? orderId,
      final String? paymentId,
      final int? amount,
      final List<AmountDetailsModel>? logs,
      final DateTime? createdAt}) = _$TransactionDataModelImpl;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$TransactionDataModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get dealerTitle;
  @override
  String? get transactionType;
  @override
  String? get paymentStatus;
  @override
  dynamic get userId;
  @override
  dynamic get dealerId;
  @override
  dynamic get bookingId;
  @override
  String? get orderId;
  @override
  String? get paymentId;
  @override
  int? get amount;
  @override
  List<AmountDetailsModel>? get logs;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HostelRoomBookingDataModel _$HostelRoomBookingDataModelFromJson(
    Map<String, dynamic> json) {
  return _HostelRoomBookingDataModel.fromJson(json);
}

/// @nodoc
mixin _$HostelRoomBookingDataModel {
  int? get amount => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  List<AmountDetailsModel>? get paymentDetailLogs =>
      throw _privateConstructorUsedError;
  BookingModel? get bookingResponse => throw _privateConstructorUsedError;
  List<BookingModel>? get onGoingBookings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostelRoomBookingDataModelCopyWith<HostelRoomBookingDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostelRoomBookingDataModelCopyWith<$Res> {
  factory $HostelRoomBookingDataModelCopyWith(HostelRoomBookingDataModel value,
          $Res Function(HostelRoomBookingDataModel) then) =
      _$HostelRoomBookingDataModelCopyWithImpl<$Res,
          HostelRoomBookingDataModel>;
  @useResult
  $Res call(
      {int? amount,
      int? discount,
      int? subTotal,
      List<AmountDetailsModel>? paymentDetailLogs,
      BookingModel? bookingResponse,
      List<BookingModel>? onGoingBookings});

  $BookingModelCopyWith<$Res>? get bookingResponse;
}

/// @nodoc
class _$HostelRoomBookingDataModelCopyWithImpl<$Res,
        $Val extends HostelRoomBookingDataModel>
    implements $HostelRoomBookingDataModelCopyWith<$Res> {
  _$HostelRoomBookingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? discount = freezed,
    Object? subTotal = freezed,
    Object? paymentDetailLogs = freezed,
    Object? bookingResponse = freezed,
    Object? onGoingBookings = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDetailLogs: freezed == paymentDetailLogs
          ? _value.paymentDetailLogs
          : paymentDetailLogs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      bookingResponse: freezed == bookingResponse
          ? _value.bookingResponse
          : bookingResponse // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
      onGoingBookings: freezed == onGoingBookings
          ? _value.onGoingBookings
          : onGoingBookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModelCopyWith<$Res>? get bookingResponse {
    if (_value.bookingResponse == null) {
      return null;
    }

    return $BookingModelCopyWith<$Res>(_value.bookingResponse!, (value) {
      return _then(_value.copyWith(bookingResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HostelRoomBookingDataModelImplCopyWith<$Res>
    implements $HostelRoomBookingDataModelCopyWith<$Res> {
  factory _$$HostelRoomBookingDataModelImplCopyWith(
          _$HostelRoomBookingDataModelImpl value,
          $Res Function(_$HostelRoomBookingDataModelImpl) then) =
      __$$HostelRoomBookingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? amount,
      int? discount,
      int? subTotal,
      List<AmountDetailsModel>? paymentDetailLogs,
      BookingModel? bookingResponse,
      List<BookingModel>? onGoingBookings});

  @override
  $BookingModelCopyWith<$Res>? get bookingResponse;
}

/// @nodoc
class __$$HostelRoomBookingDataModelImplCopyWithImpl<$Res>
    extends _$HostelRoomBookingDataModelCopyWithImpl<$Res,
        _$HostelRoomBookingDataModelImpl>
    implements _$$HostelRoomBookingDataModelImplCopyWith<$Res> {
  __$$HostelRoomBookingDataModelImplCopyWithImpl(
      _$HostelRoomBookingDataModelImpl _value,
      $Res Function(_$HostelRoomBookingDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? discount = freezed,
    Object? subTotal = freezed,
    Object? paymentDetailLogs = freezed,
    Object? bookingResponse = freezed,
    Object? onGoingBookings = freezed,
  }) {
    return _then(_$HostelRoomBookingDataModelImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDetailLogs: freezed == paymentDetailLogs
          ? _value._paymentDetailLogs
          : paymentDetailLogs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      bookingResponse: freezed == bookingResponse
          ? _value.bookingResponse
          : bookingResponse // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
      onGoingBookings: freezed == onGoingBookings
          ? _value._onGoingBookings
          : onGoingBookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostelRoomBookingDataModelImpl implements _HostelRoomBookingDataModel {
  const _$HostelRoomBookingDataModelImpl(
      {this.amount,
      this.discount,
      this.subTotal,
      final List<AmountDetailsModel>? paymentDetailLogs,
      this.bookingResponse,
      final List<BookingModel>? onGoingBookings})
      : _paymentDetailLogs = paymentDetailLogs,
        _onGoingBookings = onGoingBookings;

  factory _$HostelRoomBookingDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HostelRoomBookingDataModelImplFromJson(json);

  @override
  final int? amount;
  @override
  final int? discount;
  @override
  final int? subTotal;
  final List<AmountDetailsModel>? _paymentDetailLogs;
  @override
  List<AmountDetailsModel>? get paymentDetailLogs {
    final value = _paymentDetailLogs;
    if (value == null) return null;
    if (_paymentDetailLogs is EqualUnmodifiableListView)
      return _paymentDetailLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BookingModel? bookingResponse;
  final List<BookingModel>? _onGoingBookings;
  @override
  List<BookingModel>? get onGoingBookings {
    final value = _onGoingBookings;
    if (value == null) return null;
    if (_onGoingBookings is EqualUnmodifiableListView) return _onGoingBookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HostelRoomBookingDataModel(amount: $amount, discount: $discount, subTotal: $subTotal, paymentDetailLogs: $paymentDetailLogs, bookingResponse: $bookingResponse, onGoingBookings: $onGoingBookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostelRoomBookingDataModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality()
                .equals(other._paymentDetailLogs, _paymentDetailLogs) &&
            (identical(other.bookingResponse, bookingResponse) ||
                other.bookingResponse == bookingResponse) &&
            const DeepCollectionEquality()
                .equals(other._onGoingBookings, _onGoingBookings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      discount,
      subTotal,
      const DeepCollectionEquality().hash(_paymentDetailLogs),
      bookingResponse,
      const DeepCollectionEquality().hash(_onGoingBookings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostelRoomBookingDataModelImplCopyWith<_$HostelRoomBookingDataModelImpl>
      get copyWith => __$$HostelRoomBookingDataModelImplCopyWithImpl<
          _$HostelRoomBookingDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostelRoomBookingDataModelImplToJson(
      this,
    );
  }
}

abstract class _HostelRoomBookingDataModel
    implements HostelRoomBookingDataModel {
  const factory _HostelRoomBookingDataModel(
          {final int? amount,
          final int? discount,
          final int? subTotal,
          final List<AmountDetailsModel>? paymentDetailLogs,
          final BookingModel? bookingResponse,
          final List<BookingModel>? onGoingBookings}) =
      _$HostelRoomBookingDataModelImpl;

  factory _HostelRoomBookingDataModel.fromJson(Map<String, dynamic> json) =
      _$HostelRoomBookingDataModelImpl.fromJson;

  @override
  int? get amount;
  @override
  int? get discount;
  @override
  int? get subTotal;
  @override
  List<AmountDetailsModel>? get paymentDetailLogs;
  @override
  BookingModel? get bookingResponse;
  @override
  List<BookingModel>? get onGoingBookings;
  @override
  @JsonKey(ignore: true)
  _$$HostelRoomBookingDataModelImplCopyWith<_$HostelRoomBookingDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AmountDetailsModel _$AmountDetailsModelFromJson(Map<String, dynamic> json) {
  return _AmountDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AmountDetailsModel {
  String? get message => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get extraData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountDetailsModelCopyWith<AmountDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountDetailsModelCopyWith<$Res> {
  factory $AmountDetailsModelCopyWith(
          AmountDetailsModel value, $Res Function(AmountDetailsModel) then) =
      _$AmountDetailsModelCopyWithImpl<$Res, AmountDetailsModel>;
  @useResult
  $Res call({String? message, String? amount, String? extraData});
}

/// @nodoc
class _$AmountDetailsModelCopyWithImpl<$Res, $Val extends AmountDetailsModel>
    implements $AmountDetailsModelCopyWith<$Res> {
  _$AmountDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? amount = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountDetailsModelImplCopyWith<$Res>
    implements $AmountDetailsModelCopyWith<$Res> {
  factory _$$AmountDetailsModelImplCopyWith(_$AmountDetailsModelImpl value,
          $Res Function(_$AmountDetailsModelImpl) then) =
      __$$AmountDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? amount, String? extraData});
}

/// @nodoc
class __$$AmountDetailsModelImplCopyWithImpl<$Res>
    extends _$AmountDetailsModelCopyWithImpl<$Res, _$AmountDetailsModelImpl>
    implements _$$AmountDetailsModelImplCopyWith<$Res> {
  __$$AmountDetailsModelImplCopyWithImpl(_$AmountDetailsModelImpl _value,
      $Res Function(_$AmountDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? amount = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_$AmountDetailsModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountDetailsModelImpl implements _AmountDetailsModel {
  const _$AmountDetailsModelImpl({this.message, this.amount, this.extraData});

  factory _$AmountDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountDetailsModelImplFromJson(json);

  @override
  final String? message;
  @override
  final String? amount;
  @override
  final String? extraData;

  @override
  String toString() {
    return 'AmountDetailsModel(message: $message, amount: $amount, extraData: $extraData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountDetailsModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.extraData, extraData) ||
                other.extraData == extraData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, amount, extraData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountDetailsModelImplCopyWith<_$AmountDetailsModelImpl> get copyWith =>
      __$$AmountDetailsModelImplCopyWithImpl<_$AmountDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AmountDetailsModel implements AmountDetailsModel {
  const factory _AmountDetailsModel(
      {final String? message,
      final String? amount,
      final String? extraData}) = _$AmountDetailsModelImpl;

  factory _AmountDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AmountDetailsModelImpl.fromJson;

  @override
  String? get message;
  @override
  String? get amount;
  @override
  String? get extraData;
  @override
  @JsonKey(ignore: true)
  _$$AmountDetailsModelImplCopyWith<_$AmountDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchBookingsResponseModel _$FetchBookingsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchBookingsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchBookingsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BookingModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchBookingsResponseModelCopyWith<FetchBookingsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBookingsResponseModelCopyWith<$Res> {
  factory $FetchBookingsResponseModelCopyWith(FetchBookingsResponseModel value,
          $Res Function(FetchBookingsResponseModel) then) =
      _$FetchBookingsResponseModelCopyWithImpl<$Res,
          FetchBookingsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<BookingModel>? data});
}

/// @nodoc
class _$FetchBookingsResponseModelCopyWithImpl<$Res,
        $Val extends FetchBookingsResponseModel>
    implements $FetchBookingsResponseModelCopyWith<$Res> {
  _$FetchBookingsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchBookingsResponseModelImplCopyWith<$Res>
    implements $FetchBookingsResponseModelCopyWith<$Res> {
  factory _$$FetchBookingsResponseModelImplCopyWith(
          _$FetchBookingsResponseModelImpl value,
          $Res Function(_$FetchBookingsResponseModelImpl) then) =
      __$$FetchBookingsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<BookingModel>? data});
}

/// @nodoc
class __$$FetchBookingsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchBookingsResponseModelCopyWithImpl<$Res,
        _$FetchBookingsResponseModelImpl>
    implements _$$FetchBookingsResponseModelImplCopyWith<$Res> {
  __$$FetchBookingsResponseModelImplCopyWithImpl(
      _$FetchBookingsResponseModelImpl _value,
      $Res Function(_$FetchBookingsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchBookingsResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchBookingsResponseModelImpl implements _FetchBookingsResponseModel {
  const _$FetchBookingsResponseModelImpl(
      {this.status, this.message, final List<BookingModel>? data})
      : _data = data;

  factory _$FetchBookingsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchBookingsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<BookingModel>? _data;
  @override
  List<BookingModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchBookingsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBookingsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBookingsResponseModelImplCopyWith<_$FetchBookingsResponseModelImpl>
      get copyWith => __$$FetchBookingsResponseModelImplCopyWithImpl<
          _$FetchBookingsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchBookingsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchBookingsResponseModel
    implements FetchBookingsResponseModel {
  const factory _FetchBookingsResponseModel(
      {final int? status,
      final String? message,
      final List<BookingModel>? data}) = _$FetchBookingsResponseModelImpl;

  factory _FetchBookingsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchBookingsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<BookingModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchBookingsResponseModelImplCopyWith<_$FetchBookingsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchBookingDetailsResponseModel _$FetchBookingDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchBookingDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchBookingDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BookingModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchBookingDetailsResponseModelCopyWith<FetchBookingDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBookingDetailsResponseModelCopyWith<$Res> {
  factory $FetchBookingDetailsResponseModelCopyWith(
          FetchBookingDetailsResponseModel value,
          $Res Function(FetchBookingDetailsResponseModel) then) =
      _$FetchBookingDetailsResponseModelCopyWithImpl<$Res,
          FetchBookingDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, BookingModel? data});

  $BookingModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchBookingDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchBookingDetailsResponseModel>
    implements $FetchBookingDetailsResponseModelCopyWith<$Res> {
  _$FetchBookingDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchBookingDetailsResponseModelImplCopyWith<$Res>
    implements $FetchBookingDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchBookingDetailsResponseModelImplCopyWith(
          _$FetchBookingDetailsResponseModelImpl value,
          $Res Function(_$FetchBookingDetailsResponseModelImpl) then) =
      __$$FetchBookingDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, BookingModel? data});

  @override
  $BookingModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchBookingDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchBookingDetailsResponseModelCopyWithImpl<$Res,
        _$FetchBookingDetailsResponseModelImpl>
    implements _$$FetchBookingDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchBookingDetailsResponseModelImplCopyWithImpl(
      _$FetchBookingDetailsResponseModelImpl _value,
      $Res Function(_$FetchBookingDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchBookingDetailsResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchBookingDetailsResponseModelImpl
    implements _FetchBookingDetailsResponseModel {
  const _$FetchBookingDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchBookingDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchBookingDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final BookingModel? data;

  @override
  String toString() {
    return 'FetchBookingDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBookingDetailsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBookingDetailsResponseModelImplCopyWith<
          _$FetchBookingDetailsResponseModelImpl>
      get copyWith => __$$FetchBookingDetailsResponseModelImplCopyWithImpl<
          _$FetchBookingDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchBookingDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchBookingDetailsResponseModel
    implements FetchBookingDetailsResponseModel {
  const factory _FetchBookingDetailsResponseModel(
      {final int? status,
      final String? message,
      final BookingModel? data}) = _$FetchBookingDetailsResponseModelImpl;

  factory _FetchBookingDetailsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchBookingDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  BookingModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchBookingDetailsResponseModelImplCopyWith<
          _$FetchBookingDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get bookedBy => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get dealerId => throw _privateConstructorUsedError;
  dynamic get hostelId => throw _privateConstructorUsedError;
  dynamic get roomId => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  DateTime? get checkInDate => throw _privateConstructorUsedError;
  DateTime? get checkOutDate => throw _privateConstructorUsedError;
  int? get guestCount => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get walletDeduction => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  List<GuestDetailsModel>? get guestDetailsList =>
      throw _privateConstructorUsedError;
  List<AmountDetailsModel>? get logs => throw _privateConstructorUsedError;
  String? get bookingStatus => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? bookedBy,
      dynamic userId,
      dynamic dealerId,
      dynamic hostelId,
      dynamic roomId,
      String? orderId,
      String? paymentId,
      String? paymentStatus,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount,
      int? amount,
      int? discount,
      int? walletDeduction,
      int? subTotal,
      List<GuestDetailsModel>? guestDetailsList,
      List<AmountDetailsModel>? logs,
      String? bookingStatus,
      DateTime? createdAt});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookedBy = freezed,
    Object? userId = freezed,
    Object? dealerId = freezed,
    Object? hostelId = freezed,
    Object? roomId = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? guestDetailsList = freezed,
    Object? logs = freezed,
    Object? bookingStatus = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedBy: freezed == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOutDate: freezed == checkOutDate
          ? _value.checkOutDate
          : checkOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      guestCount: freezed == guestCount
          ? _value.guestCount
          : guestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      guestDetailsList: freezed == guestDetailsList
          ? _value.guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as List<GuestDetailsModel>?,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      bookingStatus: freezed == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? bookedBy,
      dynamic userId,
      dynamic dealerId,
      dynamic hostelId,
      dynamic roomId,
      String? orderId,
      String? paymentId,
      String? paymentStatus,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount,
      int? amount,
      int? discount,
      int? walletDeduction,
      int? subTotal,
      List<GuestDetailsModel>? guestDetailsList,
      List<AmountDetailsModel>? logs,
      String? bookingStatus,
      DateTime? createdAt});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookedBy = freezed,
    Object? userId = freezed,
    Object? dealerId = freezed,
    Object? hostelId = freezed,
    Object? roomId = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? guestDetailsList = freezed,
    Object? logs = freezed,
    Object? bookingStatus = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$BookingModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedBy: freezed == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOutDate: freezed == checkOutDate
          ? _value.checkOutDate
          : checkOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      guestCount: freezed == guestCount
          ? _value.guestCount
          : guestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      guestDetailsList: freezed == guestDetailsList
          ? _value._guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as List<GuestDetailsModel>?,
      logs: freezed == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      bookingStatus: freezed == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingModelImpl implements _BookingModel {
  const _$BookingModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.bookedBy,
      this.userId,
      this.dealerId,
      this.hostelId,
      this.roomId,
      this.orderId,
      this.paymentId,
      this.paymentStatus,
      this.checkInDate,
      this.checkOutDate,
      this.guestCount,
      this.amount,
      this.discount,
      this.walletDeduction,
      this.subTotal,
      final List<GuestDetailsModel>? guestDetailsList,
      final List<AmountDetailsModel>? logs,
      this.bookingStatus,
      this.createdAt})
      : _guestDetailsList = guestDetailsList,
        _logs = logs;

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? bookedBy;
  @override
  final dynamic userId;
  @override
  final dynamic dealerId;
  @override
  final dynamic hostelId;
  @override
  final dynamic roomId;
  @override
  final String? orderId;
  @override
  final String? paymentId;
  @override
  final String? paymentStatus;
  @override
  final DateTime? checkInDate;
  @override
  final DateTime? checkOutDate;
  @override
  final int? guestCount;
  @override
  final int? amount;
  @override
  final int? discount;
  @override
  final int? walletDeduction;
  @override
  final int? subTotal;
  final List<GuestDetailsModel>? _guestDetailsList;
  @override
  List<GuestDetailsModel>? get guestDetailsList {
    final value = _guestDetailsList;
    if (value == null) return null;
    if (_guestDetailsList is EqualUnmodifiableListView)
      return _guestDetailsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmountDetailsModel>? _logs;
  @override
  List<AmountDetailsModel>? get logs {
    final value = _logs;
    if (value == null) return null;
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? bookingStatus;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'BookingModel(id: $id, bookedBy: $bookedBy, userId: $userId, dealerId: $dealerId, hostelId: $hostelId, roomId: $roomId, orderId: $orderId, paymentId: $paymentId, paymentStatus: $paymentStatus, checkInDate: $checkInDate, checkOutDate: $checkOutDate, guestCount: $guestCount, amount: $amount, discount: $discount, walletDeduction: $walletDeduction, subTotal: $subTotal, guestDetailsList: $guestDetailsList, logs: $logs, bookingStatus: $bookingStatus, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookedBy, bookedBy) ||
                other.bookedBy == bookedBy) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.dealerId, dealerId) &&
            const DeepCollectionEquality().equals(other.hostelId, hostelId) &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.walletDeduction, walletDeduction) ||
                other.walletDeduction == walletDeduction) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality()
                .equals(other._guestDetailsList, _guestDetailsList) &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        bookedBy,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(dealerId),
        const DeepCollectionEquality().hash(hostelId),
        const DeepCollectionEquality().hash(roomId),
        orderId,
        paymentId,
        paymentStatus,
        checkInDate,
        checkOutDate,
        guestCount,
        amount,
        discount,
        walletDeduction,
        subTotal,
        const DeepCollectionEquality().hash(_guestDetailsList),
        const DeepCollectionEquality().hash(_logs),
        bookingStatus,
        createdAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {@JsonKey(name: '_id') final String? id,
      final String? bookedBy,
      final dynamic userId,
      final dynamic dealerId,
      final dynamic hostelId,
      final dynamic roomId,
      final String? orderId,
      final String? paymentId,
      final String? paymentStatus,
      final DateTime? checkInDate,
      final DateTime? checkOutDate,
      final int? guestCount,
      final int? amount,
      final int? discount,
      final int? walletDeduction,
      final int? subTotal,
      final List<GuestDetailsModel>? guestDetailsList,
      final List<AmountDetailsModel>? logs,
      final String? bookingStatus,
      final DateTime? createdAt}) = _$BookingModelImpl;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get bookedBy;
  @override
  dynamic get userId;
  @override
  dynamic get dealerId;
  @override
  dynamic get hostelId;
  @override
  dynamic get roomId;
  @override
  String? get orderId;
  @override
  String? get paymentId;
  @override
  String? get paymentStatus;
  @override
  DateTime? get checkInDate;
  @override
  DateTime? get checkOutDate;
  @override
  int? get guestCount;
  @override
  int? get amount;
  @override
  int? get discount;
  @override
  int? get walletDeduction;
  @override
  int? get subTotal;
  @override
  List<GuestDetailsModel>? get guestDetailsList;
  @override
  List<AmountDetailsModel>? get logs;
  @override
  String? get bookingStatus;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuestDetailsModel _$GuestDetailsModelFromJson(Map<String, dynamic> json) {
  return _GuestDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$GuestDetailsModel {
  String? get name => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get aadharImage => throw _privateConstructorUsedError;
  String? get aadharNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestDetailsModelCopyWith<GuestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestDetailsModelCopyWith<$Res> {
  factory $GuestDetailsModelCopyWith(
          GuestDetailsModel value, $Res Function(GuestDetailsModel) then) =
      _$GuestDetailsModelCopyWithImpl<$Res, GuestDetailsModel>;
  @useResult
  $Res call(
      {String? name,
      int? mobile,
      String? aadharImage,
      String? aadharNumber,
      String? gender,
      String? dob});
}

/// @nodoc
class _$GuestDetailsModelCopyWithImpl<$Res, $Val extends GuestDetailsModel>
    implements $GuestDetailsModelCopyWith<$Res> {
  _$GuestDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? mobile = freezed,
    Object? aadharImage = freezed,
    Object? aadharNumber = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      aadharImage: freezed == aadharImage
          ? _value.aadharImage
          : aadharImage // ignore: cast_nullable_to_non_nullable
              as String?,
      aadharNumber: freezed == aadharNumber
          ? _value.aadharNumber
          : aadharNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestDetailsModelImplCopyWith<$Res>
    implements $GuestDetailsModelCopyWith<$Res> {
  factory _$$GuestDetailsModelImplCopyWith(_$GuestDetailsModelImpl value,
          $Res Function(_$GuestDetailsModelImpl) then) =
      __$$GuestDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? mobile,
      String? aadharImage,
      String? aadharNumber,
      String? gender,
      String? dob});
}

/// @nodoc
class __$$GuestDetailsModelImplCopyWithImpl<$Res>
    extends _$GuestDetailsModelCopyWithImpl<$Res, _$GuestDetailsModelImpl>
    implements _$$GuestDetailsModelImplCopyWith<$Res> {
  __$$GuestDetailsModelImplCopyWithImpl(_$GuestDetailsModelImpl _value,
      $Res Function(_$GuestDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? mobile = freezed,
    Object? aadharImage = freezed,
    Object? aadharNumber = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
  }) {
    return _then(_$GuestDetailsModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      aadharImage: freezed == aadharImage
          ? _value.aadharImage
          : aadharImage // ignore: cast_nullable_to_non_nullable
              as String?,
      aadharNumber: freezed == aadharNumber
          ? _value.aadharNumber
          : aadharNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestDetailsModelImpl implements _GuestDetailsModel {
  const _$GuestDetailsModelImpl(
      {this.name,
      this.mobile,
      this.aadharImage,
      this.aadharNumber,
      this.gender,
      this.dob});

  factory _$GuestDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestDetailsModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? mobile;
  @override
  final String? aadharImage;
  @override
  final String? aadharNumber;
  @override
  final String? gender;
  @override
  final String? dob;

  @override
  String toString() {
    return 'GuestDetailsModel(name: $name, mobile: $mobile, aadharImage: $aadharImage, aadharNumber: $aadharNumber, gender: $gender, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.aadharImage, aadharImage) ||
                other.aadharImage == aadharImage) &&
            (identical(other.aadharNumber, aadharNumber) ||
                other.aadharNumber == aadharNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, mobile, aadharImage, aadharNumber, gender, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestDetailsModelImplCopyWith<_$GuestDetailsModelImpl> get copyWith =>
      __$$GuestDetailsModelImplCopyWithImpl<_$GuestDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _GuestDetailsModel implements GuestDetailsModel {
  const factory _GuestDetailsModel(
      {final String? name,
      final int? mobile,
      final String? aadharImage,
      final String? aadharNumber,
      final String? gender,
      final String? dob}) = _$GuestDetailsModelImpl;

  factory _GuestDetailsModel.fromJson(Map<String, dynamic> json) =
      _$GuestDetailsModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get mobile;
  @override
  String? get aadharImage;
  @override
  String? get aadharNumber;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  @JsonKey(ignore: true)
  _$$GuestDetailsModelImplCopyWith<_$GuestDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchCouponsResponseModel _$FetchCouponsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchCouponsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchCouponsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<CouponDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchCouponsResponseModelCopyWith<FetchCouponsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchCouponsResponseModelCopyWith<$Res> {
  factory $FetchCouponsResponseModelCopyWith(FetchCouponsResponseModel value,
          $Res Function(FetchCouponsResponseModel) then) =
      _$FetchCouponsResponseModelCopyWithImpl<$Res, FetchCouponsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<CouponDataModel>? data});
}

/// @nodoc
class _$FetchCouponsResponseModelCopyWithImpl<$Res,
        $Val extends FetchCouponsResponseModel>
    implements $FetchCouponsResponseModelCopyWith<$Res> {
  _$FetchCouponsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CouponDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCouponsResponseModelImplCopyWith<$Res>
    implements $FetchCouponsResponseModelCopyWith<$Res> {
  factory _$$FetchCouponsResponseModelImplCopyWith(
          _$FetchCouponsResponseModelImpl value,
          $Res Function(_$FetchCouponsResponseModelImpl) then) =
      __$$FetchCouponsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<CouponDataModel>? data});
}

/// @nodoc
class __$$FetchCouponsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchCouponsResponseModelCopyWithImpl<$Res,
        _$FetchCouponsResponseModelImpl>
    implements _$$FetchCouponsResponseModelImplCopyWith<$Res> {
  __$$FetchCouponsResponseModelImplCopyWithImpl(
      _$FetchCouponsResponseModelImpl _value,
      $Res Function(_$FetchCouponsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchCouponsResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CouponDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchCouponsResponseModelImpl implements _FetchCouponsResponseModel {
  const _$FetchCouponsResponseModelImpl(
      {this.status, this.message, final List<CouponDataModel>? data})
      : _data = data;

  factory _$FetchCouponsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchCouponsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<CouponDataModel>? _data;
  @override
  List<CouponDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchCouponsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCouponsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCouponsResponseModelImplCopyWith<_$FetchCouponsResponseModelImpl>
      get copyWith => __$$FetchCouponsResponseModelImplCopyWithImpl<
          _$FetchCouponsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchCouponsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchCouponsResponseModel implements FetchCouponsResponseModel {
  const factory _FetchCouponsResponseModel(
      {final int? status,
      final String? message,
      final List<CouponDataModel>? data}) = _$FetchCouponsResponseModelImpl;

  factory _FetchCouponsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchCouponsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<CouponDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchCouponsResponseModelImplCopyWith<_$FetchCouponsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCouponResponseModel _$CreateCouponResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateCouponResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateCouponResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CouponDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCouponResponseModelCopyWith<CreateCouponResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCouponResponseModelCopyWith<$Res> {
  factory $CreateCouponResponseModelCopyWith(CreateCouponResponseModel value,
          $Res Function(CreateCouponResponseModel) then) =
      _$CreateCouponResponseModelCopyWithImpl<$Res, CreateCouponResponseModel>;
  @useResult
  $Res call({int? status, String? message, CouponDataModel? data});

  $CouponDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateCouponResponseModelCopyWithImpl<$Res,
        $Val extends CreateCouponResponseModel>
    implements $CreateCouponResponseModelCopyWith<$Res> {
  _$CreateCouponResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CouponDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CouponDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCouponResponseModelImplCopyWith<$Res>
    implements $CreateCouponResponseModelCopyWith<$Res> {
  factory _$$CreateCouponResponseModelImplCopyWith(
          _$CreateCouponResponseModelImpl value,
          $Res Function(_$CreateCouponResponseModelImpl) then) =
      __$$CreateCouponResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, CouponDataModel? data});

  @override
  $CouponDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateCouponResponseModelImplCopyWithImpl<$Res>
    extends _$CreateCouponResponseModelCopyWithImpl<$Res,
        _$CreateCouponResponseModelImpl>
    implements _$$CreateCouponResponseModelImplCopyWith<$Res> {
  __$$CreateCouponResponseModelImplCopyWithImpl(
      _$CreateCouponResponseModelImpl _value,
      $Res Function(_$CreateCouponResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateCouponResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CouponDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCouponResponseModelImpl implements _CreateCouponResponseModel {
  const _$CreateCouponResponseModelImpl({this.status, this.message, this.data});

  factory _$CreateCouponResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCouponResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final CouponDataModel? data;

  @override
  String toString() {
    return 'CreateCouponResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCouponResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCouponResponseModelImplCopyWith<_$CreateCouponResponseModelImpl>
      get copyWith => __$$CreateCouponResponseModelImplCopyWithImpl<
          _$CreateCouponResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCouponResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateCouponResponseModel implements CreateCouponResponseModel {
  const factory _CreateCouponResponseModel(
      {final int? status,
      final String? message,
      final CouponDataModel? data}) = _$CreateCouponResponseModelImpl;

  factory _CreateCouponResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateCouponResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  CouponDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateCouponResponseModelImplCopyWith<_$CreateCouponResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CouponDataModel _$CouponDataModelFromJson(Map<String, dynamic> json) {
  return _CouponDataModel.fromJson(json);
}

/// @nodoc
mixin _$CouponDataModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get discountType => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get singleUse => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get orderValue => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDataModelCopyWith<CouponDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDataModelCopyWith<$Res> {
  factory $CouponDataModelCopyWith(
          CouponDataModel value, $Res Function(CouponDataModel) then) =
      _$CouponDataModelCopyWithImpl<$Res, CouponDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? discountType,
      bool? isActive,
      bool? singleUse,
      String? createdBy,
      DateTime? expiryDate,
      String? code,
      int? orderValue,
      int? discount});
}

/// @nodoc
class _$CouponDataModelCopyWithImpl<$Res, $Val extends CouponDataModel>
    implements $CouponDataModelCopyWith<$Res> {
  _$CouponDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discountType = freezed,
    Object? isActive = freezed,
    Object? singleUse = freezed,
    Object? createdBy = freezed,
    Object? expiryDate = freezed,
    Object? code = freezed,
    Object? orderValue = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      singleUse: freezed == singleUse
          ? _value.singleUse
          : singleUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      orderValue: freezed == orderValue
          ? _value.orderValue
          : orderValue // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponDataModelImplCopyWith<$Res>
    implements $CouponDataModelCopyWith<$Res> {
  factory _$$CouponDataModelImplCopyWith(_$CouponDataModelImpl value,
          $Res Function(_$CouponDataModelImpl) then) =
      __$$CouponDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? discountType,
      bool? isActive,
      bool? singleUse,
      String? createdBy,
      DateTime? expiryDate,
      String? code,
      int? orderValue,
      int? discount});
}

/// @nodoc
class __$$CouponDataModelImplCopyWithImpl<$Res>
    extends _$CouponDataModelCopyWithImpl<$Res, _$CouponDataModelImpl>
    implements _$$CouponDataModelImplCopyWith<$Res> {
  __$$CouponDataModelImplCopyWithImpl(
      _$CouponDataModelImpl _value, $Res Function(_$CouponDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discountType = freezed,
    Object? isActive = freezed,
    Object? singleUse = freezed,
    Object? createdBy = freezed,
    Object? expiryDate = freezed,
    Object? code = freezed,
    Object? orderValue = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$CouponDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      singleUse: freezed == singleUse
          ? _value.singleUse
          : singleUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      orderValue: freezed == orderValue
          ? _value.orderValue
          : orderValue // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDataModelImpl implements _CouponDataModel {
  const _$CouponDataModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.discountType,
      this.isActive,
      this.singleUse,
      this.createdBy,
      this.expiryDate,
      this.code,
      this.orderValue,
      this.discount});

  factory _$CouponDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDataModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? discountType;
  @override
  final bool? isActive;
  @override
  final bool? singleUse;
  @override
  final String? createdBy;
  @override
  final DateTime? expiryDate;
  @override
  final String? code;
  @override
  final int? orderValue;
  @override
  final int? discount;

  @override
  String toString() {
    return 'CouponDataModel(id: $id, discountType: $discountType, isActive: $isActive, singleUse: $singleUse, createdBy: $createdBy, expiryDate: $expiryDate, code: $code, orderValue: $orderValue, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.singleUse, singleUse) ||
                other.singleUse == singleUse) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.orderValue, orderValue) ||
                other.orderValue == orderValue) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, discountType, isActive,
      singleUse, createdBy, expiryDate, code, orderValue, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDataModelImplCopyWith<_$CouponDataModelImpl> get copyWith =>
      __$$CouponDataModelImplCopyWithImpl<_$CouponDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDataModelImplToJson(
      this,
    );
  }
}

abstract class _CouponDataModel implements CouponDataModel {
  const factory _CouponDataModel(
      {@JsonKey(name: '_id') final String? id,
      final String? discountType,
      final bool? isActive,
      final bool? singleUse,
      final String? createdBy,
      final DateTime? expiryDate,
      final String? code,
      final int? orderValue,
      final int? discount}) = _$CouponDataModelImpl;

  factory _CouponDataModel.fromJson(Map<String, dynamic> json) =
      _$CouponDataModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get discountType;
  @override
  bool? get isActive;
  @override
  bool? get singleUse;
  @override
  String? get createdBy;
  @override
  DateTime? get expiryDate;
  @override
  String? get code;
  @override
  int? get orderValue;
  @override
  int? get discount;
  @override
  @JsonKey(ignore: true)
  _$$CouponDataModelImplCopyWith<_$CouponDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
