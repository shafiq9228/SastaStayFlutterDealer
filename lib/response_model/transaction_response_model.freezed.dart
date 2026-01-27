// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchWithdrawalDetailsResponseModel
    _$FetchWithdrawalDetailsResponseModelFromJson(Map<String, dynamic> json) {
  return _FetchWithdrawalDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchWithdrawalDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  WithdrawalDetailsModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchWithdrawalDetailsResponseModelCopyWith<
          FetchWithdrawalDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchWithdrawalDetailsResponseModelCopyWith<$Res> {
  factory $FetchWithdrawalDetailsResponseModelCopyWith(
          FetchWithdrawalDetailsResponseModel value,
          $Res Function(FetchWithdrawalDetailsResponseModel) then) =
      _$FetchWithdrawalDetailsResponseModelCopyWithImpl<$Res,
          FetchWithdrawalDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, WithdrawalDetailsModel? data});

  $WithdrawalDetailsModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchWithdrawalDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchWithdrawalDetailsResponseModel>
    implements $FetchWithdrawalDetailsResponseModelCopyWith<$Res> {
  _$FetchWithdrawalDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as WithdrawalDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalDetailsModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WithdrawalDetailsModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchWithdrawalDetailsResponseModelImplCopyWith<$Res>
    implements $FetchWithdrawalDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchWithdrawalDetailsResponseModelImplCopyWith(
          _$FetchWithdrawalDetailsResponseModelImpl value,
          $Res Function(_$FetchWithdrawalDetailsResponseModelImpl) then) =
      __$$FetchWithdrawalDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, WithdrawalDetailsModel? data});

  @override
  $WithdrawalDetailsModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchWithdrawalDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchWithdrawalDetailsResponseModelCopyWithImpl<$Res,
        _$FetchWithdrawalDetailsResponseModelImpl>
    implements _$$FetchWithdrawalDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchWithdrawalDetailsResponseModelImplCopyWithImpl(
      _$FetchWithdrawalDetailsResponseModelImpl _value,
      $Res Function(_$FetchWithdrawalDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchWithdrawalDetailsResponseModelImpl(
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
              as WithdrawalDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchWithdrawalDetailsResponseModelImpl
    implements _FetchWithdrawalDetailsResponseModel {
  const _$FetchWithdrawalDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchWithdrawalDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchWithdrawalDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final WithdrawalDetailsModel? data;

  @override
  String toString() {
    return 'FetchWithdrawalDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWithdrawalDetailsResponseModelImpl &&
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
  _$$FetchWithdrawalDetailsResponseModelImplCopyWith<
          _$FetchWithdrawalDetailsResponseModelImpl>
      get copyWith => __$$FetchWithdrawalDetailsResponseModelImplCopyWithImpl<
          _$FetchWithdrawalDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchWithdrawalDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchWithdrawalDetailsResponseModel
    implements FetchWithdrawalDetailsResponseModel {
  const factory _FetchWithdrawalDetailsResponseModel(
          {final int? status,
          final String? message,
          final WithdrawalDetailsModel? data}) =
      _$FetchWithdrawalDetailsResponseModelImpl;

  factory _FetchWithdrawalDetailsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchWithdrawalDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  WithdrawalDetailsModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchWithdrawalDetailsResponseModelImplCopyWith<
          _$FetchWithdrawalDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WithdrawalDetailsModel _$WithdrawalDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _WithdrawalDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalDetailsModel {
  double? get amount => throw _privateConstructorUsedError;
  bool? get isDocumentApproved => throw _privateConstructorUsedError;
  bool? get payUAuthetication => throw _privateConstructorUsedError;
  List<ChargesListModel>? get chargesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalDetailsModelCopyWith<WithdrawalDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalDetailsModelCopyWith<$Res> {
  factory $WithdrawalDetailsModelCopyWith(WithdrawalDetailsModel value,
          $Res Function(WithdrawalDetailsModel) then) =
      _$WithdrawalDetailsModelCopyWithImpl<$Res, WithdrawalDetailsModel>;
  @useResult
  $Res call(
      {double? amount,
      bool? isDocumentApproved,
      bool? payUAuthetication,
      List<ChargesListModel>? chargesList});
}

/// @nodoc
class _$WithdrawalDetailsModelCopyWithImpl<$Res,
        $Val extends WithdrawalDetailsModel>
    implements $WithdrawalDetailsModelCopyWith<$Res> {
  _$WithdrawalDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? isDocumentApproved = freezed,
    Object? payUAuthetication = freezed,
    Object? chargesList = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      isDocumentApproved: freezed == isDocumentApproved
          ? _value.isDocumentApproved
          : isDocumentApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      payUAuthetication: freezed == payUAuthetication
          ? _value.payUAuthetication
          : payUAuthetication // ignore: cast_nullable_to_non_nullable
              as bool?,
      chargesList: freezed == chargesList
          ? _value.chargesList
          : chargesList // ignore: cast_nullable_to_non_nullable
              as List<ChargesListModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawalDetailsModelImplCopyWith<$Res>
    implements $WithdrawalDetailsModelCopyWith<$Res> {
  factory _$$WithdrawalDetailsModelImplCopyWith(
          _$WithdrawalDetailsModelImpl value,
          $Res Function(_$WithdrawalDetailsModelImpl) then) =
      __$$WithdrawalDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? amount,
      bool? isDocumentApproved,
      bool? payUAuthetication,
      List<ChargesListModel>? chargesList});
}

/// @nodoc
class __$$WithdrawalDetailsModelImplCopyWithImpl<$Res>
    extends _$WithdrawalDetailsModelCopyWithImpl<$Res,
        _$WithdrawalDetailsModelImpl>
    implements _$$WithdrawalDetailsModelImplCopyWith<$Res> {
  __$$WithdrawalDetailsModelImplCopyWithImpl(
      _$WithdrawalDetailsModelImpl _value,
      $Res Function(_$WithdrawalDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? isDocumentApproved = freezed,
    Object? payUAuthetication = freezed,
    Object? chargesList = freezed,
  }) {
    return _then(_$WithdrawalDetailsModelImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      isDocumentApproved: freezed == isDocumentApproved
          ? _value.isDocumentApproved
          : isDocumentApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      payUAuthetication: freezed == payUAuthetication
          ? _value.payUAuthetication
          : payUAuthetication // ignore: cast_nullable_to_non_nullable
              as bool?,
      chargesList: freezed == chargesList
          ? _value._chargesList
          : chargesList // ignore: cast_nullable_to_non_nullable
              as List<ChargesListModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalDetailsModelImpl implements _WithdrawalDetailsModel {
  const _$WithdrawalDetailsModelImpl(
      {this.amount,
      this.isDocumentApproved,
      this.payUAuthetication,
      final List<ChargesListModel>? chargesList})
      : _chargesList = chargesList;

  factory _$WithdrawalDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalDetailsModelImplFromJson(json);

  @override
  final double? amount;
  @override
  final bool? isDocumentApproved;
  @override
  final bool? payUAuthetication;
  final List<ChargesListModel>? _chargesList;
  @override
  List<ChargesListModel>? get chargesList {
    final value = _chargesList;
    if (value == null) return null;
    if (_chargesList is EqualUnmodifiableListView) return _chargesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WithdrawalDetailsModel(amount: $amount, isDocumentApproved: $isDocumentApproved, payUAuthetication: $payUAuthetication, chargesList: $chargesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalDetailsModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isDocumentApproved, isDocumentApproved) ||
                other.isDocumentApproved == isDocumentApproved) &&
            (identical(other.payUAuthetication, payUAuthetication) ||
                other.payUAuthetication == payUAuthetication) &&
            const DeepCollectionEquality()
                .equals(other._chargesList, _chargesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, isDocumentApproved,
      payUAuthetication, const DeepCollectionEquality().hash(_chargesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalDetailsModelImplCopyWith<_$WithdrawalDetailsModelImpl>
      get copyWith => __$$WithdrawalDetailsModelImplCopyWithImpl<
          _$WithdrawalDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalDetailsModel implements WithdrawalDetailsModel {
  const factory _WithdrawalDetailsModel(
          {final double? amount,
          final bool? isDocumentApproved,
          final bool? payUAuthetication,
          final List<ChargesListModel>? chargesList}) =
      _$WithdrawalDetailsModelImpl;

  factory _WithdrawalDetailsModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawalDetailsModelImpl.fromJson;

  @override
  double? get amount;
  @override
  bool? get isDocumentApproved;
  @override
  bool? get payUAuthetication;
  @override
  List<ChargesListModel>? get chargesList;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawalDetailsModelImplCopyWith<_$WithdrawalDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChargesListModel _$ChargesListModelFromJson(Map<String, dynamic> json) {
  return _ChargesListModel.fromJson(json);
}

/// @nodoc
mixin _$ChargesListModel {
  String? get name => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get extraData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargesListModelCopyWith<ChargesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargesListModelCopyWith<$Res> {
  factory $ChargesListModelCopyWith(
          ChargesListModel value, $Res Function(ChargesListModel) then) =
      _$ChargesListModelCopyWithImpl<$Res, ChargesListModel>;
  @useResult
  $Res call({String? name, double? amount, String? extraData});
}

/// @nodoc
class _$ChargesListModelCopyWithImpl<$Res, $Val extends ChargesListModel>
    implements $ChargesListModelCopyWith<$Res> {
  _$ChargesListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargesListModelImplCopyWith<$Res>
    implements $ChargesListModelCopyWith<$Res> {
  factory _$$ChargesListModelImplCopyWith(_$ChargesListModelImpl value,
          $Res Function(_$ChargesListModelImpl) then) =
      __$$ChargesListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, double? amount, String? extraData});
}

/// @nodoc
class __$$ChargesListModelImplCopyWithImpl<$Res>
    extends _$ChargesListModelCopyWithImpl<$Res, _$ChargesListModelImpl>
    implements _$$ChargesListModelImplCopyWith<$Res> {
  __$$ChargesListModelImplCopyWithImpl(_$ChargesListModelImpl _value,
      $Res Function(_$ChargesListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? amount = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_$ChargesListModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargesListModelImpl implements _ChargesListModel {
  const _$ChargesListModelImpl({this.name, this.amount, this.extraData});

  factory _$ChargesListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargesListModelImplFromJson(json);

  @override
  final String? name;
  @override
  final double? amount;
  @override
  final String? extraData;

  @override
  String toString() {
    return 'ChargesListModel(name: $name, amount: $amount, extraData: $extraData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargesListModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.extraData, extraData) ||
                other.extraData == extraData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, extraData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargesListModelImplCopyWith<_$ChargesListModelImpl> get copyWith =>
      __$$ChargesListModelImplCopyWithImpl<_$ChargesListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargesListModelImplToJson(
      this,
    );
  }
}

abstract class _ChargesListModel implements ChargesListModel {
  const factory _ChargesListModel(
      {final String? name,
      final double? amount,
      final String? extraData}) = _$ChargesListModelImpl;

  factory _ChargesListModel.fromJson(Map<String, dynamic> json) =
      _$ChargesListModelImpl.fromJson;

  @override
  String? get name;
  @override
  double? get amount;
  @override
  String? get extraData;
  @override
  @JsonKey(ignore: true)
  _$$ChargesListModelImplCopyWith<_$ChargesListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddBalanceResponseModel _$AddBalanceResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddBalanceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddBalanceResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddBalanceDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBalanceResponseModelCopyWith<AddBalanceResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBalanceResponseModelCopyWith<$Res> {
  factory $AddBalanceResponseModelCopyWith(AddBalanceResponseModel value,
          $Res Function(AddBalanceResponseModel) then) =
      _$AddBalanceResponseModelCopyWithImpl<$Res, AddBalanceResponseModel>;
  @useResult
  $Res call({int? status, String? message, AddBalanceDataModel? data});

  $AddBalanceDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddBalanceResponseModelCopyWithImpl<$Res,
        $Val extends AddBalanceResponseModel>
    implements $AddBalanceResponseModelCopyWith<$Res> {
  _$AddBalanceResponseModelCopyWithImpl(this._value, this._then);

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
              as AddBalanceDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddBalanceDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddBalanceDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddBalanceResponseModelImplCopyWith<$Res>
    implements $AddBalanceResponseModelCopyWith<$Res> {
  factory _$$AddBalanceResponseModelImplCopyWith(
          _$AddBalanceResponseModelImpl value,
          $Res Function(_$AddBalanceResponseModelImpl) then) =
      __$$AddBalanceResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, AddBalanceDataModel? data});

  @override
  $AddBalanceDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddBalanceResponseModelImplCopyWithImpl<$Res>
    extends _$AddBalanceResponseModelCopyWithImpl<$Res,
        _$AddBalanceResponseModelImpl>
    implements _$$AddBalanceResponseModelImplCopyWith<$Res> {
  __$$AddBalanceResponseModelImplCopyWithImpl(
      _$AddBalanceResponseModelImpl _value,
      $Res Function(_$AddBalanceResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddBalanceResponseModelImpl(
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
              as AddBalanceDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBalanceResponseModelImpl implements _AddBalanceResponseModel {
  const _$AddBalanceResponseModelImpl({this.status, this.message, this.data});

  factory _$AddBalanceResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBalanceResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final AddBalanceDataModel? data;

  @override
  String toString() {
    return 'AddBalanceResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBalanceResponseModelImpl &&
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
  _$$AddBalanceResponseModelImplCopyWith<_$AddBalanceResponseModelImpl>
      get copyWith => __$$AddBalanceResponseModelImplCopyWithImpl<
          _$AddBalanceResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBalanceResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddBalanceResponseModel implements AddBalanceResponseModel {
  const factory _AddBalanceResponseModel(
      {final int? status,
      final String? message,
      final AddBalanceDataModel? data}) = _$AddBalanceResponseModelImpl;

  factory _AddBalanceResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddBalanceResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  AddBalanceDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddBalanceResponseModelImplCopyWith<_$AddBalanceResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AccountDetailsModel _$AccountDetailsModelFromJson(Map<String, dynamic> json) {
  return _AccountDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AccountDetailsModel {
  int? get accountNumber => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get ifscCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDetailsModelCopyWith<AccountDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsModelCopyWith<$Res> {
  factory $AccountDetailsModelCopyWith(
          AccountDetailsModel value, $Res Function(AccountDetailsModel) then) =
      _$AccountDetailsModelCopyWithImpl<$Res, AccountDetailsModel>;
  @useResult
  $Res call(
      {int? accountNumber, String? bankName, String? ifscCode, String? name});
}

/// @nodoc
class _$AccountDetailsModelCopyWithImpl<$Res, $Val extends AccountDetailsModel>
    implements $AccountDetailsModelCopyWith<$Res> {
  _$AccountDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? bankName = freezed,
    Object? ifscCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDetailsModelImplCopyWith<$Res>
    implements $AccountDetailsModelCopyWith<$Res> {
  factory _$$AccountDetailsModelImplCopyWith(_$AccountDetailsModelImpl value,
          $Res Function(_$AccountDetailsModelImpl) then) =
      __$$AccountDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? accountNumber, String? bankName, String? ifscCode, String? name});
}

/// @nodoc
class __$$AccountDetailsModelImplCopyWithImpl<$Res>
    extends _$AccountDetailsModelCopyWithImpl<$Res, _$AccountDetailsModelImpl>
    implements _$$AccountDetailsModelImplCopyWith<$Res> {
  __$$AccountDetailsModelImplCopyWithImpl(_$AccountDetailsModelImpl _value,
      $Res Function(_$AccountDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountNumber = freezed,
    Object? bankName = freezed,
    Object? ifscCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AccountDetailsModelImpl(
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDetailsModelImpl implements _AccountDetailsModel {
  const _$AccountDetailsModelImpl(
      {this.accountNumber, this.bankName, this.ifscCode, this.name});

  factory _$AccountDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDetailsModelImplFromJson(json);

  @override
  final int? accountNumber;
  @override
  final String? bankName;
  @override
  final String? ifscCode;
  @override
  final String? name;

  @override
  String toString() {
    return 'AccountDetailsModel(accountNumber: $accountNumber, bankName: $bankName, ifscCode: $ifscCode, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDetailsModelImpl &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountNumber, bankName, ifscCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDetailsModelImplCopyWith<_$AccountDetailsModelImpl> get copyWith =>
      __$$AccountDetailsModelImplCopyWithImpl<_$AccountDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AccountDetailsModel implements AccountDetailsModel {
  const factory _AccountDetailsModel(
      {final int? accountNumber,
      final String? bankName,
      final String? ifscCode,
      final String? name}) = _$AccountDetailsModelImpl;

  factory _AccountDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AccountDetailsModelImpl.fromJson;

  @override
  int? get accountNumber;
  @override
  String? get bankName;
  @override
  String? get ifscCode;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$AccountDetailsModelImplCopyWith<_$AccountDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddBalanceDataModel _$AddBalanceDataModelFromJson(Map<String, dynamic> json) {
  return _AddBalanceDataModel.fromJson(json);
}

/// @nodoc
mixin _$AddBalanceDataModel {
  String? get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBalanceDataModelCopyWith<AddBalanceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBalanceDataModelCopyWith<$Res> {
  factory $AddBalanceDataModelCopyWith(
          AddBalanceDataModel value, $Res Function(AddBalanceDataModel) then) =
      _$AddBalanceDataModelCopyWithImpl<$Res, AddBalanceDataModel>;
  @useResult
  $Res call({String? transactionId});
}

/// @nodoc
class _$AddBalanceDataModelCopyWithImpl<$Res, $Val extends AddBalanceDataModel>
    implements $AddBalanceDataModelCopyWith<$Res> {
  _$AddBalanceDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBalanceDataModelImplCopyWith<$Res>
    implements $AddBalanceDataModelCopyWith<$Res> {
  factory _$$AddBalanceDataModelImplCopyWith(_$AddBalanceDataModelImpl value,
          $Res Function(_$AddBalanceDataModelImpl) then) =
      __$$AddBalanceDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? transactionId});
}

/// @nodoc
class __$$AddBalanceDataModelImplCopyWithImpl<$Res>
    extends _$AddBalanceDataModelCopyWithImpl<$Res, _$AddBalanceDataModelImpl>
    implements _$$AddBalanceDataModelImplCopyWith<$Res> {
  __$$AddBalanceDataModelImplCopyWithImpl(_$AddBalanceDataModelImpl _value,
      $Res Function(_$AddBalanceDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(_$AddBalanceDataModelImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBalanceDataModelImpl implements _AddBalanceDataModel {
  const _$AddBalanceDataModelImpl({this.transactionId});

  factory _$AddBalanceDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBalanceDataModelImplFromJson(json);

  @override
  final String? transactionId;

  @override
  String toString() {
    return 'AddBalanceDataModel(transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBalanceDataModelImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBalanceDataModelImplCopyWith<_$AddBalanceDataModelImpl> get copyWith =>
      __$$AddBalanceDataModelImplCopyWithImpl<_$AddBalanceDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBalanceDataModelImplToJson(
      this,
    );
  }
}

abstract class _AddBalanceDataModel implements AddBalanceDataModel {
  const factory _AddBalanceDataModel({final String? transactionId}) =
      _$AddBalanceDataModelImpl;

  factory _AddBalanceDataModel.fromJson(Map<String, dynamic> json) =
      _$AddBalanceDataModelImpl.fromJson;

  @override
  String? get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$AddBalanceDataModelImplCopyWith<_$AddBalanceDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayUAddCustomerResponseModel _$PayUAddCustomerResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PayUAddCustomerResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PayUAddCustomerResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PayUAddCustomerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayUAddCustomerResponseModelCopyWith<PayUAddCustomerResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayUAddCustomerResponseModelCopyWith<$Res> {
  factory $PayUAddCustomerResponseModelCopyWith(
          PayUAddCustomerResponseModel value,
          $Res Function(PayUAddCustomerResponseModel) then) =
      _$PayUAddCustomerResponseModelCopyWithImpl<$Res,
          PayUAddCustomerResponseModel>;
  @useResult
  $Res call({int? status, String? message, PayUAddCustomerDataModel? data});

  $PayUAddCustomerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PayUAddCustomerResponseModelCopyWithImpl<$Res,
        $Val extends PayUAddCustomerResponseModel>
    implements $PayUAddCustomerResponseModelCopyWith<$Res> {
  _$PayUAddCustomerResponseModelCopyWithImpl(this._value, this._then);

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
              as PayUAddCustomerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayUAddCustomerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PayUAddCustomerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayUAddCustomerResponseModelImplCopyWith<$Res>
    implements $PayUAddCustomerResponseModelCopyWith<$Res> {
  factory _$$PayUAddCustomerResponseModelImplCopyWith(
          _$PayUAddCustomerResponseModelImpl value,
          $Res Function(_$PayUAddCustomerResponseModelImpl) then) =
      __$$PayUAddCustomerResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, PayUAddCustomerDataModel? data});

  @override
  $PayUAddCustomerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PayUAddCustomerResponseModelImplCopyWithImpl<$Res>
    extends _$PayUAddCustomerResponseModelCopyWithImpl<$Res,
        _$PayUAddCustomerResponseModelImpl>
    implements _$$PayUAddCustomerResponseModelImplCopyWith<$Res> {
  __$$PayUAddCustomerResponseModelImplCopyWithImpl(
      _$PayUAddCustomerResponseModelImpl _value,
      $Res Function(_$PayUAddCustomerResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PayUAddCustomerResponseModelImpl(
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
              as PayUAddCustomerDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayUAddCustomerResponseModelImpl
    implements _PayUAddCustomerResponseModel {
  const _$PayUAddCustomerResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$PayUAddCustomerResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PayUAddCustomerResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final PayUAddCustomerDataModel? data;

  @override
  String toString() {
    return 'PayUAddCustomerResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayUAddCustomerResponseModelImpl &&
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
  _$$PayUAddCustomerResponseModelImplCopyWith<
          _$PayUAddCustomerResponseModelImpl>
      get copyWith => __$$PayUAddCustomerResponseModelImplCopyWithImpl<
          _$PayUAddCustomerResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayUAddCustomerResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PayUAddCustomerResponseModel
    implements PayUAddCustomerResponseModel {
  const factory _PayUAddCustomerResponseModel(
          {final int? status,
          final String? message,
          final PayUAddCustomerDataModel? data}) =
      _$PayUAddCustomerResponseModelImpl;

  factory _PayUAddCustomerResponseModel.fromJson(Map<String, dynamic> json) =
      _$PayUAddCustomerResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  PayUAddCustomerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$PayUAddCustomerResponseModelImplCopyWith<
          _$PayUAddCustomerResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PayUAddCustomerDataModel _$PayUAddCustomerDataModelFromJson(
    Map<String, dynamic> json) {
  return _PayUAddCustomerDataModel.fromJson(json);
}

/// @nodoc
mixin _$PayUAddCustomerDataModel {
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayUAddCustomerDataModelCopyWith<PayUAddCustomerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayUAddCustomerDataModelCopyWith<$Res> {
  factory $PayUAddCustomerDataModelCopyWith(PayUAddCustomerDataModel value,
          $Res Function(PayUAddCustomerDataModel) then) =
      _$PayUAddCustomerDataModelCopyWithImpl<$Res, PayUAddCustomerDataModel>;
  @useResult
  $Res call({String? state});
}

/// @nodoc
class _$PayUAddCustomerDataModelCopyWithImpl<$Res,
        $Val extends PayUAddCustomerDataModel>
    implements $PayUAddCustomerDataModelCopyWith<$Res> {
  _$PayUAddCustomerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayUAddCustomerDataModelImplCopyWith<$Res>
    implements $PayUAddCustomerDataModelCopyWith<$Res> {
  factory _$$PayUAddCustomerDataModelImplCopyWith(
          _$PayUAddCustomerDataModelImpl value,
          $Res Function(_$PayUAddCustomerDataModelImpl) then) =
      __$$PayUAddCustomerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? state});
}

/// @nodoc
class __$$PayUAddCustomerDataModelImplCopyWithImpl<$Res>
    extends _$PayUAddCustomerDataModelCopyWithImpl<$Res,
        _$PayUAddCustomerDataModelImpl>
    implements _$$PayUAddCustomerDataModelImplCopyWith<$Res> {
  __$$PayUAddCustomerDataModelImplCopyWithImpl(
      _$PayUAddCustomerDataModelImpl _value,
      $Res Function(_$PayUAddCustomerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$PayUAddCustomerDataModelImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayUAddCustomerDataModelImpl implements _PayUAddCustomerDataModel {
  const _$PayUAddCustomerDataModelImpl({this.state});

  factory _$PayUAddCustomerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayUAddCustomerDataModelImplFromJson(json);

  @override
  final String? state;

  @override
  String toString() {
    return 'PayUAddCustomerDataModel(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayUAddCustomerDataModelImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayUAddCustomerDataModelImplCopyWith<_$PayUAddCustomerDataModelImpl>
      get copyWith => __$$PayUAddCustomerDataModelImplCopyWithImpl<
          _$PayUAddCustomerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayUAddCustomerDataModelImplToJson(
      this,
    );
  }
}

abstract class _PayUAddCustomerDataModel implements PayUAddCustomerDataModel {
  const factory _PayUAddCustomerDataModel({final String? state}) =
      _$PayUAddCustomerDataModelImpl;

  factory _PayUAddCustomerDataModel.fromJson(Map<String, dynamic> json) =
      _$PayUAddCustomerDataModelImpl.fromJson;

  @override
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$PayUAddCustomerDataModelImplCopyWith<_$PayUAddCustomerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchAccountsResponseModel _$FetchAccountsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchAccountsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchAccountsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UpiData>? get data => throw _privateConstructorUsedError;
  OptionsData? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAccountsResponseModelCopyWith<FetchAccountsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAccountsResponseModelCopyWith<$Res> {
  factory $FetchAccountsResponseModelCopyWith(FetchAccountsResponseModel value,
          $Res Function(FetchAccountsResponseModel) then) =
      _$FetchAccountsResponseModelCopyWithImpl<$Res,
          FetchAccountsResponseModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      List<UpiData>? data,
      OptionsData? options});

  $OptionsDataCopyWith<$Res>? get options;
}

/// @nodoc
class _$FetchAccountsResponseModelCopyWithImpl<$Res,
        $Val extends FetchAccountsResponseModel>
    implements $FetchAccountsResponseModelCopyWith<$Res> {
  _$FetchAccountsResponseModelCopyWithImpl(this._value, this._then);

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
    Object? options = freezed,
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
              as List<UpiData>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as OptionsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OptionsDataCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $OptionsDataCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchAccountsResponseModelImplCopyWith<$Res>
    implements $FetchAccountsResponseModelCopyWith<$Res> {
  factory _$$FetchAccountsResponseModelImplCopyWith(
          _$FetchAccountsResponseModelImpl value,
          $Res Function(_$FetchAccountsResponseModelImpl) then) =
      __$$FetchAccountsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      List<UpiData>? data,
      OptionsData? options});

  @override
  $OptionsDataCopyWith<$Res>? get options;
}

/// @nodoc
class __$$FetchAccountsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchAccountsResponseModelCopyWithImpl<$Res,
        _$FetchAccountsResponseModelImpl>
    implements _$$FetchAccountsResponseModelImplCopyWith<$Res> {
  __$$FetchAccountsResponseModelImplCopyWithImpl(
      _$FetchAccountsResponseModelImpl _value,
      $Res Function(_$FetchAccountsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? options = freezed,
  }) {
    return _then(_$FetchAccountsResponseModelImpl(
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
              as List<UpiData>?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as OptionsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchAccountsResponseModelImpl implements _FetchAccountsResponseModel {
  const _$FetchAccountsResponseModelImpl(
      {this.status, this.message, final List<UpiData>? data, this.options})
      : _data = data;

  factory _$FetchAccountsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchAccountsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<UpiData>? _data;
  @override
  List<UpiData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OptionsData? options;

  @override
  String toString() {
    return 'FetchAccountsResponseModel(status: $status, message: $message, data: $data, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_data), options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAccountsResponseModelImplCopyWith<_$FetchAccountsResponseModelImpl>
      get copyWith => __$$FetchAccountsResponseModelImplCopyWithImpl<
          _$FetchAccountsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchAccountsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchAccountsResponseModel
    implements FetchAccountsResponseModel {
  const factory _FetchAccountsResponseModel(
      {final int? status,
      final String? message,
      final List<UpiData>? data,
      final OptionsData? options}) = _$FetchAccountsResponseModelImpl;

  factory _FetchAccountsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchAccountsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<UpiData>? get data;
  @override
  OptionsData? get options;
  @override
  @JsonKey(ignore: true)
  _$$FetchAccountsResponseModelImplCopyWith<_$FetchAccountsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OptionsData _$OptionsDataFromJson(Map<String, dynamic> json) {
  return _OptionsData.fromJson(json);
}

/// @nodoc
mixin _$OptionsData {
  bool? get upiWithdrawals => throw _privateConstructorUsedError;
  bool? get bankWithdrawals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionsDataCopyWith<OptionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsDataCopyWith<$Res> {
  factory $OptionsDataCopyWith(
          OptionsData value, $Res Function(OptionsData) then) =
      _$OptionsDataCopyWithImpl<$Res, OptionsData>;
  @useResult
  $Res call({bool? upiWithdrawals, bool? bankWithdrawals});
}

/// @nodoc
class _$OptionsDataCopyWithImpl<$Res, $Val extends OptionsData>
    implements $OptionsDataCopyWith<$Res> {
  _$OptionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upiWithdrawals = freezed,
    Object? bankWithdrawals = freezed,
  }) {
    return _then(_value.copyWith(
      upiWithdrawals: freezed == upiWithdrawals
          ? _value.upiWithdrawals
          : upiWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankWithdrawals: freezed == bankWithdrawals
          ? _value.bankWithdrawals
          : bankWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionsDataImplCopyWith<$Res>
    implements $OptionsDataCopyWith<$Res> {
  factory _$$OptionsDataImplCopyWith(
          _$OptionsDataImpl value, $Res Function(_$OptionsDataImpl) then) =
      __$$OptionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? upiWithdrawals, bool? bankWithdrawals});
}

/// @nodoc
class __$$OptionsDataImplCopyWithImpl<$Res>
    extends _$OptionsDataCopyWithImpl<$Res, _$OptionsDataImpl>
    implements _$$OptionsDataImplCopyWith<$Res> {
  __$$OptionsDataImplCopyWithImpl(
      _$OptionsDataImpl _value, $Res Function(_$OptionsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upiWithdrawals = freezed,
    Object? bankWithdrawals = freezed,
  }) {
    return _then(_$OptionsDataImpl(
      upiWithdrawals: freezed == upiWithdrawals
          ? _value.upiWithdrawals
          : upiWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool?,
      bankWithdrawals: freezed == bankWithdrawals
          ? _value.bankWithdrawals
          : bankWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionsDataImpl implements _OptionsData {
  const _$OptionsDataImpl({this.upiWithdrawals, this.bankWithdrawals});

  factory _$OptionsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsDataImplFromJson(json);

  @override
  final bool? upiWithdrawals;
  @override
  final bool? bankWithdrawals;

  @override
  String toString() {
    return 'OptionsData(upiWithdrawals: $upiWithdrawals, bankWithdrawals: $bankWithdrawals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsDataImpl &&
            (identical(other.upiWithdrawals, upiWithdrawals) ||
                other.upiWithdrawals == upiWithdrawals) &&
            (identical(other.bankWithdrawals, bankWithdrawals) ||
                other.bankWithdrawals == bankWithdrawals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upiWithdrawals, bankWithdrawals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsDataImplCopyWith<_$OptionsDataImpl> get copyWith =>
      __$$OptionsDataImplCopyWithImpl<_$OptionsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsDataImplToJson(
      this,
    );
  }
}

abstract class _OptionsData implements OptionsData {
  const factory _OptionsData(
      {final bool? upiWithdrawals,
      final bool? bankWithdrawals}) = _$OptionsDataImpl;

  factory _OptionsData.fromJson(Map<String, dynamic> json) =
      _$OptionsDataImpl.fromJson;

  @override
  bool? get upiWithdrawals;
  @override
  bool? get bankWithdrawals;
  @override
  @JsonKey(ignore: true)
  _$$OptionsDataImplCopyWith<_$OptionsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpiData _$UpiDataFromJson(Map<String, dynamic> json) {
  return _UpiData.fromJson(json);
}

/// @nodoc
mixin _$UpiData {
  String? get id => throw _privateConstructorUsedError;
  String? get accountType => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get ifscCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  bool? get primaryAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpiDataCopyWith<UpiData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpiDataCopyWith<$Res> {
  factory $UpiDataCopyWith(UpiData value, $Res Function(UpiData) then) =
      _$UpiDataCopyWithImpl<$Res, UpiData>;
  @useResult
  $Res call(
      {String? id,
      String? accountType,
      String? accountNumber,
      String? bankName,
      String? ifscCode,
      String? name,
      String? fullName,
      bool? primaryAccount});
}

/// @nodoc
class _$UpiDataCopyWithImpl<$Res, $Val extends UpiData>
    implements $UpiDataCopyWith<$Res> {
  _$UpiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountType = freezed,
    Object? accountNumber = freezed,
    Object? bankName = freezed,
    Object? ifscCode = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? primaryAccount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryAccount: freezed == primaryAccount
          ? _value.primaryAccount
          : primaryAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpiDataImplCopyWith<$Res> implements $UpiDataCopyWith<$Res> {
  factory _$$UpiDataImplCopyWith(
          _$UpiDataImpl value, $Res Function(_$UpiDataImpl) then) =
      __$$UpiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? accountType,
      String? accountNumber,
      String? bankName,
      String? ifscCode,
      String? name,
      String? fullName,
      bool? primaryAccount});
}

/// @nodoc
class __$$UpiDataImplCopyWithImpl<$Res>
    extends _$UpiDataCopyWithImpl<$Res, _$UpiDataImpl>
    implements _$$UpiDataImplCopyWith<$Res> {
  __$$UpiDataImplCopyWithImpl(
      _$UpiDataImpl _value, $Res Function(_$UpiDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? accountType = freezed,
    Object? accountNumber = freezed,
    Object? bankName = freezed,
    Object? ifscCode = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? primaryAccount = freezed,
  }) {
    return _then(_$UpiDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: freezed == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryAccount: freezed == primaryAccount
          ? _value.primaryAccount
          : primaryAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpiDataImpl implements _UpiData {
  const _$UpiDataImpl(
      {this.id,
      this.accountType,
      this.accountNumber,
      this.bankName,
      this.ifscCode,
      this.name,
      this.fullName,
      this.primaryAccount});

  factory _$UpiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpiDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? accountType;
  @override
  final String? accountNumber;
  @override
  final String? bankName;
  @override
  final String? ifscCode;
  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final bool? primaryAccount;

  @override
  String toString() {
    return 'UpiData(id: $id, accountType: $accountType, accountNumber: $accountNumber, bankName: $bankName, ifscCode: $ifscCode, name: $name, fullName: $fullName, primaryAccount: $primaryAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpiDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.primaryAccount, primaryAccount) ||
                other.primaryAccount == primaryAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountType, accountNumber,
      bankName, ifscCode, name, fullName, primaryAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpiDataImplCopyWith<_$UpiDataImpl> get copyWith =>
      __$$UpiDataImplCopyWithImpl<_$UpiDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpiDataImplToJson(
      this,
    );
  }
}

abstract class _UpiData implements UpiData {
  const factory _UpiData(
      {final String? id,
      final String? accountType,
      final String? accountNumber,
      final String? bankName,
      final String? ifscCode,
      final String? name,
      final String? fullName,
      final bool? primaryAccount}) = _$UpiDataImpl;

  factory _UpiData.fromJson(Map<String, dynamic> json) = _$UpiDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get accountType;
  @override
  String? get accountNumber;
  @override
  String? get bankName;
  @override
  String? get ifscCode;
  @override
  String? get name;
  @override
  String? get fullName;
  @override
  bool? get primaryAccount;
  @override
  @JsonKey(ignore: true)
  _$$UpiDataImplCopyWith<_$UpiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
