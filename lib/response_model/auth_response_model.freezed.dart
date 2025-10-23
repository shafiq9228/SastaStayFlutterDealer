// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrimaryResponseModel _$PrimaryResponseModelFromJson(Map<String, dynamic> json) {
  return _PrimaryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PrimaryResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimaryResponseModelCopyWith<PrimaryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryResponseModelCopyWith<$Res> {
  factory $PrimaryResponseModelCopyWith(PrimaryResponseModel value,
          $Res Function(PrimaryResponseModel) then) =
      _$PrimaryResponseModelCopyWithImpl<$Res, PrimaryResponseModel>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$PrimaryResponseModelCopyWithImpl<$Res,
        $Val extends PrimaryResponseModel>
    implements $PrimaryResponseModelCopyWith<$Res> {
  _$PrimaryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryResponseModelImplCopyWith<$Res>
    implements $PrimaryResponseModelCopyWith<$Res> {
  factory _$$PrimaryResponseModelImplCopyWith(_$PrimaryResponseModelImpl value,
          $Res Function(_$PrimaryResponseModelImpl) then) =
      __$$PrimaryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$PrimaryResponseModelImplCopyWithImpl<$Res>
    extends _$PrimaryResponseModelCopyWithImpl<$Res, _$PrimaryResponseModelImpl>
    implements _$$PrimaryResponseModelImplCopyWith<$Res> {
  __$$PrimaryResponseModelImplCopyWithImpl(_$PrimaryResponseModelImpl _value,
      $Res Function(_$PrimaryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PrimaryResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimaryResponseModelImpl implements _PrimaryResponseModel {
  const _$PrimaryResponseModelImpl({this.status, this.message});

  factory _$PrimaryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimaryResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'PrimaryResponseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryResponseModelImplCopyWith<_$PrimaryResponseModelImpl>
      get copyWith =>
          __$$PrimaryResponseModelImplCopyWithImpl<_$PrimaryResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimaryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PrimaryResponseModel implements PrimaryResponseModel {
  const factory _PrimaryResponseModel(
      {final int? status, final String? message}) = _$PrimaryResponseModelImpl;

  factory _PrimaryResponseModel.fromJson(Map<String, dynamic> json) =
      _$PrimaryResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PrimaryResponseModelImplCopyWith<_$PrimaryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UploadFileResponseModel _$UploadFileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UploadFileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UploadFileResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileResponseModelCopyWith<UploadFileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseModelCopyWith<$Res> {
  factory $UploadFileResponseModelCopyWith(UploadFileResponseModel value,
          $Res Function(UploadFileResponseModel) then) =
      _$UploadFileResponseModelCopyWithImpl<$Res, UploadFileResponseModel>;
  @useResult
  $Res call({int? status, String? message, String? data});
}

/// @nodoc
class _$UploadFileResponseModelCopyWithImpl<$Res,
        $Val extends UploadFileResponseModel>
    implements $UploadFileResponseModelCopyWith<$Res> {
  _$UploadFileResponseModelCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileResponseModelImplCopyWith<$Res>
    implements $UploadFileResponseModelCopyWith<$Res> {
  factory _$$UploadFileResponseModelImplCopyWith(
          _$UploadFileResponseModelImpl value,
          $Res Function(_$UploadFileResponseModelImpl) then) =
      __$$UploadFileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? data});
}

/// @nodoc
class __$$UploadFileResponseModelImplCopyWithImpl<$Res>
    extends _$UploadFileResponseModelCopyWithImpl<$Res,
        _$UploadFileResponseModelImpl>
    implements _$$UploadFileResponseModelImplCopyWith<$Res> {
  __$$UploadFileResponseModelImplCopyWithImpl(
      _$UploadFileResponseModelImpl _value,
      $Res Function(_$UploadFileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UploadFileResponseModelImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileResponseModelImpl implements _UploadFileResponseModel {
  const _$UploadFileResponseModelImpl({this.status, this.message, this.data});

  factory _$UploadFileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? data;

  @override
  String toString() {
    return 'UploadFileResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileResponseModelImpl &&
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
  _$$UploadFileResponseModelImplCopyWith<_$UploadFileResponseModelImpl>
      get copyWith => __$$UploadFileResponseModelImplCopyWithImpl<
          _$UploadFileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UploadFileResponseModel implements UploadFileResponseModel {
  const factory _UploadFileResponseModel(
      {final int? status,
      final String? message,
      final String? data}) = _$UploadFileResponseModelImpl;

  factory _UploadFileResponseModel.fromJson(Map<String, dynamic> json) =
      _$UploadFileResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileResponseModelImplCopyWith<_$UploadFileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FaqModel _$FaqModelFromJson(Map<String, dynamic> json) {
  return _FaqModel.fromJson(json);
}

/// @nodoc
mixin _$FaqModel {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqModelCopyWith<FaqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqModelCopyWith<$Res> {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) then) =
      _$FaqModelCopyWithImpl<$Res, FaqModel>;
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class _$FaqModelCopyWithImpl<$Res, $Val extends FaqModel>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqModelImplCopyWith<$Res>
    implements $FaqModelCopyWith<$Res> {
  factory _$$FaqModelImplCopyWith(
          _$FaqModelImpl value, $Res Function(_$FaqModelImpl) then) =
      __$$FaqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class __$$FaqModelImplCopyWithImpl<$Res>
    extends _$FaqModelCopyWithImpl<$Res, _$FaqModelImpl>
    implements _$$FaqModelImplCopyWith<$Res> {
  __$$FaqModelImplCopyWithImpl(
      _$FaqModelImpl _value, $Res Function(_$FaqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$FaqModelImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqModelImpl implements _FaqModel {
  const _$FaqModelImpl({this.question, this.answer});

  factory _$FaqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqModelImplFromJson(json);

  @override
  final String? question;
  @override
  final String? answer;

  @override
  String toString() {
    return 'FaqModel(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      __$$FaqModelImplCopyWithImpl<_$FaqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqModelImplToJson(
      this,
    );
  }
}

abstract class _FaqModel implements FaqModel {
  const factory _FaqModel({final String? question, final String? answer}) =
      _$FaqModelImpl;

  factory _FaqModel.fromJson(Map<String, dynamic> json) =
      _$FaqModelImpl.fromJson;

  @override
  String? get question;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchUserDetailsResponseModel _$FetchUserDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchUserDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchUserDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DealerModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchUserDetailsResponseModelCopyWith<FetchUserDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUserDetailsResponseModelCopyWith<$Res> {
  factory $FetchUserDetailsResponseModelCopyWith(
          FetchUserDetailsResponseModel value,
          $Res Function(FetchUserDetailsResponseModel) then) =
      _$FetchUserDetailsResponseModelCopyWithImpl<$Res,
          FetchUserDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, DealerModel? data});

  $DealerModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchUserDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchUserDetailsResponseModel>
    implements $FetchUserDetailsResponseModelCopyWith<$Res> {
  _$FetchUserDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as DealerModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealerModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DealerModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchUserDetailsResponseModelImplCopyWith<$Res>
    implements $FetchUserDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchUserDetailsResponseModelImplCopyWith(
          _$FetchUserDetailsResponseModelImpl value,
          $Res Function(_$FetchUserDetailsResponseModelImpl) then) =
      __$$FetchUserDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, DealerModel? data});

  @override
  $DealerModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchUserDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchUserDetailsResponseModelCopyWithImpl<$Res,
        _$FetchUserDetailsResponseModelImpl>
    implements _$$FetchUserDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchUserDetailsResponseModelImplCopyWithImpl(
      _$FetchUserDetailsResponseModelImpl _value,
      $Res Function(_$FetchUserDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchUserDetailsResponseModelImpl(
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
              as DealerModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchUserDetailsResponseModelImpl
    implements _FetchUserDetailsResponseModel {
  const _$FetchUserDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchUserDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchUserDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final DealerModel? data;

  @override
  String toString() {
    return 'FetchUserDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserDetailsResponseModelImpl &&
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
  _$$FetchUserDetailsResponseModelImplCopyWith<
          _$FetchUserDetailsResponseModelImpl>
      get copyWith => __$$FetchUserDetailsResponseModelImplCopyWithImpl<
          _$FetchUserDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchUserDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchUserDetailsResponseModel
    implements FetchUserDetailsResponseModel {
  const factory _FetchUserDetailsResponseModel(
      {final int? status,
      final String? message,
      final DealerModel? data}) = _$FetchUserDetailsResponseModelImpl;

  factory _FetchUserDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchUserDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  DealerModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserDetailsResponseModelImplCopyWith<
          _$FetchUserDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FormHelperDataResponseModel _$FormHelperDataResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FormHelperDataResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FormHelperDataResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HelperDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormHelperDataResponseModelCopyWith<FormHelperDataResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormHelperDataResponseModelCopyWith<$Res> {
  factory $FormHelperDataResponseModelCopyWith(
          FormHelperDataResponseModel value,
          $Res Function(FormHelperDataResponseModel) then) =
      _$FormHelperDataResponseModelCopyWithImpl<$Res,
          FormHelperDataResponseModel>;
  @useResult
  $Res call({int? status, String? message, HelperDataModel? data});

  $HelperDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FormHelperDataResponseModelCopyWithImpl<$Res,
        $Val extends FormHelperDataResponseModel>
    implements $FormHelperDataResponseModelCopyWith<$Res> {
  _$FormHelperDataResponseModelCopyWithImpl(this._value, this._then);

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
              as HelperDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HelperDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HelperDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormHelperDataResponseModelImplCopyWith<$Res>
    implements $FormHelperDataResponseModelCopyWith<$Res> {
  factory _$$FormHelperDataResponseModelImplCopyWith(
          _$FormHelperDataResponseModelImpl value,
          $Res Function(_$FormHelperDataResponseModelImpl) then) =
      __$$FormHelperDataResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HelperDataModel? data});

  @override
  $HelperDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FormHelperDataResponseModelImplCopyWithImpl<$Res>
    extends _$FormHelperDataResponseModelCopyWithImpl<$Res,
        _$FormHelperDataResponseModelImpl>
    implements _$$FormHelperDataResponseModelImplCopyWith<$Res> {
  __$$FormHelperDataResponseModelImplCopyWithImpl(
      _$FormHelperDataResponseModelImpl _value,
      $Res Function(_$FormHelperDataResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FormHelperDataResponseModelImpl(
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
              as HelperDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormHelperDataResponseModelImpl
    implements _FormHelperDataResponseModel {
  const _$FormHelperDataResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FormHelperDataResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FormHelperDataResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HelperDataModel? data;

  @override
  String toString() {
    return 'FormHelperDataResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormHelperDataResponseModelImpl &&
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
  _$$FormHelperDataResponseModelImplCopyWith<_$FormHelperDataResponseModelImpl>
      get copyWith => __$$FormHelperDataResponseModelImplCopyWithImpl<
          _$FormHelperDataResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormHelperDataResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FormHelperDataResponseModel
    implements FormHelperDataResponseModel {
  const factory _FormHelperDataResponseModel(
      {final int? status,
      final String? message,
      final HelperDataModel? data}) = _$FormHelperDataResponseModelImpl;

  factory _FormHelperDataResponseModel.fromJson(Map<String, dynamic> json) =
      _$FormHelperDataResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HelperDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FormHelperDataResponseModelImplCopyWith<_$FormHelperDataResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HelperDataModel _$HelperDataModelFromJson(Map<String, dynamic> json) {
  return _HelperDataModel.fromJson(json);
}

/// @nodoc
mixin _$HelperDataModel {
  bool? get validVersion => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  DealerModel? get dealerDetails => throw _privateConstructorUsedError;
  HostelModel? get primaryHostel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelperDataModelCopyWith<HelperDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelperDataModelCopyWith<$Res> {
  factory $HelperDataModelCopyWith(
          HelperDataModel value, $Res Function(HelperDataModel) then) =
      _$HelperDataModelCopyWithImpl<$Res, HelperDataModel>;
  @useResult
  $Res call(
      {bool? validVersion,
      String? page,
      String? token,
      DealerModel? dealerDetails,
      HostelModel? primaryHostel});

  $DealerModelCopyWith<$Res>? get dealerDetails;
  $HostelModelCopyWith<$Res>? get primaryHostel;
}

/// @nodoc
class _$HelperDataModelCopyWithImpl<$Res, $Val extends HelperDataModel>
    implements $HelperDataModelCopyWith<$Res> {
  _$HelperDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validVersion = freezed,
    Object? page = freezed,
    Object? token = freezed,
    Object? dealerDetails = freezed,
    Object? primaryHostel = freezed,
  }) {
    return _then(_value.copyWith(
      validVersion: freezed == validVersion
          ? _value.validVersion
          : validVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerDetails: freezed == dealerDetails
          ? _value.dealerDetails
          : dealerDetails // ignore: cast_nullable_to_non_nullable
              as DealerModel?,
      primaryHostel: freezed == primaryHostel
          ? _value.primaryHostel
          : primaryHostel // ignore: cast_nullable_to_non_nullable
              as HostelModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealerModelCopyWith<$Res>? get dealerDetails {
    if (_value.dealerDetails == null) {
      return null;
    }

    return $DealerModelCopyWith<$Res>(_value.dealerDetails!, (value) {
      return _then(_value.copyWith(dealerDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HostelModelCopyWith<$Res>? get primaryHostel {
    if (_value.primaryHostel == null) {
      return null;
    }

    return $HostelModelCopyWith<$Res>(_value.primaryHostel!, (value) {
      return _then(_value.copyWith(primaryHostel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HelperDataModelImplCopyWith<$Res>
    implements $HelperDataModelCopyWith<$Res> {
  factory _$$HelperDataModelImplCopyWith(_$HelperDataModelImpl value,
          $Res Function(_$HelperDataModelImpl) then) =
      __$$HelperDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? validVersion,
      String? page,
      String? token,
      DealerModel? dealerDetails,
      HostelModel? primaryHostel});

  @override
  $DealerModelCopyWith<$Res>? get dealerDetails;
  @override
  $HostelModelCopyWith<$Res>? get primaryHostel;
}

/// @nodoc
class __$$HelperDataModelImplCopyWithImpl<$Res>
    extends _$HelperDataModelCopyWithImpl<$Res, _$HelperDataModelImpl>
    implements _$$HelperDataModelImplCopyWith<$Res> {
  __$$HelperDataModelImplCopyWithImpl(
      _$HelperDataModelImpl _value, $Res Function(_$HelperDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validVersion = freezed,
    Object? page = freezed,
    Object? token = freezed,
    Object? dealerDetails = freezed,
    Object? primaryHostel = freezed,
  }) {
    return _then(_$HelperDataModelImpl(
      validVersion: freezed == validVersion
          ? _value.validVersion
          : validVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerDetails: freezed == dealerDetails
          ? _value.dealerDetails
          : dealerDetails // ignore: cast_nullable_to_non_nullable
              as DealerModel?,
      primaryHostel: freezed == primaryHostel
          ? _value.primaryHostel
          : primaryHostel // ignore: cast_nullable_to_non_nullable
              as HostelModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HelperDataModelImpl implements _HelperDataModel {
  const _$HelperDataModelImpl(
      {this.validVersion,
      this.page,
      this.token,
      this.dealerDetails,
      this.primaryHostel});

  factory _$HelperDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HelperDataModelImplFromJson(json);

  @override
  final bool? validVersion;
  @override
  final String? page;
  @override
  final String? token;
  @override
  final DealerModel? dealerDetails;
  @override
  final HostelModel? primaryHostel;

  @override
  String toString() {
    return 'HelperDataModel(validVersion: $validVersion, page: $page, token: $token, dealerDetails: $dealerDetails, primaryHostel: $primaryHostel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HelperDataModelImpl &&
            (identical(other.validVersion, validVersion) ||
                other.validVersion == validVersion) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.dealerDetails, dealerDetails) ||
                other.dealerDetails == dealerDetails) &&
            (identical(other.primaryHostel, primaryHostel) ||
                other.primaryHostel == primaryHostel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, validVersion, page, token, dealerDetails, primaryHostel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HelperDataModelImplCopyWith<_$HelperDataModelImpl> get copyWith =>
      __$$HelperDataModelImplCopyWithImpl<_$HelperDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HelperDataModelImplToJson(
      this,
    );
  }
}

abstract class _HelperDataModel implements HelperDataModel {
  const factory _HelperDataModel(
      {final bool? validVersion,
      final String? page,
      final String? token,
      final DealerModel? dealerDetails,
      final HostelModel? primaryHostel}) = _$HelperDataModelImpl;

  factory _HelperDataModel.fromJson(Map<String, dynamic> json) =
      _$HelperDataModelImpl.fromJson;

  @override
  bool? get validVersion;
  @override
  String? get page;
  @override
  String? get token;
  @override
  DealerModel? get dealerDetails;
  @override
  HostelModel? get primaryHostel;
  @override
  @JsonKey(ignore: true)
  _$$HelperDataModelImplCopyWith<_$HelperDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      int? mobile,
      String? name,
      String? email,
      String? profilePic});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      int? mobile,
      String? name,
      String? email,
      String? profilePic});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.mobile,
      this.name,
      this.email,
      this.profilePic});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? profilePic;

  @override
  String toString() {
    return 'UserModel(id: $id, mobile: $mobile, name: $name, email: $email, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mobile, name, email, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: '_id') final String? id,
      final int? mobile,
      final String? name,
      final String? email,
      final String? profilePic}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DealerModel _$DealerModelFromJson(Map<String, dynamic> json) {
  return _DealerModel.fromJson(json);
}

/// @nodoc
mixin _$DealerModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  int? get monthlyIncome => throw _privateConstructorUsedError;
  int? get totalIncome => throw _privateConstructorUsedError;
  int? get totalVotes => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  List<DocumentDataModel>? get kycDocuments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DealerModelCopyWith<DealerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealerModelCopyWith<$Res> {
  factory $DealerModelCopyWith(
          DealerModel value, $Res Function(DealerModel) then) =
      _$DealerModelCopyWithImpl<$Res, DealerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      int? mobile,
      String? name,
      String? email,
      int? otp,
      String? source,
      String? version,
      String? deviceId,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      dynamic rating,
      List<DocumentDataModel>? kycDocuments});
}

/// @nodoc
class _$DealerModelCopyWithImpl<$Res, $Val extends DealerModel>
    implements $DealerModelCopyWith<$Res> {
  _$DealerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? otp = freezed,
    Object? source = freezed,
    Object? version = freezed,
    Object? deviceId = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
    Object? kycDocuments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyIncome: freezed == monthlyIncome
          ? _value.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIncome: freezed == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: freezed == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kycDocuments: freezed == kycDocuments
          ? _value.kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DealerModelImplCopyWith<$Res>
    implements $DealerModelCopyWith<$Res> {
  factory _$$DealerModelImplCopyWith(
          _$DealerModelImpl value, $Res Function(_$DealerModelImpl) then) =
      __$$DealerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      int? mobile,
      String? name,
      String? email,
      int? otp,
      String? source,
      String? version,
      String? deviceId,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      dynamic rating,
      List<DocumentDataModel>? kycDocuments});
}

/// @nodoc
class __$$DealerModelImplCopyWithImpl<$Res>
    extends _$DealerModelCopyWithImpl<$Res, _$DealerModelImpl>
    implements _$$DealerModelImplCopyWith<$Res> {
  __$$DealerModelImplCopyWithImpl(
      _$DealerModelImpl _value, $Res Function(_$DealerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? otp = freezed,
    Object? source = freezed,
    Object? version = freezed,
    Object? deviceId = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
    Object? kycDocuments = freezed,
  }) {
    return _then(_$DealerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyIncome: freezed == monthlyIncome
          ? _value.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIncome: freezed == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: freezed == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kycDocuments: freezed == kycDocuments
          ? _value._kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DealerModelImpl implements _DealerModel {
  const _$DealerModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.mobile,
      this.name,
      this.email,
      this.otp,
      this.source,
      this.version,
      this.deviceId,
      this.monthlyIncome,
      this.totalIncome,
      this.totalVotes,
      this.rating,
      final List<DocumentDataModel>? kycDocuments})
      : _kycDocuments = kycDocuments;

  factory _$DealerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealerModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final int? otp;
  @override
  final String? source;
  @override
  final String? version;
  @override
  final String? deviceId;
  @override
  final int? monthlyIncome;
  @override
  final int? totalIncome;
  @override
  final int? totalVotes;
  @override
  final dynamic rating;
  final List<DocumentDataModel>? _kycDocuments;
  @override
  List<DocumentDataModel>? get kycDocuments {
    final value = _kycDocuments;
    if (value == null) return null;
    if (_kycDocuments is EqualUnmodifiableListView) return _kycDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DealerModel(id: $id, mobile: $mobile, name: $name, email: $email, otp: $otp, source: $source, version: $version, deviceId: $deviceId, monthlyIncome: $monthlyIncome, totalIncome: $totalIncome, totalVotes: $totalVotes, rating: $rating, kycDocuments: $kycDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other._kycDocuments, _kycDocuments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mobile,
      name,
      email,
      otp,
      source,
      version,
      deviceId,
      monthlyIncome,
      totalIncome,
      totalVotes,
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(_kycDocuments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DealerModelImplCopyWith<_$DealerModelImpl> get copyWith =>
      __$$DealerModelImplCopyWithImpl<_$DealerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealerModelImplToJson(
      this,
    );
  }
}

abstract class _DealerModel implements DealerModel {
  const factory _DealerModel(
      {@JsonKey(name: '_id') final String? id,
      final int? mobile,
      final String? name,
      final String? email,
      final int? otp,
      final String? source,
      final String? version,
      final String? deviceId,
      final int? monthlyIncome,
      final int? totalIncome,
      final int? totalVotes,
      final dynamic rating,
      final List<DocumentDataModel>? kycDocuments}) = _$DealerModelImpl;

  factory _DealerModel.fromJson(Map<String, dynamic> json) =
      _$DealerModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  int? get otp;
  @override
  String? get source;
  @override
  String? get version;
  @override
  String? get deviceId;
  @override
  int? get monthlyIncome;
  @override
  int? get totalIncome;
  @override
  int? get totalVotes;
  @override
  dynamic get rating;
  @override
  List<DocumentDataModel>? get kycDocuments;
  @override
  @JsonKey(ignore: true)
  _$$DealerModelImplCopyWith<_$DealerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentDataModel _$DocumentDataModelFromJson(Map<String, dynamic> json) {
  return _DocumentDataModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentDataModel {
  String? get documentType => throw _privateConstructorUsedError;
  String? get documentStatus => throw _privateConstructorUsedError;
  String? get uploadedUrl => throw _privateConstructorUsedError;
  String? get errorTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDataModelCopyWith<DocumentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDataModelCopyWith<$Res> {
  factory $DocumentDataModelCopyWith(
          DocumentDataModel value, $Res Function(DocumentDataModel) then) =
      _$DocumentDataModelCopyWithImpl<$Res, DocumentDataModel>;
  @useResult
  $Res call(
      {String? documentType,
      String? documentStatus,
      String? uploadedUrl,
      String? errorTxt});
}

/// @nodoc
class _$DocumentDataModelCopyWithImpl<$Res, $Val extends DocumentDataModel>
    implements $DocumentDataModelCopyWith<$Res> {
  _$DocumentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentType = freezed,
    Object? documentStatus = freezed,
    Object? uploadedUrl = freezed,
    Object? errorTxt = freezed,
  }) {
    return _then(_value.copyWith(
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentStatus: freezed == documentStatus
          ? _value.documentStatus
          : documentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedUrl: freezed == uploadedUrl
          ? _value.uploadedUrl
          : uploadedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTxt: freezed == errorTxt
          ? _value.errorTxt
          : errorTxt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentDataModelImplCopyWith<$Res>
    implements $DocumentDataModelCopyWith<$Res> {
  factory _$$DocumentDataModelImplCopyWith(_$DocumentDataModelImpl value,
          $Res Function(_$DocumentDataModelImpl) then) =
      __$$DocumentDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? documentType,
      String? documentStatus,
      String? uploadedUrl,
      String? errorTxt});
}

/// @nodoc
class __$$DocumentDataModelImplCopyWithImpl<$Res>
    extends _$DocumentDataModelCopyWithImpl<$Res, _$DocumentDataModelImpl>
    implements _$$DocumentDataModelImplCopyWith<$Res> {
  __$$DocumentDataModelImplCopyWithImpl(_$DocumentDataModelImpl _value,
      $Res Function(_$DocumentDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentType = freezed,
    Object? documentStatus = freezed,
    Object? uploadedUrl = freezed,
    Object? errorTxt = freezed,
  }) {
    return _then(_$DocumentDataModelImpl(
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentStatus: freezed == documentStatus
          ? _value.documentStatus
          : documentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedUrl: freezed == uploadedUrl
          ? _value.uploadedUrl
          : uploadedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTxt: freezed == errorTxt
          ? _value.errorTxt
          : errorTxt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentDataModelImpl implements _DocumentDataModel {
  const _$DocumentDataModelImpl(
      {required this.documentType,
      required this.documentStatus,
      required this.uploadedUrl,
      required this.errorTxt});

  factory _$DocumentDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentDataModelImplFromJson(json);

  @override
  final String? documentType;
  @override
  final String? documentStatus;
  @override
  final String? uploadedUrl;
  @override
  final String? errorTxt;

  @override
  String toString() {
    return 'DocumentDataModel(documentType: $documentType, documentStatus: $documentStatus, uploadedUrl: $uploadedUrl, errorTxt: $errorTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentDataModelImpl &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentStatus, documentStatus) ||
                other.documentStatus == documentStatus) &&
            (identical(other.uploadedUrl, uploadedUrl) ||
                other.uploadedUrl == uploadedUrl) &&
            (identical(other.errorTxt, errorTxt) ||
                other.errorTxt == errorTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, documentType, documentStatus, uploadedUrl, errorTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentDataModelImplCopyWith<_$DocumentDataModelImpl> get copyWith =>
      __$$DocumentDataModelImplCopyWithImpl<_$DocumentDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentDataModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentDataModel implements DocumentDataModel {
  const factory _DocumentDataModel(
      {required final String? documentType,
      required final String? documentStatus,
      required final String? uploadedUrl,
      required final String? errorTxt}) = _$DocumentDataModelImpl;

  factory _DocumentDataModel.fromJson(Map<String, dynamic> json) =
      _$DocumentDataModelImpl.fromJson;

  @override
  String? get documentType;
  @override
  String? get documentStatus;
  @override
  String? get uploadedUrl;
  @override
  String? get errorTxt;
  @override
  @JsonKey(ignore: true)
  _$$DocumentDataModelImplCopyWith<_$DocumentDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
