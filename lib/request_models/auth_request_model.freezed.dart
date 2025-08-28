// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationRequestModel _$PaginationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PaginationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationRequestModel {
  String? get hostelId => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationRequestModelCopyWith<PaginationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationRequestModelCopyWith<$Res> {
  factory $PaginationRequestModelCopyWith(PaginationRequestModel value,
          $Res Function(PaginationRequestModel) then) =
      _$PaginationRequestModelCopyWithImpl<$Res, PaginationRequestModel>;
  @useResult
  $Res call(
      {String? hostelId,
      String? roomId,
      String? query,
      String? searchQuery,
      String? type,
      int? page});
}

/// @nodoc
class _$PaginationRequestModelCopyWithImpl<$Res,
        $Val extends PaginationRequestModel>
    implements $PaginationRequestModelCopyWith<$Res> {
  _$PaginationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = freezed,
    Object? roomId = freezed,
    Object? query = freezed,
    Object? searchQuery = freezed,
    Object? type = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationRequestModelImplCopyWith<$Res>
    implements $PaginationRequestModelCopyWith<$Res> {
  factory _$$PaginationRequestModelImplCopyWith(
          _$PaginationRequestModelImpl value,
          $Res Function(_$PaginationRequestModelImpl) then) =
      __$$PaginationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hostelId,
      String? roomId,
      String? query,
      String? searchQuery,
      String? type,
      int? page});
}

