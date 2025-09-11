// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_request_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitialDepositRequestModel _$InitialDepositRequestModelFromJson(
    Map<String, dynamic> json) {
  return _InitialDepositRequestModel.fromJson(json);
}

/// @nodoc
mixin _$InitialDepositRequestModel {
  String get amount => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialDepositRequestModelCopyWith<InitialDepositRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialDepositRequestModelCopyWith<$Res> {
  factory $InitialDepositRequestModelCopyWith(InitialDepositRequestModel value,
          $Res Function(InitialDepositRequestModel) then) =
      _$InitialDepositRequestModelCopyWithImpl<$Res,
          InitialDepositRequestModel>;
  @useResult
  $Res call({String amount, String transactionId});
}

/// @nodoc
class _$InitialDepositRequestModelCopyWithImpl<$Res,
        $Val extends InitialDepositRequestModel>
    implements $InitialDepositRequestModelCopyWith<$Res> {
  _$InitialDepositRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialDepositRequestModelImplCopyWith<$Res>
    implements $InitialDepositRequestModelCopyWith<$Res> {
  factory _$$InitialDepositRequestModelImplCopyWith(
          _$InitialDepositRequestModelImpl value,
          $Res Function(_$InitialDepositRequestModelImpl) then) =
      __$$InitialDepositRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount, String transactionId});
}

