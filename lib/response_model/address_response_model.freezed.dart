// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoogleAddressResponse _$GoogleAddressResponseFromJson(
    Map<String, dynamic> json) {
  return _GoogleAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$GoogleAddressResponse {
  String? get status => throw _privateConstructorUsedError;
  List<GoogleAddressResult>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleAddressResponseCopyWith<GoogleAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAddressResponseCopyWith<$Res> {
  factory $GoogleAddressResponseCopyWith(GoogleAddressResponse value,
          $Res Function(GoogleAddressResponse) then) =
      _$GoogleAddressResponseCopyWithImpl<$Res, GoogleAddressResponse>;
  @useResult
  $Res call({String? status, List<GoogleAddressResult>? results});
}

/// @nodoc
class _$GoogleAddressResponseCopyWithImpl<$Res,
        $Val extends GoogleAddressResponse>
    implements $GoogleAddressResponseCopyWith<$Res> {
  _$GoogleAddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GoogleAddressResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleAddressResponseImplCopyWith<$Res>
    implements $GoogleAddressResponseCopyWith<$Res> {
  factory _$$GoogleAddressResponseImplCopyWith(
          _$GoogleAddressResponseImpl value,
          $Res Function(_$GoogleAddressResponseImpl) then) =
      __$$GoogleAddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, List<GoogleAddressResult>? results});
}

/// @nodoc
class __$$GoogleAddressResponseImplCopyWithImpl<$Res>
    extends _$GoogleAddressResponseCopyWithImpl<$Res,
        _$GoogleAddressResponseImpl>
    implements _$$GoogleAddressResponseImplCopyWith<$Res> {
  __$$GoogleAddressResponseImplCopyWithImpl(_$GoogleAddressResponseImpl _value,
      $Res Function(_$GoogleAddressResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GoogleAddressResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<GoogleAddressResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleAddressResponseImpl implements _GoogleAddressResponse {
  const _$GoogleAddressResponseImpl(
      {this.status, final List<GoogleAddressResult>? results})
      : _results = results;

  factory _$GoogleAddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleAddressResponseImplFromJson(json);

  @override
  final String? status;
  final List<GoogleAddressResult>? _results;
  @override
  List<GoogleAddressResult>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GoogleAddressResponse(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAddressResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAddressResponseImplCopyWith<_$GoogleAddressResponseImpl>
      get copyWith => __$$GoogleAddressResponseImplCopyWithImpl<
          _$GoogleAddressResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleAddressResponseImplToJson(
      this,
    );
  }
}

abstract class _GoogleAddressResponse implements GoogleAddressResponse {
  const factory _GoogleAddressResponse(
      {final String? status,
      final List<GoogleAddressResult>? results}) = _$GoogleAddressResponseImpl;

  factory _GoogleAddressResponse.fromJson(Map<String, dynamic> json) =
      _$GoogleAddressResponseImpl.fromJson;

  @override
  String? get status;
  @override
  List<GoogleAddressResult>? get results;
  @override
  @JsonKey(ignore: true)
  _$$GoogleAddressResponseImplCopyWith<_$GoogleAddressResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GoogleAddressResult _$GoogleAddressResultFromJson(Map<String, dynamic> json) {
  return _GoogleAddressResult.fromJson(json);
}

/// @nodoc
mixin _$GoogleAddressResult {
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponent =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleAddressResultCopyWith<GoogleAddressResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAddressResultCopyWith<$Res> {
  factory $GoogleAddressResultCopyWith(
          GoogleAddressResult value, $Res Function(GoogleAddressResult) then) =
      _$GoogleAddressResultCopyWithImpl<$Res, GoogleAddressResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponent});
}

/// @nodoc
class _$GoogleAddressResultCopyWithImpl<$Res, $Val extends GoogleAddressResult>
    implements $GoogleAddressResultCopyWith<$Res> {
  _$GoogleAddressResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponent = freezed,
  }) {
    return _then(_value.copyWith(
      addressComponent: freezed == addressComponent
          ? _value.addressComponent
          : addressComponent // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleAddressResultImplCopyWith<$Res>
    implements $GoogleAddressResultCopyWith<$Res> {
  factory _$$GoogleAddressResultImplCopyWith(_$GoogleAddressResultImpl value,
          $Res Function(_$GoogleAddressResultImpl) then) =
      __$$GoogleAddressResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'address_components')
      List<AddressComponent>? addressComponent});
}

/// @nodoc
class __$$GoogleAddressResultImplCopyWithImpl<$Res>
    extends _$GoogleAddressResultCopyWithImpl<$Res, _$GoogleAddressResultImpl>
    implements _$$GoogleAddressResultImplCopyWith<$Res> {
  __$$GoogleAddressResultImplCopyWithImpl(_$GoogleAddressResultImpl _value,
      $Res Function(_$GoogleAddressResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressComponent = freezed,
  }) {
    return _then(_$GoogleAddressResultImpl(
      addressComponent: freezed == addressComponent
          ? _value._addressComponent
          : addressComponent // ignore: cast_nullable_to_non_nullable
              as List<AddressComponent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleAddressResultImpl implements _GoogleAddressResult {
  const _$GoogleAddressResultImpl(
      {@JsonKey(name: 'address_components')
      final List<AddressComponent>? addressComponent})
      : _addressComponent = addressComponent;

  factory _$GoogleAddressResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleAddressResultImplFromJson(json);

  final List<AddressComponent>? _addressComponent;
  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponent {
    final value = _addressComponent;
    if (value == null) return null;
    if (_addressComponent is EqualUnmodifiableListView)
      return _addressComponent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GoogleAddressResult(addressComponent: $addressComponent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAddressResultImpl &&
            const DeepCollectionEquality()
                .equals(other._addressComponent, _addressComponent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressComponent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAddressResultImplCopyWith<_$GoogleAddressResultImpl> get copyWith =>
      __$$GoogleAddressResultImplCopyWithImpl<_$GoogleAddressResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleAddressResultImplToJson(
      this,
    );
  }
}

abstract class _GoogleAddressResult implements GoogleAddressResult {
  const factory _GoogleAddressResult(
          {@JsonKey(name: 'address_components')
          final List<AddressComponent>? addressComponent}) =
      _$GoogleAddressResultImpl;

  factory _GoogleAddressResult.fromJson(Map<String, dynamic> json) =
      _$GoogleAddressResultImpl.fromJson;

  @override
  @JsonKey(name: 'address_components')
  List<AddressComponent>? get addressComponent;
  @override
  @JsonKey(ignore: true)
  _$$GoogleAddressResultImplCopyWith<_$GoogleAddressResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) {
  return _AddressComponent.fromJson(json);
}

/// @nodoc
mixin _$AddressComponent {
  @JsonKey(name: 'long_name')
  String? get longName => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_name')
  String? get shortName => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressComponentCopyWith<AddressComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentCopyWith<$Res> {
  factory $AddressComponentCopyWith(
          AddressComponent value, $Res Function(AddressComponent) then) =
      _$AddressComponentCopyWithImpl<$Res, AddressComponent>;
  @useResult
  $Res call(
      {@JsonKey(name: 'long_name') String? longName,
      @JsonKey(name: 'short_name') String? shortName,
      List<String>? types});
}

/// @nodoc
class _$AddressComponentCopyWithImpl<$Res, $Val extends AddressComponent>
    implements $AddressComponentCopyWith<$Res> {
  _$AddressComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      longName: freezed == longName
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressComponentImplCopyWith<$Res>
    implements $AddressComponentCopyWith<$Res> {
  factory _$$AddressComponentImplCopyWith(_$AddressComponentImpl value,
          $Res Function(_$AddressComponentImpl) then) =
      __$$AddressComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'long_name') String? longName,
      @JsonKey(name: 'short_name') String? shortName,
      List<String>? types});
}

/// @nodoc
class __$$AddressComponentImplCopyWithImpl<$Res>
    extends _$AddressComponentCopyWithImpl<$Res, _$AddressComponentImpl>
    implements _$$AddressComponentImplCopyWith<$Res> {
  __$$AddressComponentImplCopyWithImpl(_$AddressComponentImpl _value,
      $Res Function(_$AddressComponentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longName = freezed,
    Object? shortName = freezed,
    Object? types = freezed,
  }) {
    return _then(_$AddressComponentImpl(
      longName: freezed == longName
          ? _value.longName
          : longName // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressComponentImpl implements _AddressComponent {
  const _$AddressComponentImpl(
      {@JsonKey(name: 'long_name') this.longName,
      @JsonKey(name: 'short_name') this.shortName,
      final List<String>? types})
      : _types = types;

  factory _$AddressComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressComponentImplFromJson(json);

  @override
  @JsonKey(name: 'long_name')
  final String? longName;
  @override
  @JsonKey(name: 'short_name')
  final String? shortName;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressComponent(longName: $longName, shortName: $shortName, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressComponentImpl &&
            (identical(other.longName, longName) ||
                other.longName == longName) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, longName, shortName,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressComponentImplCopyWith<_$AddressComponentImpl> get copyWith =>
      __$$AddressComponentImplCopyWithImpl<_$AddressComponentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressComponentImplToJson(
      this,
    );
  }
}

abstract class _AddressComponent implements AddressComponent {
  const factory _AddressComponent(
      {@JsonKey(name: 'long_name') final String? longName,
      @JsonKey(name: 'short_name') final String? shortName,
      final List<String>? types}) = _$AddressComponentImpl;

  factory _AddressComponent.fromJson(Map<String, dynamic> json) =
      _$AddressComponentImpl.fromJson;

  @override
  @JsonKey(name: 'long_name')
  String? get longName;
  @override
  @JsonKey(name: 'short_name')
  String? get shortName;
  @override
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$AddressComponentImplCopyWith<_$AddressComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddAddressesResponseModel _$AddAddressesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddAddressesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddAddressesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddressDetailResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAddressesResponseModelCopyWith<AddAddressesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressesResponseModelCopyWith<$Res> {
  factory $AddAddressesResponseModelCopyWith(AddAddressesResponseModel value,
          $Res Function(AddAddressesResponseModel) then) =
      _$AddAddressesResponseModelCopyWithImpl<$Res, AddAddressesResponseModel>;
  @useResult
  $Res call({int? status, String? message, AddressDetailResponse? data});

  $AddressDetailResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddAddressesResponseModelCopyWithImpl<$Res,
        $Val extends AddAddressesResponseModel>
    implements $AddAddressesResponseModelCopyWith<$Res> {
  _$AddAddressesResponseModelCopyWithImpl(this._value, this._then);

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
              as AddressDetailResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDetailResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddressDetailResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddAddressesResponseModelImplCopyWith<$Res>
    implements $AddAddressesResponseModelCopyWith<$Res> {
  factory _$$AddAddressesResponseModelImplCopyWith(
          _$AddAddressesResponseModelImpl value,
          $Res Function(_$AddAddressesResponseModelImpl) then) =
      __$$AddAddressesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, AddressDetailResponse? data});

  @override
  $AddressDetailResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddAddressesResponseModelImplCopyWithImpl<$Res>
    extends _$AddAddressesResponseModelCopyWithImpl<$Res,
        _$AddAddressesResponseModelImpl>
    implements _$$AddAddressesResponseModelImplCopyWith<$Res> {
  __$$AddAddressesResponseModelImplCopyWithImpl(
      _$AddAddressesResponseModelImpl _value,
      $Res Function(_$AddAddressesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddAddressesResponseModelImpl(
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
              as AddressDetailResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAddressesResponseModelImpl implements _AddAddressesResponseModel {
  const _$AddAddressesResponseModelImpl({this.status, this.message, this.data});

  factory _$AddAddressesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAddressesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final AddressDetailResponse? data;

  @override
  String toString() {
    return 'AddAddressesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressesResponseModelImpl &&
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
  _$$AddAddressesResponseModelImplCopyWith<_$AddAddressesResponseModelImpl>
      get copyWith => __$$AddAddressesResponseModelImplCopyWithImpl<
          _$AddAddressesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAddressesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddAddressesResponseModel implements AddAddressesResponseModel {
  const factory _AddAddressesResponseModel(
      {final int? status,
      final String? message,
      final AddressDetailResponse? data}) = _$AddAddressesResponseModelImpl;

  factory _AddAddressesResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddAddressesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  AddressDetailResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddAddressesResponseModelImplCopyWith<_$AddAddressesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchAddressesResponseModel _$FetchAddressesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchAddressesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchAddressesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FetchAddressesDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAddressesResponseModelCopyWith<FetchAddressesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAddressesResponseModelCopyWith<$Res> {
  factory $FetchAddressesResponseModelCopyWith(
          FetchAddressesResponseModel value,
          $Res Function(FetchAddressesResponseModel) then) =
      _$FetchAddressesResponseModelCopyWithImpl<$Res,
          FetchAddressesResponseModel>;
  @useResult
  $Res call({int? status, String? message, FetchAddressesDataModel? data});

  $FetchAddressesDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchAddressesResponseModelCopyWithImpl<$Res,
        $Val extends FetchAddressesResponseModel>
    implements $FetchAddressesResponseModelCopyWith<$Res> {
  _$FetchAddressesResponseModelCopyWithImpl(this._value, this._then);

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
              as FetchAddressesDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchAddressesDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FetchAddressesDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchAddressesResponseModelImplCopyWith<$Res>
    implements $FetchAddressesResponseModelCopyWith<$Res> {
  factory _$$FetchAddressesResponseModelImplCopyWith(
          _$FetchAddressesResponseModelImpl value,
          $Res Function(_$FetchAddressesResponseModelImpl) then) =
      __$$FetchAddressesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, FetchAddressesDataModel? data});

  @override
  $FetchAddressesDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchAddressesResponseModelImplCopyWithImpl<$Res>
    extends _$FetchAddressesResponseModelCopyWithImpl<$Res,
        _$FetchAddressesResponseModelImpl>
    implements _$$FetchAddressesResponseModelImplCopyWith<$Res> {
  __$$FetchAddressesResponseModelImplCopyWithImpl(
      _$FetchAddressesResponseModelImpl _value,
      $Res Function(_$FetchAddressesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchAddressesResponseModelImpl(
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
              as FetchAddressesDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchAddressesResponseModelImpl
    implements _FetchAddressesResponseModel {
  const _$FetchAddressesResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchAddressesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchAddressesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final FetchAddressesDataModel? data;

  @override
  String toString() {
    return 'FetchAddressesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAddressesResponseModelImpl &&
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
  _$$FetchAddressesResponseModelImplCopyWith<_$FetchAddressesResponseModelImpl>
      get copyWith => __$$FetchAddressesResponseModelImplCopyWithImpl<
          _$FetchAddressesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchAddressesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchAddressesResponseModel
    implements FetchAddressesResponseModel {
  const factory _FetchAddressesResponseModel(
      {final int? status,
      final String? message,
      final FetchAddressesDataModel? data}) = _$FetchAddressesResponseModelImpl;

  factory _FetchAddressesResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchAddressesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  FetchAddressesDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchAddressesResponseModelImplCopyWith<_$FetchAddressesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchAddressesDataModel _$FetchAddressesDataModelFromJson(
    Map<String, dynamic> json) {
  return _FetchAddressesDataModel.fromJson(json);
}

/// @nodoc
mixin _$FetchAddressesDataModel {
  AddressDetailResponse? get defaultLocation =>
      throw _privateConstructorUsedError;
  List<AddressDetailResponse>? get locations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAddressesDataModelCopyWith<FetchAddressesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAddressesDataModelCopyWith<$Res> {
  factory $FetchAddressesDataModelCopyWith(FetchAddressesDataModel value,
          $Res Function(FetchAddressesDataModel) then) =
      _$FetchAddressesDataModelCopyWithImpl<$Res, FetchAddressesDataModel>;
  @useResult
  $Res call(
      {AddressDetailResponse? defaultLocation,
      List<AddressDetailResponse>? locations});

  $AddressDetailResponseCopyWith<$Res>? get defaultLocation;
}

/// @nodoc
class _$FetchAddressesDataModelCopyWithImpl<$Res,
        $Val extends FetchAddressesDataModel>
    implements $FetchAddressesDataModelCopyWith<$Res> {
  _$FetchAddressesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLocation = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      defaultLocation: freezed == defaultLocation
          ? _value.defaultLocation
          : defaultLocation // ignore: cast_nullable_to_non_nullable
              as AddressDetailResponse?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<AddressDetailResponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDetailResponseCopyWith<$Res>? get defaultLocation {
    if (_value.defaultLocation == null) {
      return null;
    }

    return $AddressDetailResponseCopyWith<$Res>(_value.defaultLocation!,
        (value) {
      return _then(_value.copyWith(defaultLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchAddressesDataModelImplCopyWith<$Res>
    implements $FetchAddressesDataModelCopyWith<$Res> {
  factory _$$FetchAddressesDataModelImplCopyWith(
          _$FetchAddressesDataModelImpl value,
          $Res Function(_$FetchAddressesDataModelImpl) then) =
      __$$FetchAddressesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressDetailResponse? defaultLocation,
      List<AddressDetailResponse>? locations});

  @override
  $AddressDetailResponseCopyWith<$Res>? get defaultLocation;
}

/// @nodoc
class __$$FetchAddressesDataModelImplCopyWithImpl<$Res>
    extends _$FetchAddressesDataModelCopyWithImpl<$Res,
        _$FetchAddressesDataModelImpl>
    implements _$$FetchAddressesDataModelImplCopyWith<$Res> {
  __$$FetchAddressesDataModelImplCopyWithImpl(
      _$FetchAddressesDataModelImpl _value,
      $Res Function(_$FetchAddressesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLocation = freezed,
    Object? locations = freezed,
  }) {
    return _then(_$FetchAddressesDataModelImpl(
      defaultLocation: freezed == defaultLocation
          ? _value.defaultLocation
          : defaultLocation // ignore: cast_nullable_to_non_nullable
              as AddressDetailResponse?,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<AddressDetailResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchAddressesDataModelImpl implements _FetchAddressesDataModel {
  const _$FetchAddressesDataModelImpl(
      {this.defaultLocation, final List<AddressDetailResponse>? locations})
      : _locations = locations;

  factory _$FetchAddressesDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchAddressesDataModelImplFromJson(json);

  @override
  final AddressDetailResponse? defaultLocation;
  final List<AddressDetailResponse>? _locations;
  @override
  List<AddressDetailResponse>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchAddressesDataModel(defaultLocation: $defaultLocation, locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAddressesDataModelImpl &&
            (identical(other.defaultLocation, defaultLocation) ||
                other.defaultLocation == defaultLocation) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, defaultLocation,
      const DeepCollectionEquality().hash(_locations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAddressesDataModelImplCopyWith<_$FetchAddressesDataModelImpl>
      get copyWith => __$$FetchAddressesDataModelImplCopyWithImpl<
          _$FetchAddressesDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchAddressesDataModelImplToJson(
      this,
    );
  }
}

abstract class _FetchAddressesDataModel implements FetchAddressesDataModel {
  const factory _FetchAddressesDataModel(
          {final AddressDetailResponse? defaultLocation,
          final List<AddressDetailResponse>? locations}) =
      _$FetchAddressesDataModelImpl;

  factory _FetchAddressesDataModel.fromJson(Map<String, dynamic> json) =
      _$FetchAddressesDataModelImpl.fromJson;

  @override
  AddressDetailResponse? get defaultLocation;
  @override
  List<AddressDetailResponse>? get locations;
  @override
  @JsonKey(ignore: true)
  _$$FetchAddressesDataModelImplCopyWith<_$FetchAddressesDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressDetailResponse _$AddressDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _AddressDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressDetailResponse {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get addressType => throw _privateConstructorUsedError;
  String? get titleName => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  int? get pinCode => throw _privateConstructorUsedError;
  String? get landMark => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDetailResponseCopyWith<AddressDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDetailResponseCopyWith<$Res> {
  factory $AddressDetailResponseCopyWith(AddressDetailResponse value,
          $Res Function(AddressDetailResponse) then) =
      _$AddressDetailResponseCopyWithImpl<$Res, AddressDetailResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? addressType,
      String? titleName,
      String? address1,
      String? address2,
      String? city,
      String? state,
      int? pinCode,
      String? landMark,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$AddressDetailResponseCopyWithImpl<$Res,
        $Val extends AddressDetailResponse>
    implements $AddressDetailResponseCopyWith<$Res> {
  _$AddressDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addressType = freezed,
    Object? titleName = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? landMark = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      titleName: freezed == titleName
          ? _value.titleName
          : titleName // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDetailResponseImplCopyWith<$Res>
    implements $AddressDetailResponseCopyWith<$Res> {
  factory _$$AddressDetailResponseImplCopyWith(
          _$AddressDetailResponseImpl value,
          $Res Function(_$AddressDetailResponseImpl) then) =
      __$$AddressDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? addressType,
      String? titleName,
      String? address1,
      String? address2,
      String? city,
      String? state,
      int? pinCode,
      String? landMark,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$AddressDetailResponseImplCopyWithImpl<$Res>
    extends _$AddressDetailResponseCopyWithImpl<$Res,
        _$AddressDetailResponseImpl>
    implements _$$AddressDetailResponseImplCopyWith<$Res> {
  __$$AddressDetailResponseImplCopyWithImpl(_$AddressDetailResponseImpl _value,
      $Res Function(_$AddressDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? addressType = freezed,
    Object? titleName = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? landMark = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$AddressDetailResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      titleName: freezed == titleName
          ? _value.titleName
          : titleName // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDetailResponseImpl implements _AddressDetailResponse {
  const _$AddressDetailResponseImpl(
      {@JsonKey(name: "_id") this.id,
      this.addressType,
      this.titleName,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.pinCode,
      this.landMark,
      this.latitude,
      this.longitude});

  factory _$AddressDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? addressType;
  @override
  final String? titleName;
  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final int? pinCode;
  @override
  final String? landMark;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'AddressDetailResponse(id: $id, addressType: $addressType, titleName: $titleName, address1: $address1, address2: $address2, city: $city, state: $state, pinCode: $pinCode, landMark: $landMark, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.titleName, titleName) ||
                other.titleName == titleName) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.landMark, landMark) ||
                other.landMark == landMark) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, addressType, titleName,
      address1, address2, city, state, pinCode, landMark, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDetailResponseImplCopyWith<_$AddressDetailResponseImpl>
      get copyWith => __$$AddressDetailResponseImplCopyWithImpl<
          _$AddressDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _AddressDetailResponse implements AddressDetailResponse {
  const factory _AddressDetailResponse(
      {@JsonKey(name: "_id") final String? id,
      final String? addressType,
      final String? titleName,
      final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final int? pinCode,
      final String? landMark,
      final double? latitude,
      final double? longitude}) = _$AddressDetailResponseImpl;

  factory _AddressDetailResponse.fromJson(Map<String, dynamic> json) =
      _$AddressDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get addressType;
  @override
  String? get titleName;
  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  int? get pinCode;
  @override
  String? get landMark;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$AddressDetailResponseImplCopyWith<_$AddressDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