/// @nodoc
class __$$PaginationRequestModelImplCopyWithImpl<$Res>
    extends _$PaginationRequestModelCopyWithImpl<$Res,
        _$PaginationRequestModelImpl>
    implements _$$PaginationRequestModelImplCopyWith<$Res> {
  __$$PaginationRequestModelImplCopyWithImpl(
      _$PaginationRequestModelImpl _value,
      $Res Function(_$PaginationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = freezed,
    Object? roomId = freezed,
    Object? query = freezed,
    Object? searchQuery = freezed,
    Object? type = freezed,
    Object? page = freezed,
  }) {
    return _then(_$PaginationRequestModelImpl(
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationRequestModelImpl implements _PaginationRequestModel {
  const _$PaginationRequestModelImpl(
      {this.hostelId,
      this.roomId,
      this.query,
      this.searchQuery,
      this.type,
      required this.page});

  factory _$PaginationRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationRequestModelImplFromJson(json);

  @override
  final String? hostelId;
  @override
  final String? roomId;
  @override
  final String? query;
  @override
  final String? searchQuery;
  @override
  final String? type;
  @override
  final int? page;

  @override
  String toString() {
    return 'PaginationRequestModel(hostelId: $hostelId, roomId: $roomId, query: $query, searchQuery: $searchQuery, type: $type, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationRequestModelImpl &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hostelId, roomId, query, searchQuery, type, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationRequestModelImplCopyWith<_$PaginationRequestModelImpl>
      get copyWith => __$$PaginationRequestModelImplCopyWithImpl<
          _$PaginationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PaginationRequestModel implements PaginationRequestModel {
  const factory _PaginationRequestModel(
      {final String? hostelId,
      final String? roomId,
      final String? query,
      final String? searchQuery,
      final String? type,
      required final int? page}) = _$PaginationRequestModelImpl;

  factory _PaginationRequestModel.fromJson(Map<String, dynamic> json) =
      _$PaginationRequestModelImpl.fromJson;

  @override
  String? get hostelId;
  @override
  String? get roomId;
  @override
  String? get query;
  @override
  String? get searchQuery;
  @override
  String? get type;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$PaginationRequestModelImplCopyWith<_$PaginationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SendOtpRequestModel _$SendOtpRequestModelFromJson(Map<String, dynamic> json) {
  return _SendOtpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SendOtpRequestModel {
  int? get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpRequestModelCopyWith<SendOtpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpRequestModelCopyWith<$Res> {
  factory $SendOtpRequestModelCopyWith(
          SendOtpRequestModel value, $Res Function(SendOtpRequestModel) then) =
      _$SendOtpRequestModelCopyWithImpl<$Res, SendOtpRequestModel>;
  @useResult
  $Res call({int? mobile});
}

/// @nodoc
class _$SendOtpRequestModelCopyWithImpl<$Res, $Val extends SendOtpRequestModel>
    implements $SendOtpRequestModelCopyWith<$Res> {
  _$SendOtpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = freezed,
  }) {
    return _then(_value.copyWith(
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpRequestModelImplCopyWith<$Res>
    implements $SendOtpRequestModelCopyWith<$Res> {
  factory _$$SendOtpRequestModelImplCopyWith(_$SendOtpRequestModelImpl value,
          $Res Function(_$SendOtpRequestModelImpl) then) =
      __$$SendOtpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? mobile});
}

/// @nodoc
class __$$SendOtpRequestModelImplCopyWithImpl<$Res>
    extends _$SendOtpRequestModelCopyWithImpl<$Res, _$SendOtpRequestModelImpl>
    implements _$$SendOtpRequestModelImplCopyWith<$Res> {
  __$$SendOtpRequestModelImplCopyWithImpl(_$SendOtpRequestModelImpl _value,
      $Res Function(_$SendOtpRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = freezed,
  }) {
    return _then(_$SendOtpRequestModelImpl(
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpRequestModelImpl implements _SendOtpRequestModel {
  const _$SendOtpRequestModelImpl({required this.mobile});

  factory _$SendOtpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpRequestModelImplFromJson(json);

  @override
  final int? mobile;

  @override
  String toString() {
    return 'SendOtpRequestModel(mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpRequestModelImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpRequestModelImplCopyWith<_$SendOtpRequestModelImpl> get copyWith =>
      __$$SendOtpRequestModelImplCopyWithImpl<_$SendOtpRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SendOtpRequestModel implements SendOtpRequestModel {
  const factory _SendOtpRequestModel({required final int? mobile}) =
      _$SendOtpRequestModelImpl;

  factory _SendOtpRequestModel.fromJson(Map<String, dynamic> json) =
      _$SendOtpRequestModelImpl.fromJson;

  @override
  int? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpRequestModelImplCopyWith<_$SendOtpRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOtpRequestModel _$VerifyOtpRequestModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyOtpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpRequestModel {
  int? get mobile => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpRequestModelCopyWith<VerifyOtpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpRequestModelCopyWith<$Res> {
  factory $VerifyOtpRequestModelCopyWith(VerifyOtpRequestModel value,
          $Res Function(VerifyOtpRequestModel) then) =
      _$VerifyOtpRequestModelCopyWithImpl<$Res, VerifyOtpRequestModel>;
  @useResult
  $Res call(
      {int? mobile,
      int? otp,
      String? source,
      String? version,
      String? deviceId});
}

/// @nodoc
class _$VerifyOtpRequestModelCopyWithImpl<$Res,
        $Val extends VerifyOtpRequestModel>
    implements $VerifyOtpRequestModelCopyWith<$Res> {
  _$VerifyOtpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = freezed,
    Object? otp = freezed,
    Object? source = freezed,
    Object? version = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpRequestModelImplCopyWith<$Res>
    implements $VerifyOtpRequestModelCopyWith<$Res> {
  factory _$$VerifyOtpRequestModelImplCopyWith(
          _$VerifyOtpRequestModelImpl value,
          $Res Function(_$VerifyOtpRequestModelImpl) then) =
      __$$VerifyOtpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mobile,
      int? otp,
      String? source,
      String? version,
      String? deviceId});
}

/// @nodoc
class __$$VerifyOtpRequestModelImplCopyWithImpl<$Res>
    extends _$VerifyOtpRequestModelCopyWithImpl<$Res,
        _$VerifyOtpRequestModelImpl>
    implements _$$VerifyOtpRequestModelImplCopyWith<$Res> {
  __$$VerifyOtpRequestModelImplCopyWithImpl(_$VerifyOtpRequestModelImpl _value,
      $Res Function(_$VerifyOtpRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = freezed,
    Object? otp = freezed,
    Object? source = freezed,
    Object? version = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$VerifyOtpRequestModelImpl(
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpRequestModelImpl implements _VerifyOtpRequestModel {
  const _$VerifyOtpRequestModelImpl(
      {required this.mobile,
      required this.otp,
      required this.source,
      required this.version,
      required this.deviceId});

  factory _$VerifyOtpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpRequestModelImplFromJson(json);

  @override
  final int? mobile;
  @override
  final int? otp;
  @override
  final String? source;
  @override
  final String? version;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'VerifyOtpRequestModel(mobile: $mobile, otp: $otp, source: $source, version: $version, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpRequestModelImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mobile, otp, source, version, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpRequestModelImplCopyWith<_$VerifyOtpRequestModelImpl>
      get copyWith => __$$VerifyOtpRequestModelImplCopyWithImpl<
          _$VerifyOtpRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpRequestModel implements VerifyOtpRequestModel {
  const factory _VerifyOtpRequestModel(
      {required final int? mobile,
      required final int? otp,
      required final String? source,
      required final String? version,
      required final String? deviceId}) = _$VerifyOtpRequestModelImpl;

  factory _VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpRequestModelImpl.fromJson;

  @override
  int? get mobile;
  @override
  int? get otp;
  @override
  String? get source;
  @override
  String? get version;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpRequestModelImplCopyWith<_$VerifyOtpRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegistrationRequestModel _$RegistrationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequestModel {
  String? get hostelId => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get hostelImage => throw _privateConstructorUsedError;
  String? get hostelType => throw _privateConstructorUsedError;
  String? get hostelLicence => throw _privateConstructorUsedError;
  String? get hostelName => throw _privateConstructorUsedError;
  String? get aboutHostel => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  List<String>? get rules => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRequestModelCopyWith<RegistrationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestModelCopyWith<$Res> {
  factory $RegistrationRequestModelCopyWith(RegistrationRequestModel value,
          $Res Function(RegistrationRequestModel) then) =
      _$RegistrationRequestModelCopyWithImpl<$Res, RegistrationRequestModel>;
  @useResult
  $Res call(
      {String? hostelId,
      String? mobile,
      String? name,
      String? email,
      String? hostelImage,
      String? hostelType,
      String? hostelLicence,
      String? hostelName,
      String? aboutHostel,
      List<String>? images,
      List<String>? amenities,
      List<String>? rules,
      String? gstIn,
      LocationModel? location});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$RegistrationRequestModelCopyWithImpl<$Res,
        $Val extends RegistrationRequestModel>
    implements $RegistrationRequestModelCopyWith<$Res> {
  _$RegistrationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? hostelImage = freezed,
    Object? hostelType = freezed,
    Object? hostelLicence = freezed,
    Object? hostelName = freezed,
    Object? aboutHostel = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? rules = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelImage: freezed == hostelImage
          ? _value.hostelImage
          : hostelImage // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelType: freezed == hostelType
          ? _value.hostelType
          : hostelType // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelLicence: freezed == hostelLicence
          ? _value.hostelLicence
          : hostelLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelName: freezed == hostelName
          ? _value.hostelName
          : hostelName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutHostel: freezed == aboutHostel
          ? _value.aboutHostel
          : aboutHostel // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationRequestModelImplCopyWith<$Res>
    implements $RegistrationRequestModelCopyWith<$Res> {
  factory _$$RegistrationRequestModelImplCopyWith(
          _$RegistrationRequestModelImpl value,
          $Res Function(_$RegistrationRequestModelImpl) then) =
      __$$RegistrationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hostelId,
      String? mobile,
      String? name,
      String? email,
      String? hostelImage,
      String? hostelType,
      String? hostelLicence,
      String? hostelName,
      String? aboutHostel,
      List<String>? images,
      List<String>? amenities,
      List<String>? rules,
      String? gstIn,
      LocationModel? location});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$RegistrationRequestModelImplCopyWithImpl<$Res>
    extends _$RegistrationRequestModelCopyWithImpl<$Res,
        _$RegistrationRequestModelImpl>
    implements _$$RegistrationRequestModelImplCopyWith<$Res> {
  __$$RegistrationRequestModelImplCopyWithImpl(
      _$RegistrationRequestModelImpl _value,
      $Res Function(_$RegistrationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostelId = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? hostelImage = freezed,
    Object? hostelType = freezed,
    Object? hostelLicence = freezed,
    Object? hostelName = freezed,
    Object? aboutHostel = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? rules = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
  }) {
    return _then(_$RegistrationRequestModelImpl(
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelImage: freezed == hostelImage
          ? _value.hostelImage
          : hostelImage // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelType: freezed == hostelType
          ? _value.hostelType
          : hostelType // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelLicence: freezed == hostelLicence
          ? _value.hostelLicence
          : hostelLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelName: freezed == hostelName
          ? _value.hostelName
          : hostelName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutHostel: freezed == aboutHostel
          ? _value.aboutHostel
          : aboutHostel // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationRequestModelImpl implements _RegistrationRequestModel {
  const _$RegistrationRequestModelImpl(
      {this.hostelId,
      this.mobile,
      this.name,
      this.email,
      this.hostelImage,
      this.hostelType,
      this.hostelLicence,
      this.hostelName,
      this.aboutHostel,
      final List<String>? images,
      final List<String>? amenities,
      final List<String>? rules,
      this.gstIn,
      this.location})
      : _images = images,
        _amenities = amenities,
        _rules = rules;

  factory _$RegistrationRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationRequestModelImplFromJson(json);

  @override
  final String? hostelId;
  @override
  final String? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? hostelImage;
  @override
  final String? hostelType;
  @override
  final String? hostelLicence;
  @override
  final String? hostelName;
  @override
  final String? aboutHostel;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rules;
  @override
  List<String>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? gstIn;
  @override
  final LocationModel? location;

  @override
  String toString() {
    return 'RegistrationRequestModel(hostelId: $hostelId, mobile: $mobile, name: $name, email: $email, hostelImage: $hostelImage, hostelType: $hostelType, hostelLicence: $hostelLicence, hostelName: $hostelName, aboutHostel: $aboutHostel, images: $images, amenities: $amenities, rules: $rules, gstIn: $gstIn, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationRequestModelImpl &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hostelImage, hostelImage) ||
                other.hostelImage == hostelImage) &&
            (identical(other.hostelType, hostelType) ||
                other.hostelType == hostelType) &&
            (identical(other.hostelLicence, hostelLicence) ||
                other.hostelLicence == hostelLicence) &&
            (identical(other.hostelName, hostelName) ||
                other.hostelName == hostelName) &&
            (identical(other.aboutHostel, aboutHostel) ||
                other.aboutHostel == aboutHostel) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hostelId,
      mobile,
      name,
      email,
      hostelImage,
      hostelType,
      hostelLicence,
      hostelName,
      aboutHostel,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_amenities),
      const DeepCollectionEquality().hash(_rules),
      gstIn,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationRequestModelImplCopyWith<_$RegistrationRequestModelImpl>
      get copyWith => __$$RegistrationRequestModelImplCopyWithImpl<
          _$RegistrationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationRequestModel implements RegistrationRequestModel {
  const factory _RegistrationRequestModel(
      {final String? hostelId,
      final String? mobile,
      final String? name,
      final String? email,
      final String? hostelImage,
      final String? hostelType,
      final String? hostelLicence,
      final String? hostelName,
      final String? aboutHostel,
      final List<String>? images,
      final List<String>? amenities,
      final List<String>? rules,
      final String? gstIn,
      final LocationModel? location}) = _$RegistrationRequestModelImpl;

  factory _RegistrationRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationRequestModelImpl.fromJson;

  @override
  String? get hostelId;
  @override
  String? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get hostelImage;
  @override
  String? get hostelType;
  @override
  String? get hostelLicence;
  @override
  String? get hostelName;
  @override
  String? get aboutHostel;
  @override
  List<String>? get images;
  @override
  List<String>? get amenities;
  @override
  List<String>? get rules;
  @override
  String? get gstIn;
  @override
  LocationModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationRequestModelImplCopyWith<_$RegistrationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get landMark => throw _privateConstructorUsedError;
  int? get pinCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? landMark,
      int? pinCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? landMark = freezed,
    Object? pinCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
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
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? landMark,
      int? pinCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? landMark = freezed,
    Object? pinCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationModelImpl(
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
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl(
      {this.address1,
      this.address2,
      this.city,
      this.state,
      this.landMark,
      this.pinCode,
      this.latitude,
      this.longitude});

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? landMark;
  @override
  final int? pinCode;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LocationModel(address1: $address1, address2: $address2, city: $city, state: $state, landMark: $landMark, pinCode: $pinCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.landMark, landMark) ||
                other.landMark == landMark) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address1, address2, city, state,
      landMark, pinCode, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? landMark,
      final int? pinCode,
      final double? latitude,
      final double? longitude}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get landMark;
  @override
  int? get pinCode;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
