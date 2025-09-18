// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingRequestModel _$BookingRequestModelFromJson(Map<String, dynamic> json) {
  return _BookingRequestModel.fromJson(json);
}

/// @nodoc
mixin _$BookingRequestModel {
  RoomModel? get roomModel => throw _privateConstructorUsedError;
  String? get hostelId => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;
  DateTime? get checkInDate => throw _privateConstructorUsedError;
  DateTime? get checkOutDate => throw _privateConstructorUsedError;
  int? get guestCount => throw _privateConstructorUsedError;
  List<GuestDetailsModel>? get guestDetailsList =>
      throw _privateConstructorUsedError;
  String? get couponId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRequestModelCopyWith<BookingRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRequestModelCopyWith<$Res> {
  factory $BookingRequestModelCopyWith(
          BookingRequestModel value, $Res Function(BookingRequestModel) then) =
      _$BookingRequestModelCopyWithImpl<$Res, BookingRequestModel>;
  @useResult
  $Res call(
      {RoomModel? roomModel,
      String? hostelId,
      String? roomId,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount,
      List<GuestDetailsModel>? guestDetailsList,
      String? couponId});

  $RoomModelCopyWith<$Res>? get roomModel;
}

/// @nodoc
class _$BookingRequestModelCopyWithImpl<$Res, $Val extends BookingRequestModel>
    implements $BookingRequestModelCopyWith<$Res> {
  _$BookingRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomModel = freezed,
    Object? hostelId = freezed,
    Object? roomId = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
    Object? guestDetailsList = freezed,
    Object? couponId = freezed,
  }) {
    return _then(_value.copyWith(
      roomModel: freezed == roomModel
          ? _value.roomModel
          : roomModel // ignore: cast_nullable_to_non_nullable
              as RoomModel?,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
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
      guestDetailsList: freezed == guestDetailsList
          ? _value.guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as List<GuestDetailsModel>?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomModelCopyWith<$Res>? get roomModel {
    if (_value.roomModel == null) {
      return null;
    }

    return $RoomModelCopyWith<$Res>(_value.roomModel!, (value) {
      return _then(_value.copyWith(roomModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingRequestModelImplCopyWith<$Res>
    implements $BookingRequestModelCopyWith<$Res> {
  factory _$$BookingRequestModelImplCopyWith(_$BookingRequestModelImpl value,
          $Res Function(_$BookingRequestModelImpl) then) =
      __$$BookingRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoomModel? roomModel,
      String? hostelId,
      String? roomId,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount,
      List<GuestDetailsModel>? guestDetailsList,
      String? couponId});

  @override
  $RoomModelCopyWith<$Res>? get roomModel;
}

/// @nodoc
class __$$BookingRequestModelImplCopyWithImpl<$Res>
    extends _$BookingRequestModelCopyWithImpl<$Res, _$BookingRequestModelImpl>
    implements _$$BookingRequestModelImplCopyWith<$Res> {
  __$$BookingRequestModelImplCopyWithImpl(_$BookingRequestModelImpl _value,
      $Res Function(_$BookingRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomModel = freezed,
    Object? hostelId = freezed,
    Object? roomId = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
    Object? guestDetailsList = freezed,
    Object? couponId = freezed,
  }) {
    return _then(_$BookingRequestModelImpl(
      roomModel: freezed == roomModel
          ? _value.roomModel
          : roomModel // ignore: cast_nullable_to_non_nullable
              as RoomModel?,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
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
      guestDetailsList: freezed == guestDetailsList
          ? _value._guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as List<GuestDetailsModel>?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingRequestModelImpl implements _BookingRequestModel {
  const _$BookingRequestModelImpl(
      {required this.roomModel,
      required this.hostelId,
      required this.roomId,
      required this.checkInDate,
      required this.checkOutDate,
      required this.guestCount,
      required final List<GuestDetailsModel>? guestDetailsList,
      required this.couponId})
      : _guestDetailsList = guestDetailsList;

  factory _$BookingRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingRequestModelImplFromJson(json);

  @override
  final RoomModel? roomModel;
  @override
  final String? hostelId;
  @override
  final String? roomId;
  @override
  final DateTime? checkInDate;
  @override
  final DateTime? checkOutDate;
  @override
  final int? guestCount;
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

  @override
  final String? couponId;

  @override
  String toString() {
    return 'BookingRequestModel(roomModel: $roomModel, hostelId: $hostelId, roomId: $roomId, checkInDate: $checkInDate, checkOutDate: $checkOutDate, guestCount: $guestCount, guestDetailsList: $guestDetailsList, couponId: $couponId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRequestModelImpl &&
            (identical(other.roomModel, roomModel) ||
                other.roomModel == roomModel) &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount) &&
            const DeepCollectionEquality()
                .equals(other._guestDetailsList, _guestDetailsList) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomModel,
      hostelId,
      roomId,
      checkInDate,
      checkOutDate,
      guestCount,
      const DeepCollectionEquality().hash(_guestDetailsList),
      couponId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingRequestModelImplCopyWith<_$BookingRequestModelImpl> get copyWith =>
      __$$BookingRequestModelImplCopyWithImpl<_$BookingRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingRequestModelImplToJson(
      this,
    );
  }
}

abstract class _BookingRequestModel implements BookingRequestModel {
  const factory _BookingRequestModel(
      {required final RoomModel? roomModel,
      required final String? hostelId,
      required final String? roomId,
      required final DateTime? checkInDate,
      required final DateTime? checkOutDate,
      required final int? guestCount,
      required final List<GuestDetailsModel>? guestDetailsList,
      required final String? couponId}) = _$BookingRequestModelImpl;

  factory _BookingRequestModel.fromJson(Map<String, dynamic> json) =
      _$BookingRequestModelImpl.fromJson;

  @override
  RoomModel? get roomModel;
  @override
  String? get hostelId;
  @override
  String? get roomId;
  @override
  DateTime? get checkInDate;
  @override
  DateTime? get checkOutDate;
  @override
  int? get guestCount;
  @override
  List<GuestDetailsModel>? get guestDetailsList;
  @override
  String? get couponId;
  @override
  @JsonKey(ignore: true)
  _$$BookingRequestModelImplCopyWith<_$BookingRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddBalanceRequestModel _$AddBalanceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AddBalanceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddBalanceRequestModel {
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBalanceRequestModelCopyWith<AddBalanceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBalanceRequestModelCopyWith<$Res> {
  factory $AddBalanceRequestModelCopyWith(AddBalanceRequestModel value,
          $Res Function(AddBalanceRequestModel) then) =
      _$AddBalanceRequestModelCopyWithImpl<$Res, AddBalanceRequestModel>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class _$AddBalanceRequestModelCopyWithImpl<$Res,
        $Val extends AddBalanceRequestModel>
    implements $AddBalanceRequestModelCopyWith<$Res> {
  _$AddBalanceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBalanceRequestModelImplCopyWith<$Res>
    implements $AddBalanceRequestModelCopyWith<$Res> {
  factory _$$AddBalanceRequestModelImplCopyWith(
          _$AddBalanceRequestModelImpl value,
          $Res Function(_$AddBalanceRequestModelImpl) then) =
      __$$AddBalanceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$AddBalanceRequestModelImplCopyWithImpl<$Res>
    extends _$AddBalanceRequestModelCopyWithImpl<$Res,
        _$AddBalanceRequestModelImpl>
    implements _$$AddBalanceRequestModelImplCopyWith<$Res> {
  __$$AddBalanceRequestModelImplCopyWithImpl(
      _$AddBalanceRequestModelImpl _value,
      $Res Function(_$AddBalanceRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$AddBalanceRequestModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBalanceRequestModelImpl implements _AddBalanceRequestModel {
  const _$AddBalanceRequestModelImpl({required this.amount});

  factory _$AddBalanceRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBalanceRequestModelImplFromJson(json);

  @override
  final double amount;

  @override
  String toString() {
    return 'AddBalanceRequestModel(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBalanceRequestModelImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBalanceRequestModelImplCopyWith<_$AddBalanceRequestModelImpl>
      get copyWith => __$$AddBalanceRequestModelImplCopyWithImpl<
          _$AddBalanceRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBalanceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddBalanceRequestModel implements AddBalanceRequestModel {
  const factory _AddBalanceRequestModel({required final double amount}) =
      _$AddBalanceRequestModelImpl;

  factory _AddBalanceRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddBalanceRequestModelImpl.fromJson;

  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$AddBalanceRequestModelImplCopyWith<_$AddBalanceRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WithdrawBalanceRequestModel _$WithdrawBalanceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _WithdrawBalanceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawBalanceRequestModel {
  double get amount => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawBalanceRequestModelCopyWith<WithdrawBalanceRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawBalanceRequestModelCopyWith<$Res> {
  factory $WithdrawBalanceRequestModelCopyWith(
          WithdrawBalanceRequestModel value,
          $Res Function(WithdrawBalanceRequestModel) then) =
      _$WithdrawBalanceRequestModelCopyWithImpl<$Res,
          WithdrawBalanceRequestModel>;
  @useResult
  $Res call({double amount, String accountId});
}

/// @nodoc
class _$WithdrawBalanceRequestModelCopyWithImpl<$Res,
        $Val extends WithdrawBalanceRequestModel>
    implements $WithdrawBalanceRequestModelCopyWith<$Res> {
  _$WithdrawBalanceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? accountId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawBalanceRequestModelImplCopyWith<$Res>
    implements $WithdrawBalanceRequestModelCopyWith<$Res> {
  factory _$$WithdrawBalanceRequestModelImplCopyWith(
          _$WithdrawBalanceRequestModelImpl value,
          $Res Function(_$WithdrawBalanceRequestModelImpl) then) =
      __$$WithdrawBalanceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String accountId});
}

/// @nodoc
class __$$WithdrawBalanceRequestModelImplCopyWithImpl<$Res>
    extends _$WithdrawBalanceRequestModelCopyWithImpl<$Res,
        _$WithdrawBalanceRequestModelImpl>
    implements _$$WithdrawBalanceRequestModelImplCopyWith<$Res> {
  __$$WithdrawBalanceRequestModelImplCopyWithImpl(
      _$WithdrawBalanceRequestModelImpl _value,
      $Res Function(_$WithdrawBalanceRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? accountId = null,
  }) {
    return _then(_$WithdrawBalanceRequestModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawBalanceRequestModelImpl
    implements _WithdrawBalanceRequestModel {
  const _$WithdrawBalanceRequestModelImpl(
      {required this.amount, required this.accountId});

  factory _$WithdrawBalanceRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WithdrawBalanceRequestModelImplFromJson(json);

  @override
  final double amount;
  @override
  final String accountId;

  @override
  String toString() {
    return 'WithdrawBalanceRequestModel(amount: $amount, accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawBalanceRequestModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawBalanceRequestModelImplCopyWith<_$WithdrawBalanceRequestModelImpl>
      get copyWith => __$$WithdrawBalanceRequestModelImplCopyWithImpl<
          _$WithdrawBalanceRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawBalanceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawBalanceRequestModel
    implements WithdrawBalanceRequestModel {
  const factory _WithdrawBalanceRequestModel(
      {required final double amount,
      required final String accountId}) = _$WithdrawBalanceRequestModelImpl;

  factory _WithdrawBalanceRequestModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawBalanceRequestModelImpl.fromJson;

  @override
  double get amount;
  @override
  String get accountId;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawBalanceRequestModelImplCopyWith<_$WithdrawBalanceRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