/// @nodoc
class __$$InitialDepositRequestModelImplCopyWithImpl<$Res>
    extends _$InitialDepositRequestModelCopyWithImpl<$Res,
        _$InitialDepositRequestModelImpl>
    implements _$$InitialDepositRequestModelImplCopyWith<$Res> {
  __$$InitialDepositRequestModelImplCopyWithImpl(
      _$InitialDepositRequestModelImpl _value,
      $Res Function(_$InitialDepositRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? transactionId = null,
  }) {
    return _then(_$InitialDepositRequestModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialDepositRequestModelImpl implements _InitialDepositRequestModel {
  const _$InitialDepositRequestModelImpl(
      {required this.amount, required this.transactionId});

  factory _$InitialDepositRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InitialDepositRequestModelImplFromJson(json);

  @override
  final String amount;
  @override
  final String transactionId;

  @override
  String toString() {
    return 'InitialDepositRequestModel(amount: $amount, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDepositRequestModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialDepositRequestModelImplCopyWith<_$InitialDepositRequestModelImpl>
      get copyWith => __$$InitialDepositRequestModelImplCopyWithImpl<
          _$InitialDepositRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialDepositRequestModelImplToJson(
      this,
    );
  }
}

abstract class _InitialDepositRequestModel
    implements InitialDepositRequestModel {
  const factory _InitialDepositRequestModel(
      {required final String amount,
      required final String transactionId}) = _$InitialDepositRequestModelImpl;

  factory _InitialDepositRequestModel.fromJson(Map<String, dynamic> json) =
      _$InitialDepositRequestModelImpl.fromJson;

  @override
  String get amount;
  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$InitialDepositRequestModelImplCopyWith<_$InitialDepositRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpiRequestModel _$UpiRequestModelFromJson(Map<String, dynamic> json) {
  return _UpiRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpiRequestModel {
  String get amount => throw _privateConstructorUsedError;
  String get upiId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpiRequestModelCopyWith<UpiRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpiRequestModelCopyWith<$Res> {
  factory $UpiRequestModelCopyWith(
          UpiRequestModel value, $Res Function(UpiRequestModel) then) =
      _$UpiRequestModelCopyWithImpl<$Res, UpiRequestModel>;
  @useResult
  $Res call({String amount, String upiId});
}

/// @nodoc
class _$UpiRequestModelCopyWithImpl<$Res, $Val extends UpiRequestModel>
    implements $UpiRequestModelCopyWith<$Res> {
  _$UpiRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? upiId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpiRequestModelImplCopyWith<$Res>
    implements $UpiRequestModelCopyWith<$Res> {
  factory _$$UpiRequestModelImplCopyWith(_$UpiRequestModelImpl value,
          $Res Function(_$UpiRequestModelImpl) then) =
      __$$UpiRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount, String upiId});
}

/// @nodoc
class __$$UpiRequestModelImplCopyWithImpl<$Res>
    extends _$UpiRequestModelCopyWithImpl<$Res, _$UpiRequestModelImpl>
    implements _$$UpiRequestModelImplCopyWith<$Res> {
  __$$UpiRequestModelImplCopyWithImpl(
      _$UpiRequestModelImpl _value, $Res Function(_$UpiRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? upiId = null,
  }) {
    return _then(_$UpiRequestModelImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpiRequestModelImpl implements _UpiRequestModel {
  const _$UpiRequestModelImpl({required this.amount, required this.upiId});

  factory _$UpiRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpiRequestModelImplFromJson(json);

  @override
  final String amount;
  @override
  final String upiId;

  @override
  String toString() {
    return 'UpiRequestModel(amount: $amount, upiId: $upiId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpiRequestModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.upiId, upiId) || other.upiId == upiId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, upiId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpiRequestModelImplCopyWith<_$UpiRequestModelImpl> get copyWith =>
      __$$UpiRequestModelImplCopyWithImpl<_$UpiRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpiRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpiRequestModel implements UpiRequestModel {
  const factory _UpiRequestModel(
      {required final String amount,
      required final String upiId}) = _$UpiRequestModelImpl;

  factory _UpiRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpiRequestModelImpl.fromJson;

  @override
  String get amount;
  @override
  String get upiId;
  @override
  @JsonKey(ignore: true)
  _$$UpiRequestModelImplCopyWith<_$UpiRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBankAccountRequestModel _$CreateBankAccountRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateBankAccountRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateBankAccountRequestModel {
  String get fullName => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get ifscCode => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBankAccountRequestModelCopyWith<CreateBankAccountRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBankAccountRequestModelCopyWith<$Res> {
  factory $CreateBankAccountRequestModelCopyWith(
          CreateBankAccountRequestModel value,
          $Res Function(CreateBankAccountRequestModel) then) =
      _$CreateBankAccountRequestModelCopyWithImpl<$Res,
          CreateBankAccountRequestModel>;
  @useResult
  $Res call(
      {String fullName,
      String bankName,
      String ifscCode,
      String accountNumber});
}

/// @nodoc
class _$CreateBankAccountRequestModelCopyWithImpl<$Res,
        $Val extends CreateBankAccountRequestModel>
    implements $CreateBankAccountRequestModelCopyWith<$Res> {
  _$CreateBankAccountRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? bankName = null,
    Object? ifscCode = null,
    Object? accountNumber = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      ifscCode: null == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBankAccountRequestModelImplCopyWith<$Res>
    implements $CreateBankAccountRequestModelCopyWith<$Res> {
  factory _$$CreateBankAccountRequestModelImplCopyWith(
          _$CreateBankAccountRequestModelImpl value,
          $Res Function(_$CreateBankAccountRequestModelImpl) then) =
      __$$CreateBankAccountRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String bankName,
      String ifscCode,
      String accountNumber});
}

/// @nodoc
class __$$CreateBankAccountRequestModelImplCopyWithImpl<$Res>
    extends _$CreateBankAccountRequestModelCopyWithImpl<$Res,
        _$CreateBankAccountRequestModelImpl>
    implements _$$CreateBankAccountRequestModelImplCopyWith<$Res> {
  __$$CreateBankAccountRequestModelImplCopyWithImpl(
      _$CreateBankAccountRequestModelImpl _value,
      $Res Function(_$CreateBankAccountRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? bankName = null,
    Object? ifscCode = null,
    Object? accountNumber = null,
  }) {
    return _then(_$CreateBankAccountRequestModelImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      ifscCode: null == ifscCode
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBankAccountRequestModelImpl
    implements _CreateBankAccountRequestModel {
  const _$CreateBankAccountRequestModelImpl(
      {required this.fullName,
      required this.bankName,
      required this.ifscCode,
      required this.accountNumber});

  factory _$CreateBankAccountRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateBankAccountRequestModelImplFromJson(json);

  @override
  final String fullName;
  @override
  final String bankName;
  @override
  final String ifscCode;
  @override
  final String accountNumber;

  @override
  String toString() {
    return 'CreateBankAccountRequestModel(fullName: $fullName, bankName: $bankName, ifscCode: $ifscCode, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBankAccountRequestModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.ifscCode, ifscCode) ||
                other.ifscCode == ifscCode) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, bankName, ifscCode, accountNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBankAccountRequestModelImplCopyWith<
          _$CreateBankAccountRequestModelImpl>
      get copyWith => __$$CreateBankAccountRequestModelImplCopyWithImpl<
          _$CreateBankAccountRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBankAccountRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateBankAccountRequestModel
    implements CreateBankAccountRequestModel {
  const factory _CreateBankAccountRequestModel(
          {required final String fullName,
          required final String bankName,
          required final String ifscCode,
          required final String accountNumber}) =
      _$CreateBankAccountRequestModelImpl;

  factory _CreateBankAccountRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateBankAccountRequestModelImpl.fromJson;

  @override
  String get fullName;
  @override
  String get bankName;
  @override
  String get ifscCode;
  @override
  String get accountNumber;
  @override
  @JsonKey(ignore: true)
  _$$CreateBankAccountRequestModelImplCopyWith<
          _$CreateBankAccountRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateAccountRequestModel _$CreateAccountRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateAccountRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountRequestModel {
  String get upiId => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountRequestModelCopyWith<CreateAccountRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountRequestModelCopyWith<$Res> {
  factory $CreateAccountRequestModelCopyWith(CreateAccountRequestModel value,
          $Res Function(CreateAccountRequestModel) then) =
      _$CreateAccountRequestModelCopyWithImpl<$Res, CreateAccountRequestModel>;
  @useResult
  $Res call({String upiId, String accountType});
}

/// @nodoc
class _$CreateAccountRequestModelCopyWithImpl<$Res,
        $Val extends CreateAccountRequestModel>
    implements $CreateAccountRequestModelCopyWith<$Res> {
  _$CreateAccountRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upiId = null,
    Object? accountType = null,
  }) {
    return _then(_value.copyWith(
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAccountRequestModelImplCopyWith<$Res>
    implements $CreateAccountRequestModelCopyWith<$Res> {
  factory _$$CreateAccountRequestModelImplCopyWith(
          _$CreateAccountRequestModelImpl value,
          $Res Function(_$CreateAccountRequestModelImpl) then) =
      __$$CreateAccountRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String upiId, String accountType});
}

/// @nodoc
class __$$CreateAccountRequestModelImplCopyWithImpl<$Res>
    extends _$CreateAccountRequestModelCopyWithImpl<$Res,
        _$CreateAccountRequestModelImpl>
    implements _$$CreateAccountRequestModelImplCopyWith<$Res> {
  __$$CreateAccountRequestModelImplCopyWithImpl(
      _$CreateAccountRequestModelImpl _value,
      $Res Function(_$CreateAccountRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upiId = null,
    Object? accountType = null,
  }) {
    return _then(_$CreateAccountRequestModelImpl(
      upiId: null == upiId
          ? _value.upiId
          : upiId // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAccountRequestModelImpl implements _CreateAccountRequestModel {
  const _$CreateAccountRequestModelImpl(
      {required this.upiId, required this.accountType});

  factory _$CreateAccountRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAccountRequestModelImplFromJson(json);

  @override
  final String upiId;
  @override
  final String accountType;

  @override
  String toString() {
    return 'CreateAccountRequestModel(upiId: $upiId, accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccountRequestModelImpl &&
            (identical(other.upiId, upiId) || other.upiId == upiId) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, upiId, accountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountRequestModelImplCopyWith<_$CreateAccountRequestModelImpl>
      get copyWith => __$$CreateAccountRequestModelImplCopyWithImpl<
          _$CreateAccountRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAccountRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateAccountRequestModel implements CreateAccountRequestModel {
  const factory _CreateAccountRequestModel(
      {required final String upiId,
      required final String accountType}) = _$CreateAccountRequestModelImpl;

  factory _CreateAccountRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateAccountRequestModelImpl.fromJson;

  @override
  String get upiId;
  @override
  String get accountType;
  @override
  @JsonKey(ignore: true)
  _$$CreateAccountRequestModelImplCopyWith<_$CreateAccountRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
