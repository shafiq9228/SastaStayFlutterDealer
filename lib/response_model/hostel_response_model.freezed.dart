// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hostel_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchHostelsResponseModel _$FetchHostelsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHostelsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHostelsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<HostelModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHostelsResponseModelCopyWith<FetchHostelsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHostelsResponseModelCopyWith<$Res> {
  factory $FetchHostelsResponseModelCopyWith(FetchHostelsResponseModel value,
          $Res Function(FetchHostelsResponseModel) then) =
      _$FetchHostelsResponseModelCopyWithImpl<$Res, FetchHostelsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<HostelModel>? data});
}

/// @nodoc
class _$FetchHostelsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHostelsResponseModel>
    implements $FetchHostelsResponseModelCopyWith<$Res> {
  _$FetchHostelsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<HostelModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchHostelsResponseModelImplCopyWith<$Res>
    implements $FetchHostelsResponseModelCopyWith<$Res> {
  factory _$$FetchHostelsResponseModelImplCopyWith(
          _$FetchHostelsResponseModelImpl value,
          $Res Function(_$FetchHostelsResponseModelImpl) then) =
      __$$FetchHostelsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<HostelModel>? data});
}

/// @nodoc
class __$$FetchHostelsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHostelsResponseModelCopyWithImpl<$Res,
        _$FetchHostelsResponseModelImpl>
    implements _$$FetchHostelsResponseModelImplCopyWith<$Res> {
  __$$FetchHostelsResponseModelImplCopyWithImpl(
      _$FetchHostelsResponseModelImpl _value,
      $Res Function(_$FetchHostelsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchHostelsResponseModelImpl(
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
              as List<HostelModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHostelsResponseModelImpl implements _FetchHostelsResponseModel {
  const _$FetchHostelsResponseModelImpl(
      {this.status, this.message, final List<HostelModel>? data})
      : _data = data;

  factory _$FetchHostelsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchHostelsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<HostelModel>? _data;
  @override
  List<HostelModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchHostelsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHostelsResponseModelImpl &&
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
  _$$FetchHostelsResponseModelImplCopyWith<_$FetchHostelsResponseModelImpl>
      get copyWith => __$$FetchHostelsResponseModelImplCopyWithImpl<
          _$FetchHostelsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHostelsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHostelsResponseModel implements FetchHostelsResponseModel {
  const factory _FetchHostelsResponseModel(
      {final int? status,
      final String? message,
      final List<HostelModel>? data}) = _$FetchHostelsResponseModelImpl;

  factory _FetchHostelsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchHostelsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<HostelModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchHostelsResponseModelImplCopyWith<_$FetchHostelsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchHostelDetailsResponseModel _$FetchHostelDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHostelDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHostelDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HostelModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHostelDetailsResponseModelCopyWith<FetchHostelDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHostelDetailsResponseModelCopyWith<$Res> {
  factory $FetchHostelDetailsResponseModelCopyWith(
          FetchHostelDetailsResponseModel value,
          $Res Function(FetchHostelDetailsResponseModel) then) =
      _$FetchHostelDetailsResponseModelCopyWithImpl<$Res,
          FetchHostelDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, HostelModel? data});

  $HostelModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchHostelDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHostelDetailsResponseModel>
    implements $FetchHostelDetailsResponseModelCopyWith<$Res> {
  _$FetchHostelDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as HostelModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HostelModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HostelModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchHostelDetailsResponseModelImplCopyWith<$Res>
    implements $FetchHostelDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchHostelDetailsResponseModelImplCopyWith(
          _$FetchHostelDetailsResponseModelImpl value,
          $Res Function(_$FetchHostelDetailsResponseModelImpl) then) =
      __$$FetchHostelDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HostelModel? data});

  @override
  $HostelModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchHostelDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHostelDetailsResponseModelCopyWithImpl<$Res,
        _$FetchHostelDetailsResponseModelImpl>
    implements _$$FetchHostelDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchHostelDetailsResponseModelImplCopyWithImpl(
      _$FetchHostelDetailsResponseModelImpl _value,
      $Res Function(_$FetchHostelDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchHostelDetailsResponseModelImpl(
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
              as HostelModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHostelDetailsResponseModelImpl
    implements _FetchHostelDetailsResponseModel {
  const _$FetchHostelDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchHostelDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchHostelDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HostelModel? data;

  @override
  String toString() {
    return 'FetchHostelDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHostelDetailsResponseModelImpl &&
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
  _$$FetchHostelDetailsResponseModelImplCopyWith<
          _$FetchHostelDetailsResponseModelImpl>
      get copyWith => __$$FetchHostelDetailsResponseModelImplCopyWithImpl<
          _$FetchHostelDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHostelDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHostelDetailsResponseModel
    implements FetchHostelDetailsResponseModel {
  const factory _FetchHostelDetailsResponseModel(
      {final int? status,
      final String? message,
      final HostelModel? data}) = _$FetchHostelDetailsResponseModelImpl;

  factory _FetchHostelDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchHostelDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HostelModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchHostelDetailsResponseModelImplCopyWith<
          _$FetchHostelDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchRatingAndReviewsResponseModel _$FetchRatingAndReviewsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchRatingAndReviewsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchRatingAndReviewsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<RatingAndReviewModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchRatingAndReviewsResponseModelCopyWith<
          FetchRatingAndReviewsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRatingAndReviewsResponseModelCopyWith<$Res> {
  factory $FetchRatingAndReviewsResponseModelCopyWith(
          FetchRatingAndReviewsResponseModel value,
          $Res Function(FetchRatingAndReviewsResponseModel) then) =
      _$FetchRatingAndReviewsResponseModelCopyWithImpl<$Res,
          FetchRatingAndReviewsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<RatingAndReviewModel>? data});
}

/// @nodoc
class _$FetchRatingAndReviewsResponseModelCopyWithImpl<$Res,
        $Val extends FetchRatingAndReviewsResponseModel>
    implements $FetchRatingAndReviewsResponseModelCopyWith<$Res> {
  _$FetchRatingAndReviewsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<RatingAndReviewModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchRatingAndReviewsResponseModelImplCopyWith<$Res>
    implements $FetchRatingAndReviewsResponseModelCopyWith<$Res> {
  factory _$$FetchRatingAndReviewsResponseModelImplCopyWith(
          _$FetchRatingAndReviewsResponseModelImpl value,
          $Res Function(_$FetchRatingAndReviewsResponseModelImpl) then) =
      __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<RatingAndReviewModel>? data});
}

/// @nodoc
class __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchRatingAndReviewsResponseModelCopyWithImpl<$Res,
        _$FetchRatingAndReviewsResponseModelImpl>
    implements _$$FetchRatingAndReviewsResponseModelImplCopyWith<$Res> {
  __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl(
      _$FetchRatingAndReviewsResponseModelImpl _value,
      $Res Function(_$FetchRatingAndReviewsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchRatingAndReviewsResponseModelImpl(
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
              as List<RatingAndReviewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchRatingAndReviewsResponseModelImpl
    implements _FetchRatingAndReviewsResponseModel {
  const _$FetchRatingAndReviewsResponseModelImpl(
      {this.status, this.message, final List<RatingAndReviewModel>? data})
      : _data = data;

  factory _$FetchRatingAndReviewsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchRatingAndReviewsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<RatingAndReviewModel>? _data;
  @override
  List<RatingAndReviewModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchRatingAndReviewsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRatingAndReviewsResponseModelImpl &&
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
  _$$FetchRatingAndReviewsResponseModelImplCopyWith<
          _$FetchRatingAndReviewsResponseModelImpl>
      get copyWith => __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl<
          _$FetchRatingAndReviewsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchRatingAndReviewsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchRatingAndReviewsResponseModel
    implements FetchRatingAndReviewsResponseModel {
  const factory _FetchRatingAndReviewsResponseModel(
          {final int? status,
          final String? message,
          final List<RatingAndReviewModel>? data}) =
      _$FetchRatingAndReviewsResponseModelImpl;

  factory _FetchRatingAndReviewsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchRatingAndReviewsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<RatingAndReviewModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchRatingAndReviewsResponseModelImplCopyWith<
          _$FetchRatingAndReviewsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RatingAndReviewModel _$RatingAndReviewModelFromJson(Map<String, dynamic> json) {
  return _RatingAndReviewModel.fromJson(json);
}

/// @nodoc
mixin _$RatingAndReviewModel {
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get hostelId => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingAndReviewModelCopyWith<RatingAndReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingAndReviewModelCopyWith<$Res> {
  factory $RatingAndReviewModelCopyWith(RatingAndReviewModel value,
          $Res Function(RatingAndReviewModel) then) =
      _$RatingAndReviewModelCopyWithImpl<$Res, RatingAndReviewModel>;
  @useResult
  $Res call({dynamic userId, dynamic hostelId, dynamic rating, String? review});
}

/// @nodoc
class _$RatingAndReviewModelCopyWithImpl<$Res,
        $Val extends RatingAndReviewModel>
    implements $RatingAndReviewModelCopyWith<$Res> {
  _$RatingAndReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? hostelId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingAndReviewModelImplCopyWith<$Res>
    implements $RatingAndReviewModelCopyWith<$Res> {
  factory _$$RatingAndReviewModelImplCopyWith(_$RatingAndReviewModelImpl value,
          $Res Function(_$RatingAndReviewModelImpl) then) =
      __$$RatingAndReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic userId, dynamic hostelId, dynamic rating, String? review});
}

/// @nodoc
class __$$RatingAndReviewModelImplCopyWithImpl<$Res>
    extends _$RatingAndReviewModelCopyWithImpl<$Res, _$RatingAndReviewModelImpl>
    implements _$$RatingAndReviewModelImplCopyWith<$Res> {
  __$$RatingAndReviewModelImplCopyWithImpl(_$RatingAndReviewModelImpl _value,
      $Res Function(_$RatingAndReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? hostelId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_$RatingAndReviewModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingAndReviewModelImpl implements _RatingAndReviewModel {
  const _$RatingAndReviewModelImpl(
      {this.userId, this.hostelId, this.rating, this.review});

  factory _$RatingAndReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingAndReviewModelImplFromJson(json);

  @override
  final dynamic userId;
  @override
  final dynamic hostelId;
  @override
  final dynamic rating;
  @override
  final String? review;

  @override
  String toString() {
    return 'RatingAndReviewModel(userId: $userId, hostelId: $hostelId, rating: $rating, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingAndReviewModelImpl &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.hostelId, hostelId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(hostelId),
      const DeepCollectionEquality().hash(rating),
      review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingAndReviewModelImplCopyWith<_$RatingAndReviewModelImpl>
      get copyWith =>
          __$$RatingAndReviewModelImplCopyWithImpl<_$RatingAndReviewModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingAndReviewModelImplToJson(
      this,
    );
  }
}

abstract class _RatingAndReviewModel implements RatingAndReviewModel {
  const factory _RatingAndReviewModel(
      {final dynamic userId,
      final dynamic hostelId,
      final dynamic rating,
      final String? review}) = _$RatingAndReviewModelImpl;

  factory _RatingAndReviewModel.fromJson(Map<String, dynamic> json) =
      _$RatingAndReviewModelImpl.fromJson;

  @override
  dynamic get userId;
  @override
  dynamic get hostelId;
  @override
  dynamic get rating;
  @override
  String? get review;
  @override
  @JsonKey(ignore: true)
  _$$RatingAndReviewModelImplCopyWith<_$RatingAndReviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryRating _$CategoryRatingFromJson(Map<String, dynamic> json) {
  return _CategoryRating.fromJson(json);
}

/// @nodoc
mixin _$CategoryRating {
  dynamic get rating => throw _privateConstructorUsedError;
  String? get ratedFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryRatingCopyWith<CategoryRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryRatingCopyWith<$Res> {
  factory $CategoryRatingCopyWith(
          CategoryRating value, $Res Function(CategoryRating) then) =
      _$CategoryRatingCopyWithImpl<$Res, CategoryRating>;
  @useResult
  $Res call({dynamic rating, String? ratedFor});
}

/// @nodoc
class _$CategoryRatingCopyWithImpl<$Res, $Val extends CategoryRating>
    implements $CategoryRatingCopyWith<$Res> {
  _$CategoryRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? ratedFor = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ratedFor: freezed == ratedFor
          ? _value.ratedFor
          : ratedFor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryRatingImplCopyWith<$Res>
    implements $CategoryRatingCopyWith<$Res> {
  factory _$$CategoryRatingImplCopyWith(_$CategoryRatingImpl value,
          $Res Function(_$CategoryRatingImpl) then) =
      __$$CategoryRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic rating, String? ratedFor});
}

/// @nodoc
class __$$CategoryRatingImplCopyWithImpl<$Res>
    extends _$CategoryRatingCopyWithImpl<$Res, _$CategoryRatingImpl>
    implements _$$CategoryRatingImplCopyWith<$Res> {
  __$$CategoryRatingImplCopyWithImpl(
      _$CategoryRatingImpl _value, $Res Function(_$CategoryRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? ratedFor = freezed,
  }) {
    return _then(_$CategoryRatingImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ratedFor: freezed == ratedFor
          ? _value.ratedFor
          : ratedFor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryRatingImpl implements _CategoryRating {
  const _$CategoryRatingImpl({this.rating, this.ratedFor});

  factory _$CategoryRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryRatingImplFromJson(json);

  @override
  final dynamic rating;
  @override
  final String? ratedFor;

  @override
  String toString() {
    return 'CategoryRating(rating: $rating, ratedFor: $ratedFor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryRatingImpl &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.ratedFor, ratedFor) ||
                other.ratedFor == ratedFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rating), ratedFor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryRatingImplCopyWith<_$CategoryRatingImpl> get copyWith =>
      __$$CategoryRatingImplCopyWithImpl<_$CategoryRatingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryRatingImplToJson(
      this,
    );
  }
}

abstract class _CategoryRating implements CategoryRating {
  const factory _CategoryRating(
      {final dynamic rating, final String? ratedFor}) = _$CategoryRatingImpl;

  factory _CategoryRating.fromJson(Map<String, dynamic> json) =
      _$CategoryRatingImpl.fromJson;

  @override
  dynamic get rating;
  @override
  String? get ratedFor;
  @override
  @JsonKey(ignore: true)
  _$$CategoryRatingImplCopyWith<_$CategoryRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchHostelStatisticsResponseModel _$FetchHostelStatisticsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHostelStatisticsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHostelStatisticsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<StatsDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHostelStatisticsResponseModelCopyWith<
          FetchHostelStatisticsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHostelStatisticsResponseModelCopyWith<$Res> {
  factory $FetchHostelStatisticsResponseModelCopyWith(
          FetchHostelStatisticsResponseModel value,
          $Res Function(FetchHostelStatisticsResponseModel) then) =
      _$FetchHostelStatisticsResponseModelCopyWithImpl<$Res,
          FetchHostelStatisticsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<StatsDataModel>? data});
}

/// @nodoc
class _$FetchHostelStatisticsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHostelStatisticsResponseModel>
    implements $FetchHostelStatisticsResponseModelCopyWith<$Res> {
  _$FetchHostelStatisticsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<StatsDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchHostelStatisticsResponseModelImplCopyWith<$Res>
    implements $FetchHostelStatisticsResponseModelCopyWith<$Res> {
  factory _$$FetchHostelStatisticsResponseModelImplCopyWith(
          _$FetchHostelStatisticsResponseModelImpl value,
          $Res Function(_$FetchHostelStatisticsResponseModelImpl) then) =
      __$$FetchHostelStatisticsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<StatsDataModel>? data});
}

/// @nodoc
class __$$FetchHostelStatisticsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHostelStatisticsResponseModelCopyWithImpl<$Res,
        _$FetchHostelStatisticsResponseModelImpl>
    implements _$$FetchHostelStatisticsResponseModelImplCopyWith<$Res> {
  __$$FetchHostelStatisticsResponseModelImplCopyWithImpl(
      _$FetchHostelStatisticsResponseModelImpl _value,
      $Res Function(_$FetchHostelStatisticsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchHostelStatisticsResponseModelImpl(
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
              as List<StatsDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHostelStatisticsResponseModelImpl
    implements _FetchHostelStatisticsResponseModel {
  const _$FetchHostelStatisticsResponseModelImpl(
      {this.status, this.message, final List<StatsDataModel>? data})
      : _data = data;

  factory _$FetchHostelStatisticsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchHostelStatisticsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<StatsDataModel>? _data;
  @override
  List<StatsDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchHostelStatisticsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHostelStatisticsResponseModelImpl &&
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
  _$$FetchHostelStatisticsResponseModelImplCopyWith<
          _$FetchHostelStatisticsResponseModelImpl>
      get copyWith => __$$FetchHostelStatisticsResponseModelImplCopyWithImpl<
          _$FetchHostelStatisticsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHostelStatisticsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHostelStatisticsResponseModel
    implements FetchHostelStatisticsResponseModel {
  const factory _FetchHostelStatisticsResponseModel(
          {final int? status,
          final String? message,
          final List<StatsDataModel>? data}) =
      _$FetchHostelStatisticsResponseModelImpl;

  factory _FetchHostelStatisticsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchHostelStatisticsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<StatsDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchHostelStatisticsResponseModelImplCopyWith<
          _$FetchHostelStatisticsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HostelModel _$HostelModelFromJson(Map<String, dynamic> json) {
  return _HostelModel.fromJson(json);
}

/// @nodoc
mixin _$HostelModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  DealerModel? get manager => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  List<String>? get rejectedFields => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  int? get branch => throw _privateConstructorUsedError;
  String? get hostelImage => throw _privateConstructorUsedError;
  String? get hostelLicence => throw _privateConstructorUsedError;
  String? get hostelName => throw _privateConstructorUsedError;
  String? get aboutHostel => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  String? get hostelType => throw _privateConstructorUsedError;
  List<ImageDataModel>? get images => throw _privateConstructorUsedError;
  List<FaqModel>? get faq => throw _privateConstructorUsedError;
  List<String>? get amenityIds => throw _privateConstructorUsedError;
  List<AmenitiesModel>? get amenities => throw _privateConstructorUsedError;
  int? get amenitiesMore => throw _privateConstructorUsedError;
  RoomModel? get room => throw _privateConstructorUsedError;
  List<RoomModel>? get rooms => throw _privateConstructorUsedError;
  int? get roomsMore => throw _privateConstructorUsedError;
  List<String>? get rules => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  int? get monthlyIncome => throw _privateConstructorUsedError;
  int? get totalIncome => throw _privateConstructorUsedError;
  int? get totalVotes => throw _privateConstructorUsedError;
  int? get commission => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  List<CategoryRating>? get categoryRatings =>
      throw _privateConstructorUsedError;
  List<String>? get imagesType => throw _privateConstructorUsedError;
  String? get checkInTime => throw _privateConstructorUsedError;
  String? get checkOutTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostelModelCopyWith<HostelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostelModelCopyWith<$Res> {
  factory $HostelModelCopyWith(
          HostelModel value, $Res Function(HostelModel) then) =
      _$HostelModelCopyWithImpl<$Res, HostelModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      DealerModel? manager,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      int? branch,
      String? hostelImage,
      String? hostelLicence,
      String? hostelName,
      String? aboutHostel,
      String? gstIn,
      String? hostelType,
      List<ImageDataModel>? images,
      List<FaqModel>? faq,
      List<String>? amenityIds,
      List<AmenitiesModel>? amenities,
      int? amenitiesMore,
      RoomModel? room,
      List<RoomModel>? rooms,
      int? roomsMore,
      List<String>? rules,
      LocationModel? location,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      int? commission,
      dynamic rating,
      List<CategoryRating>? categoryRatings,
      List<String>? imagesType,
      String? checkInTime,
      String? checkOutTime});

  $DealerModelCopyWith<$Res>? get manager;
  $RoomModelCopyWith<$Res>? get room;
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$HostelModelCopyWithImpl<$Res, $Val extends HostelModel>
    implements $HostelModelCopyWith<$Res> {
  _$HostelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? manager = freezed,
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? branch = freezed,
    Object? hostelImage = freezed,
    Object? hostelLicence = freezed,
    Object? hostelName = freezed,
    Object? aboutHostel = freezed,
    Object? gstIn = freezed,
    Object? hostelType = freezed,
    Object? images = freezed,
    Object? faq = freezed,
    Object? amenityIds = freezed,
    Object? amenities = freezed,
    Object? amenitiesMore = freezed,
    Object? room = freezed,
    Object? rooms = freezed,
    Object? roomsMore = freezed,
    Object? rules = freezed,
    Object? location = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? commission = freezed,
    Object? rating = freezed,
    Object? categoryRatings = freezed,
    Object? imagesType = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as DealerModel?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedFields: freezed == rejectedFields
          ? _value.rejectedFields
          : rejectedFields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as int?,
      hostelImage: freezed == hostelImage
          ? _value.hostelImage
          : hostelImage // ignore: cast_nullable_to_non_nullable
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
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelType: freezed == hostelType
          ? _value.hostelType
          : hostelType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      amenityIds: freezed == amenityIds
          ? _value.amenityIds
          : amenityIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<AmenitiesModel>?,
      amenitiesMore: freezed == amenitiesMore
          ? _value.amenitiesMore
          : amenitiesMore // ignore: cast_nullable_to_non_nullable
              as int?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomModel?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>?,
      roomsMore: freezed == roomsMore
          ? _value.roomsMore
          : roomsMore // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
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
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryRatings: freezed == categoryRatings
          ? _value.categoryRatings
          : categoryRatings // ignore: cast_nullable_to_non_nullable
              as List<CategoryRating>?,
      imagesType: freezed == imagesType
          ? _value.imagesType
          : imagesType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DealerModelCopyWith<$Res>? get manager {
    if (_value.manager == null) {
      return null;
    }

    return $DealerModelCopyWith<$Res>(_value.manager!, (value) {
      return _then(_value.copyWith(manager: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomModelCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomModelCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
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
abstract class _$$HostelModelImplCopyWith<$Res>
    implements $HostelModelCopyWith<$Res> {
  factory _$$HostelModelImplCopyWith(
          _$HostelModelImpl value, $Res Function(_$HostelModelImpl) then) =
      __$$HostelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      DealerModel? manager,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      int? branch,
      String? hostelImage,
      String? hostelLicence,
      String? hostelName,
      String? aboutHostel,
      String? gstIn,
      String? hostelType,
      List<ImageDataModel>? images,
      List<FaqModel>? faq,
      List<String>? amenityIds,
      List<AmenitiesModel>? amenities,
      int? amenitiesMore,
      RoomModel? room,
      List<RoomModel>? rooms,
      int? roomsMore,
      List<String>? rules,
      LocationModel? location,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      int? commission,
      dynamic rating,
      List<CategoryRating>? categoryRatings,
      List<String>? imagesType,
      String? checkInTime,
      String? checkOutTime});

  @override
  $DealerModelCopyWith<$Res>? get manager;
  @override
  $RoomModelCopyWith<$Res>? get room;
  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$HostelModelImplCopyWithImpl<$Res>
    extends _$HostelModelCopyWithImpl<$Res, _$HostelModelImpl>
    implements _$$HostelModelImplCopyWith<$Res> {
  __$$HostelModelImplCopyWithImpl(
      _$HostelModelImpl _value, $Res Function(_$HostelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? manager = freezed,
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? branch = freezed,
    Object? hostelImage = freezed,
    Object? hostelLicence = freezed,
    Object? hostelName = freezed,
    Object? aboutHostel = freezed,
    Object? gstIn = freezed,
    Object? hostelType = freezed,
    Object? images = freezed,
    Object? faq = freezed,
    Object? amenityIds = freezed,
    Object? amenities = freezed,
    Object? amenitiesMore = freezed,
    Object? room = freezed,
    Object? rooms = freezed,
    Object? roomsMore = freezed,
    Object? rules = freezed,
    Object? location = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? commission = freezed,
    Object? rating = freezed,
    Object? categoryRatings = freezed,
    Object? imagesType = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
  }) {
    return _then(_$HostelModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as DealerModel?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedFields: freezed == rejectedFields
          ? _value._rejectedFields
          : rejectedFields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as int?,
      hostelImage: freezed == hostelImage
          ? _value.hostelImage
          : hostelImage // ignore: cast_nullable_to_non_nullable
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
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelType: freezed == hostelType
          ? _value.hostelType
          : hostelType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      faq: freezed == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      amenityIds: freezed == amenityIds
          ? _value._amenityIds
          : amenityIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<AmenitiesModel>?,
      amenitiesMore: freezed == amenitiesMore
          ? _value.amenitiesMore
          : amenitiesMore // ignore: cast_nullable_to_non_nullable
              as int?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomModel?,
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>?,
      roomsMore: freezed == roomsMore
          ? _value.roomsMore
          : roomsMore // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
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
      commission: freezed == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryRatings: freezed == categoryRatings
          ? _value._categoryRatings
          : categoryRatings // ignore: cast_nullable_to_non_nullable
              as List<CategoryRating>?,
      imagesType: freezed == imagesType
          ? _value._imagesType
          : imagesType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostelModelImpl implements _HostelModel {
  const _$HostelModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.manager,
      this.approvalStatus,
      final List<String>? rejectedFields,
      this.reason,
      this.branch,
      this.hostelImage,
      this.hostelLicence,
      this.hostelName,
      this.aboutHostel,
      this.gstIn,
      this.hostelType,
      final List<ImageDataModel>? images,
      final List<FaqModel>? faq,
      final List<String>? amenityIds,
      final List<AmenitiesModel>? amenities,
      this.amenitiesMore,
      this.room,
      final List<RoomModel>? rooms,
      this.roomsMore,
      final List<String>? rules,
      this.location,
      this.monthlyIncome,
      this.totalIncome,
      this.totalVotes,
      this.commission,
      this.rating,
      final List<CategoryRating>? categoryRatings,
      final List<String>? imagesType,
      this.checkInTime,
      this.checkOutTime})
      : _rejectedFields = rejectedFields,
        _images = images,
        _faq = faq,
        _amenityIds = amenityIds,
        _amenities = amenities,
        _rooms = rooms,
        _rules = rules,
        _categoryRatings = categoryRatings,
        _imagesType = imagesType;

  factory _$HostelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HostelModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final DealerModel? manager;
  @override
  final String? approvalStatus;
  final List<String>? _rejectedFields;
  @override
  List<String>? get rejectedFields {
    final value = _rejectedFields;
    if (value == null) return null;
    if (_rejectedFields is EqualUnmodifiableListView) return _rejectedFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? reason;
  @override
  final int? branch;
  @override
  final String? hostelImage;
  @override
  final String? hostelLicence;
  @override
  final String? hostelName;
  @override
  final String? aboutHostel;
  @override
  final String? gstIn;
  @override
  final String? hostelType;
  final List<ImageDataModel>? _images;
  @override
  List<ImageDataModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FaqModel>? _faq;
  @override
  List<FaqModel>? get faq {
    final value = _faq;
    if (value == null) return null;
    if (_faq is EqualUnmodifiableListView) return _faq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _amenityIds;
  @override
  List<String>? get amenityIds {
    final value = _amenityIds;
    if (value == null) return null;
    if (_amenityIds is EqualUnmodifiableListView) return _amenityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmenitiesModel>? _amenities;
  @override
  List<AmenitiesModel>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? amenitiesMore;
  @override
  final RoomModel? room;
  final List<RoomModel>? _rooms;
  @override
  List<RoomModel>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? roomsMore;
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
  final LocationModel? location;
  @override
  final int? monthlyIncome;
  @override
  final int? totalIncome;
  @override
  final int? totalVotes;
  @override
  final int? commission;
  @override
  final dynamic rating;
  final List<CategoryRating>? _categoryRatings;
  @override
  List<CategoryRating>? get categoryRatings {
    final value = _categoryRatings;
    if (value == null) return null;
    if (_categoryRatings is EqualUnmodifiableListView) return _categoryRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _imagesType;
  @override
  List<String>? get imagesType {
    final value = _imagesType;
    if (value == null) return null;
    if (_imagesType is EqualUnmodifiableListView) return _imagesType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? checkInTime;
  @override
  final String? checkOutTime;

  @override
  String toString() {
    return 'HostelModel(id: $id, manager: $manager, approvalStatus: $approvalStatus, rejectedFields: $rejectedFields, reason: $reason, branch: $branch, hostelImage: $hostelImage, hostelLicence: $hostelLicence, hostelName: $hostelName, aboutHostel: $aboutHostel, gstIn: $gstIn, hostelType: $hostelType, images: $images, faq: $faq, amenityIds: $amenityIds, amenities: $amenities, amenitiesMore: $amenitiesMore, room: $room, rooms: $rooms, roomsMore: $roomsMore, rules: $rules, location: $location, monthlyIncome: $monthlyIncome, totalIncome: $totalIncome, totalVotes: $totalVotes, commission: $commission, rating: $rating, categoryRatings: $categoryRatings, imagesType: $imagesType, checkInTime: $checkInTime, checkOutTime: $checkOutTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            const DeepCollectionEquality()
                .equals(other._rejectedFields, _rejectedFields) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.hostelImage, hostelImage) ||
                other.hostelImage == hostelImage) &&
            (identical(other.hostelLicence, hostelLicence) ||
                other.hostelLicence == hostelLicence) &&
            (identical(other.hostelName, hostelName) ||
                other.hostelName == hostelName) &&
            (identical(other.aboutHostel, aboutHostel) ||
                other.aboutHostel == aboutHostel) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.hostelType, hostelType) ||
                other.hostelType == hostelType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._faq, _faq) &&
            const DeepCollectionEquality()
                .equals(other._amenityIds, _amenityIds) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.amenitiesMore, amenitiesMore) ||
                other.amenitiesMore == amenitiesMore) &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            (identical(other.roomsMore, roomsMore) ||
                other.roomsMore == roomsMore) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.commission, commission) ||
                other.commission == commission) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other._categoryRatings, _categoryRatings) &&
            const DeepCollectionEquality()
                .equals(other._imagesType, _imagesType) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        manager,
        approvalStatus,
        const DeepCollectionEquality().hash(_rejectedFields),
        reason,
        branch,
        hostelImage,
        hostelLicence,
        hostelName,
        aboutHostel,
        gstIn,
        hostelType,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_faq),
        const DeepCollectionEquality().hash(_amenityIds),
        const DeepCollectionEquality().hash(_amenities),
        amenitiesMore,
        room,
        const DeepCollectionEquality().hash(_rooms),
        roomsMore,
        const DeepCollectionEquality().hash(_rules),
        location,
        monthlyIncome,
        totalIncome,
        totalVotes,
        commission,
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(_categoryRatings),
        const DeepCollectionEquality().hash(_imagesType),
        checkInTime,
        checkOutTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostelModelImplCopyWith<_$HostelModelImpl> get copyWith =>
      __$$HostelModelImplCopyWithImpl<_$HostelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostelModelImplToJson(
      this,
    );
  }
}

abstract class _HostelModel implements HostelModel {
  const factory _HostelModel(
      {@JsonKey(name: '_id') final String? id,
      final DealerModel? manager,
      final String? approvalStatus,
      final List<String>? rejectedFields,
      final String? reason,
      final int? branch,
      final String? hostelImage,
      final String? hostelLicence,
      final String? hostelName,
      final String? aboutHostel,
      final String? gstIn,
      final String? hostelType,
      final List<ImageDataModel>? images,
      final List<FaqModel>? faq,
      final List<String>? amenityIds,
      final List<AmenitiesModel>? amenities,
      final int? amenitiesMore,
      final RoomModel? room,
      final List<RoomModel>? rooms,
      final int? roomsMore,
      final List<String>? rules,
      final LocationModel? location,
      final int? monthlyIncome,
      final int? totalIncome,
      final int? totalVotes,
      final int? commission,
      final dynamic rating,
      final List<CategoryRating>? categoryRatings,
      final List<String>? imagesType,
      final String? checkInTime,
      final String? checkOutTime}) = _$HostelModelImpl;

  factory _HostelModel.fromJson(Map<String, dynamic> json) =
      _$HostelModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  DealerModel? get manager;
  @override
  String? get approvalStatus;
  @override
  List<String>? get rejectedFields;
  @override
  String? get reason;
  @override
  int? get branch;
  @override
  String? get hostelImage;
  @override
  String? get hostelLicence;
  @override
  String? get hostelName;
  @override
  String? get aboutHostel;
  @override
  String? get gstIn;
  @override
  String? get hostelType;
  @override
  List<ImageDataModel>? get images;
  @override
  List<FaqModel>? get faq;
  @override
  List<String>? get amenityIds;
  @override
  List<AmenitiesModel>? get amenities;
  @override
  int? get amenitiesMore;
  @override
  RoomModel? get room;
  @override
  List<RoomModel>? get rooms;
  @override
  int? get roomsMore;
  @override
  List<String>? get rules;
  @override
  LocationModel? get location;
  @override
  int? get monthlyIncome;
  @override
  int? get totalIncome;
  @override
  int? get totalVotes;
  @override
  int? get commission;
  @override
  dynamic get rating;
  @override
  List<CategoryRating>? get categoryRatings;
  @override
  List<String>? get imagesType;
  @override
  String? get checkInTime;
  @override
  String? get checkOutTime;
  @override
  @JsonKey(ignore: true)
  _$$HostelModelImplCopyWith<_$HostelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HostelRoomAvailabilityDatesResponseModel
    _$HostelRoomAvailabilityDatesResponseModelFromJson(
        Map<String, dynamic> json) {
  return _HostelRoomAvailabilityDatesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HostelRoomAvailabilityDatesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<AvailabilityDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostelRoomAvailabilityDatesResponseModelCopyWith<
          HostelRoomAvailabilityDatesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostelRoomAvailabilityDatesResponseModelCopyWith<$Res> {
  factory $HostelRoomAvailabilityDatesResponseModelCopyWith(
          HostelRoomAvailabilityDatesResponseModel value,
          $Res Function(HostelRoomAvailabilityDatesResponseModel) then) =
      _$HostelRoomAvailabilityDatesResponseModelCopyWithImpl<$Res,
          HostelRoomAvailabilityDatesResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<AvailabilityDataModel>? data});
}

/// @nodoc
class _$HostelRoomAvailabilityDatesResponseModelCopyWithImpl<$Res,
        $Val extends HostelRoomAvailabilityDatesResponseModel>
    implements $HostelRoomAvailabilityDatesResponseModelCopyWith<$Res> {
  _$HostelRoomAvailabilityDatesResponseModelCopyWithImpl(
      this._value, this._then);

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
              as List<AvailabilityDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HostelRoomAvailabilityDatesResponseModelImplCopyWith<$Res>
    implements $HostelRoomAvailabilityDatesResponseModelCopyWith<$Res> {
  factory _$$HostelRoomAvailabilityDatesResponseModelImplCopyWith(
          _$HostelRoomAvailabilityDatesResponseModelImpl value,
          $Res Function(_$HostelRoomAvailabilityDatesResponseModelImpl) then) =
      __$$HostelRoomAvailabilityDatesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<AvailabilityDataModel>? data});
}

/// @nodoc
class __$$HostelRoomAvailabilityDatesResponseModelImplCopyWithImpl<$Res>
    extends _$HostelRoomAvailabilityDatesResponseModelCopyWithImpl<$Res,
        _$HostelRoomAvailabilityDatesResponseModelImpl>
    implements _$$HostelRoomAvailabilityDatesResponseModelImplCopyWith<$Res> {
  __$$HostelRoomAvailabilityDatesResponseModelImplCopyWithImpl(
      _$HostelRoomAvailabilityDatesResponseModelImpl _value,
      $Res Function(_$HostelRoomAvailabilityDatesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HostelRoomAvailabilityDatesResponseModelImpl(
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
              as List<AvailabilityDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostelRoomAvailabilityDatesResponseModelImpl
    implements _HostelRoomAvailabilityDatesResponseModel {
  const _$HostelRoomAvailabilityDatesResponseModelImpl(
      {this.status, this.message, final List<AvailabilityDataModel>? data})
      : _data = data;

  factory _$HostelRoomAvailabilityDatesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HostelRoomAvailabilityDatesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<AvailabilityDataModel>? _data;
  @override
  List<AvailabilityDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HostelRoomAvailabilityDatesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostelRoomAvailabilityDatesResponseModelImpl &&
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
  _$$HostelRoomAvailabilityDatesResponseModelImplCopyWith<
          _$HostelRoomAvailabilityDatesResponseModelImpl>
      get copyWith =>
          __$$HostelRoomAvailabilityDatesResponseModelImplCopyWithImpl<
              _$HostelRoomAvailabilityDatesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostelRoomAvailabilityDatesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HostelRoomAvailabilityDatesResponseModel
    implements HostelRoomAvailabilityDatesResponseModel {
  const factory _HostelRoomAvailabilityDatesResponseModel(
          {final int? status,
          final String? message,
          final List<AvailabilityDataModel>? data}) =
      _$HostelRoomAvailabilityDatesResponseModelImpl;

  factory _HostelRoomAvailabilityDatesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$HostelRoomAvailabilityDatesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<AvailabilityDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$HostelRoomAvailabilityDatesResponseModelImplCopyWith<
          _$HostelRoomAvailabilityDatesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityDataModel _$AvailabilityDataModelFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityDataModel.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityDataModel {
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityDataModelCopyWith<AvailabilityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityDataModelCopyWith<$Res> {
  factory $AvailabilityDataModelCopyWith(AvailabilityDataModel value,
          $Res Function(AvailabilityDataModel) then) =
      _$AvailabilityDataModelCopyWithImpl<$Res, AvailabilityDataModel>;
  @useResult
  $Res call({String? date, String? status});
}

/// @nodoc
class _$AvailabilityDataModelCopyWithImpl<$Res,
        $Val extends AvailabilityDataModel>
    implements $AvailabilityDataModelCopyWith<$Res> {
  _$AvailabilityDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityDataModelImplCopyWith<$Res>
    implements $AvailabilityDataModelCopyWith<$Res> {
  factory _$$AvailabilityDataModelImplCopyWith(
          _$AvailabilityDataModelImpl value,
          $Res Function(_$AvailabilityDataModelImpl) then) =
      __$$AvailabilityDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? status});
}

/// @nodoc
class __$$AvailabilityDataModelImplCopyWithImpl<$Res>
    extends _$AvailabilityDataModelCopyWithImpl<$Res,
        _$AvailabilityDataModelImpl>
    implements _$$AvailabilityDataModelImplCopyWith<$Res> {
  __$$AvailabilityDataModelImplCopyWithImpl(_$AvailabilityDataModelImpl _value,
      $Res Function(_$AvailabilityDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AvailabilityDataModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityDataModelImpl implements _AvailabilityDataModel {
  const _$AvailabilityDataModelImpl({this.date, this.status});

  factory _$AvailabilityDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityDataModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? status;

  @override
  String toString() {
    return 'AvailabilityDataModel(date: $date, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityDataModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDataModelImplCopyWith<_$AvailabilityDataModelImpl>
      get copyWith => __$$AvailabilityDataModelImplCopyWithImpl<
          _$AvailabilityDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityDataModelImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityDataModel implements AvailabilityDataModel {
  const factory _AvailabilityDataModel(
      {final String? date, final String? status}) = _$AvailabilityDataModelImpl;

  factory _AvailabilityDataModel.fromJson(Map<String, dynamic> json) =
      _$AvailabilityDataModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityDataModelImplCopyWith<_$AvailabilityDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImageDataModel _$ImageDataModelFromJson(Map<String, dynamic> json) {
  return _ImageDataModel.fromJson(json);
}

/// @nodoc
mixin _$ImageDataModel {
  String? get imagesType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataModelCopyWith<ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataModelCopyWith<$Res> {
  factory $ImageDataModelCopyWith(
          ImageDataModel value, $Res Function(ImageDataModel) then) =
      _$ImageDataModelCopyWithImpl<$Res, ImageDataModel>;
  @useResult
  $Res call({String? imagesType, List<String>? images});
}

/// @nodoc
class _$ImageDataModelCopyWithImpl<$Res, $Val extends ImageDataModel>
    implements $ImageDataModelCopyWith<$Res> {
  _$ImageDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesType = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      imagesType: freezed == imagesType
          ? _value.imagesType
          : imagesType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataModelImplCopyWith<$Res>
    implements $ImageDataModelCopyWith<$Res> {
  factory _$$ImageDataModelImplCopyWith(_$ImageDataModelImpl value,
          $Res Function(_$ImageDataModelImpl) then) =
      __$$ImageDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imagesType, List<String>? images});
}

/// @nodoc
class __$$ImageDataModelImplCopyWithImpl<$Res>
    extends _$ImageDataModelCopyWithImpl<$Res, _$ImageDataModelImpl>
    implements _$$ImageDataModelImplCopyWith<$Res> {
  __$$ImageDataModelImplCopyWithImpl(
      _$ImageDataModelImpl _value, $Res Function(_$ImageDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesType = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ImageDataModelImpl(
      imagesType: freezed == imagesType
          ? _value.imagesType
          : imagesType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataModelImpl implements _ImageDataModel {
  const _$ImageDataModelImpl({this.imagesType, final List<String>? images})
      : _images = images;

  factory _$ImageDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataModelImplFromJson(json);

  @override
  final String? imagesType;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ImageDataModel(imagesType: $imagesType, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataModelImpl &&
            (identical(other.imagesType, imagesType) ||
                other.imagesType == imagesType) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, imagesType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataModelImplCopyWith<_$ImageDataModelImpl> get copyWith =>
      __$$ImageDataModelImplCopyWithImpl<_$ImageDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataModelImplToJson(
      this,
    );
  }
}

abstract class _ImageDataModel implements ImageDataModel {
  const factory _ImageDataModel(
      {final String? imagesType,
      final List<String>? images}) = _$ImageDataModelImpl;

  factory _ImageDataModel.fromJson(Map<String, dynamic> json) =
      _$ImageDataModelImpl.fromJson;

  @override
  String? get imagesType;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataModelImplCopyWith<_$ImageDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchLeadsResponseModel _$FetchLeadsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchLeadsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchLeadsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<LeadModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchLeadsResponseModelCopyWith<FetchLeadsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchLeadsResponseModelCopyWith<$Res> {
  factory $FetchLeadsResponseModelCopyWith(FetchLeadsResponseModel value,
          $Res Function(FetchLeadsResponseModel) then) =
      _$FetchLeadsResponseModelCopyWithImpl<$Res, FetchLeadsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<LeadModel>? data});
}

/// @nodoc
class _$FetchLeadsResponseModelCopyWithImpl<$Res,
        $Val extends FetchLeadsResponseModel>
    implements $FetchLeadsResponseModelCopyWith<$Res> {
  _$FetchLeadsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<LeadModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchLeadsResponseModelImplCopyWith<$Res>
    implements $FetchLeadsResponseModelCopyWith<$Res> {
  factory _$$FetchLeadsResponseModelImplCopyWith(
          _$FetchLeadsResponseModelImpl value,
          $Res Function(_$FetchLeadsResponseModelImpl) then) =
      __$$FetchLeadsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<LeadModel>? data});
}

/// @nodoc
class __$$FetchLeadsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchLeadsResponseModelCopyWithImpl<$Res,
        _$FetchLeadsResponseModelImpl>
    implements _$$FetchLeadsResponseModelImplCopyWith<$Res> {
  __$$FetchLeadsResponseModelImplCopyWithImpl(
      _$FetchLeadsResponseModelImpl _value,
      $Res Function(_$FetchLeadsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchLeadsResponseModelImpl(
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
              as List<LeadModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchLeadsResponseModelImpl implements _FetchLeadsResponseModel {
  const _$FetchLeadsResponseModelImpl(
      {this.status, this.message, final List<LeadModel>? data})
      : _data = data;

  factory _$FetchLeadsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchLeadsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<LeadModel>? _data;
  @override
  List<LeadModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchLeadsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLeadsResponseModelImpl &&
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
  _$$FetchLeadsResponseModelImplCopyWith<_$FetchLeadsResponseModelImpl>
      get copyWith => __$$FetchLeadsResponseModelImplCopyWithImpl<
          _$FetchLeadsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchLeadsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchLeadsResponseModel implements FetchLeadsResponseModel {
  const factory _FetchLeadsResponseModel(
      {final int? status,
      final String? message,
      final List<LeadModel>? data}) = _$FetchLeadsResponseModelImpl;

  factory _FetchLeadsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchLeadsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<LeadModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchLeadsResponseModelImplCopyWith<_$FetchLeadsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LeadModel _$LeadModelFromJson(Map<String, dynamic> json) {
  return _LeadModel.fromJson(json);
}

/// @nodoc
mixin _$LeadModel {
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get dealerId => throw _privateConstructorUsedError;
  dynamic get hostelId => throw _privateConstructorUsedError;
  dynamic get roomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadModelCopyWith<LeadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadModelCopyWith<$Res> {
  factory $LeadModelCopyWith(LeadModel value, $Res Function(LeadModel) then) =
      _$LeadModelCopyWithImpl<$Res, LeadModel>;
  @useResult
  $Res call(
      {dynamic userId, dynamic dealerId, dynamic hostelId, dynamic roomId});
}

/// @nodoc
class _$LeadModelCopyWithImpl<$Res, $Val extends LeadModel>
    implements $LeadModelCopyWith<$Res> {
  _$LeadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? dealerId = freezed,
    Object? hostelId = freezed,
    Object? roomId = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadModelImplCopyWith<$Res>
    implements $LeadModelCopyWith<$Res> {
  factory _$$LeadModelImplCopyWith(
          _$LeadModelImpl value, $Res Function(_$LeadModelImpl) then) =
      __$$LeadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic userId, dynamic dealerId, dynamic hostelId, dynamic roomId});
}

/// @nodoc
class __$$LeadModelImplCopyWithImpl<$Res>
    extends _$LeadModelCopyWithImpl<$Res, _$LeadModelImpl>
    implements _$$LeadModelImplCopyWith<$Res> {
  __$$LeadModelImplCopyWithImpl(
      _$LeadModelImpl _value, $Res Function(_$LeadModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? dealerId = freezed,
    Object? hostelId = freezed,
    Object? roomId = freezed,
  }) {
    return _then(_$LeadModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadModelImpl implements _LeadModel {
  const _$LeadModelImpl(
      {this.userId, this.dealerId, this.hostelId, this.roomId});

  factory _$LeadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadModelImplFromJson(json);

  @override
  final dynamic userId;
  @override
  final dynamic dealerId;
  @override
  final dynamic hostelId;
  @override
  final dynamic roomId;

  @override
  String toString() {
    return 'LeadModel(userId: $userId, dealerId: $dealerId, hostelId: $hostelId, roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadModelImpl &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.dealerId, dealerId) &&
            const DeepCollectionEquality().equals(other.hostelId, hostelId) &&
            const DeepCollectionEquality().equals(other.roomId, roomId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(dealerId),
      const DeepCollectionEquality().hash(hostelId),
      const DeepCollectionEquality().hash(roomId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadModelImplCopyWith<_$LeadModelImpl> get copyWith =>
      __$$LeadModelImplCopyWithImpl<_$LeadModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadModelImplToJson(
      this,
    );
  }
}

abstract class _LeadModel implements LeadModel {
  const factory _LeadModel(
      {final dynamic userId,
      final dynamic dealerId,
      final dynamic hostelId,
      final dynamic roomId}) = _$LeadModelImpl;

  factory _LeadModel.fromJson(Map<String, dynamic> json) =
      _$LeadModelImpl.fromJson;

  @override
  dynamic get userId;
  @override
  dynamic get dealerId;
  @override
  dynamic get hostelId;
  @override
  dynamic get roomId;
  @override
  @JsonKey(ignore: true)
  _$$LeadModelImplCopyWith<_$LeadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatsDataModel _$StatsDataModelFromJson(Map<String, dynamic> json) {
  return _StatsDataModel.fromJson(json);
}

/// @nodoc
mixin _$StatsDataModel {
  String? get type => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsDataModelCopyWith<StatsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsDataModelCopyWith<$Res> {
  factory $StatsDataModelCopyWith(
          StatsDataModel value, $Res Function(StatsDataModel) then) =
      _$StatsDataModelCopyWithImpl<$Res, StatsDataModel>;
  @useResult
  $Res call({String? type, int? amount});
}

/// @nodoc
class _$StatsDataModelCopyWithImpl<$Res, $Val extends StatsDataModel>
    implements $StatsDataModelCopyWith<$Res> {
  _$StatsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsDataModelImplCopyWith<$Res>
    implements $StatsDataModelCopyWith<$Res> {
  factory _$$StatsDataModelImplCopyWith(_$StatsDataModelImpl value,
          $Res Function(_$StatsDataModelImpl) then) =
      __$$StatsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, int? amount});
}

/// @nodoc
class __$$StatsDataModelImplCopyWithImpl<$Res>
    extends _$StatsDataModelCopyWithImpl<$Res, _$StatsDataModelImpl>
    implements _$$StatsDataModelImplCopyWith<$Res> {
  __$$StatsDataModelImplCopyWithImpl(
      _$StatsDataModelImpl _value, $Res Function(_$StatsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$StatsDataModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsDataModelImpl implements _StatsDataModel {
  const _$StatsDataModelImpl({this.type, this.amount});

  factory _$StatsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsDataModelImplFromJson(json);

  @override
  final String? type;
  @override
  final int? amount;

  @override
  String toString() {
    return 'StatsDataModel(type: $type, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsDataModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsDataModelImplCopyWith<_$StatsDataModelImpl> get copyWith =>
      __$$StatsDataModelImplCopyWithImpl<_$StatsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsDataModelImplToJson(
      this,
    );
  }
}

abstract class _StatsDataModel implements StatsDataModel {
  const factory _StatsDataModel({final String? type, final int? amount}) =
      _$StatsDataModelImpl;

  factory _StatsDataModel.fromJson(Map<String, dynamic> json) =
      _$StatsDataModelImpl.fromJson;

  @override
  String? get type;
  @override
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$$StatsDataModelImplCopyWith<_$StatsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchAmenitiesResponseModel _$FetchAmenitiesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchAmenitiesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchAmenitiesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<AmenitiesModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAmenitiesResponseModelCopyWith<FetchAmenitiesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAmenitiesResponseModelCopyWith<$Res> {
  factory $FetchAmenitiesResponseModelCopyWith(
          FetchAmenitiesResponseModel value,
          $Res Function(FetchAmenitiesResponseModel) then) =
      _$FetchAmenitiesResponseModelCopyWithImpl<$Res,
          FetchAmenitiesResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<AmenitiesModel>? data});
}

/// @nodoc
class _$FetchAmenitiesResponseModelCopyWithImpl<$Res,
        $Val extends FetchAmenitiesResponseModel>
    implements $FetchAmenitiesResponseModelCopyWith<$Res> {
  _$FetchAmenitiesResponseModelCopyWithImpl(this._value, this._then);

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
              as List<AmenitiesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchAmenitiesResponseModelImplCopyWith<$Res>
    implements $FetchAmenitiesResponseModelCopyWith<$Res> {
  factory _$$FetchAmenitiesResponseModelImplCopyWith(
          _$FetchAmenitiesResponseModelImpl value,
          $Res Function(_$FetchAmenitiesResponseModelImpl) then) =
      __$$FetchAmenitiesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<AmenitiesModel>? data});
}

/// @nodoc
class __$$FetchAmenitiesResponseModelImplCopyWithImpl<$Res>
    extends _$FetchAmenitiesResponseModelCopyWithImpl<$Res,
        _$FetchAmenitiesResponseModelImpl>
    implements _$$FetchAmenitiesResponseModelImplCopyWith<$Res> {
  __$$FetchAmenitiesResponseModelImplCopyWithImpl(
      _$FetchAmenitiesResponseModelImpl _value,
      $Res Function(_$FetchAmenitiesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchAmenitiesResponseModelImpl(
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
              as List<AmenitiesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchAmenitiesResponseModelImpl
    implements _FetchAmenitiesResponseModel {
  const _$FetchAmenitiesResponseModelImpl(
      {this.status, this.message, final List<AmenitiesModel>? data})
      : _data = data;

  factory _$FetchAmenitiesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchAmenitiesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<AmenitiesModel>? _data;
  @override
  List<AmenitiesModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchAmenitiesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAmenitiesResponseModelImpl &&
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
  _$$FetchAmenitiesResponseModelImplCopyWith<_$FetchAmenitiesResponseModelImpl>
      get copyWith => __$$FetchAmenitiesResponseModelImplCopyWithImpl<
          _$FetchAmenitiesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchAmenitiesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchAmenitiesResponseModel
    implements FetchAmenitiesResponseModel {
  const factory _FetchAmenitiesResponseModel(
      {final int? status,
      final String? message,
      final List<AmenitiesModel>? data}) = _$FetchAmenitiesResponseModelImpl;

  factory _FetchAmenitiesResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchAmenitiesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<AmenitiesModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchAmenitiesResponseModelImplCopyWith<_$FetchAmenitiesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchHostelRoomsResponseModel _$FetchHostelRoomsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHostelRoomsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHostelRoomsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<RoomModel>? get data => throw _privateConstructorUsedError;
  List<String>? get roomTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHostelRoomsResponseModelCopyWith<FetchHostelRoomsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHostelRoomsResponseModelCopyWith<$Res> {
  factory $FetchHostelRoomsResponseModelCopyWith(
          FetchHostelRoomsResponseModel value,
          $Res Function(FetchHostelRoomsResponseModel) then) =
      _$FetchHostelRoomsResponseModelCopyWithImpl<$Res,
          FetchHostelRoomsResponseModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      List<RoomModel>? data,
      List<String>? roomTypes});
}

/// @nodoc
class _$FetchHostelRoomsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHostelRoomsResponseModel>
    implements $FetchHostelRoomsResponseModelCopyWith<$Res> {
  _$FetchHostelRoomsResponseModelCopyWithImpl(this._value, this._then);

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
    Object? roomTypes = freezed,
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
              as List<RoomModel>?,
      roomTypes: freezed == roomTypes
          ? _value.roomTypes
          : roomTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchHostelRoomsResponseModelImplCopyWith<$Res>
    implements $FetchHostelRoomsResponseModelCopyWith<$Res> {
  factory _$$FetchHostelRoomsResponseModelImplCopyWith(
          _$FetchHostelRoomsResponseModelImpl value,
          $Res Function(_$FetchHostelRoomsResponseModelImpl) then) =
      __$$FetchHostelRoomsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      List<RoomModel>? data,
      List<String>? roomTypes});
}

/// @nodoc
class __$$FetchHostelRoomsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHostelRoomsResponseModelCopyWithImpl<$Res,
        _$FetchHostelRoomsResponseModelImpl>
    implements _$$FetchHostelRoomsResponseModelImplCopyWith<$Res> {
  __$$FetchHostelRoomsResponseModelImplCopyWithImpl(
      _$FetchHostelRoomsResponseModelImpl _value,
      $Res Function(_$FetchHostelRoomsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? roomTypes = freezed,
  }) {
    return _then(_$FetchHostelRoomsResponseModelImpl(
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
              as List<RoomModel>?,
      roomTypes: freezed == roomTypes
          ? _value._roomTypes
          : roomTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHostelRoomsResponseModelImpl
    implements _FetchHostelRoomsResponseModel {
  const _$FetchHostelRoomsResponseModelImpl(
      {this.status,
      this.message,
      final List<RoomModel>? data,
      final List<String>? roomTypes})
      : _data = data,
        _roomTypes = roomTypes;

  factory _$FetchHostelRoomsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchHostelRoomsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<RoomModel>? _data;
  @override
  List<RoomModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _roomTypes;
  @override
  List<String>? get roomTypes {
    final value = _roomTypes;
    if (value == null) return null;
    if (_roomTypes is EqualUnmodifiableListView) return _roomTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchHostelRoomsResponseModel(status: $status, message: $message, data: $data, roomTypes: $roomTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHostelRoomsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._roomTypes, _roomTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_roomTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHostelRoomsResponseModelImplCopyWith<
          _$FetchHostelRoomsResponseModelImpl>
      get copyWith => __$$FetchHostelRoomsResponseModelImplCopyWithImpl<
          _$FetchHostelRoomsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHostelRoomsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHostelRoomsResponseModel
    implements FetchHostelRoomsResponseModel {
  const factory _FetchHostelRoomsResponseModel(
      {final int? status,
      final String? message,
      final List<RoomModel>? data,
      final List<String>? roomTypes}) = _$FetchHostelRoomsResponseModelImpl;

  factory _FetchHostelRoomsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchHostelRoomsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<RoomModel>? get data;
  @override
  List<String>? get roomTypes;
  @override
  @JsonKey(ignore: true)
  _$$FetchHostelRoomsResponseModelImplCopyWith<
          _$FetchHostelRoomsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AmenitiesModel _$AmenitiesModelFromJson(Map<String, dynamic> json) {
  return _AmenitiesModel.fromJson(json);
}

/// @nodoc
mixin _$AmenitiesModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmenitiesModelCopyWith<AmenitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenitiesModelCopyWith<$Res> {
  factory $AmenitiesModelCopyWith(
          AmenitiesModel value, $Res Function(AmenitiesModel) then) =
      _$AmenitiesModelCopyWithImpl<$Res, AmenitiesModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String? image, String? name});
}

/// @nodoc
class _$AmenitiesModelCopyWithImpl<$Res, $Val extends AmenitiesModel>
    implements $AmenitiesModelCopyWith<$Res> {
  _$AmenitiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmenitiesModelImplCopyWith<$Res>
    implements $AmenitiesModelCopyWith<$Res> {
  factory _$$AmenitiesModelImplCopyWith(_$AmenitiesModelImpl value,
          $Res Function(_$AmenitiesModelImpl) then) =
      __$$AmenitiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String? image, String? name});
}

/// @nodoc
class __$$AmenitiesModelImplCopyWithImpl<$Res>
    extends _$AmenitiesModelCopyWithImpl<$Res, _$AmenitiesModelImpl>
    implements _$$AmenitiesModelImplCopyWith<$Res> {
  __$$AmenitiesModelImplCopyWithImpl(
      _$AmenitiesModelImpl _value, $Res Function(_$AmenitiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AmenitiesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$AmenitiesModelImpl implements _AmenitiesModel {
  const _$AmenitiesModelImpl(
      {@JsonKey(name: '_id') this.id, this.image, this.name});

  factory _$AmenitiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmenitiesModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final String? name;

  @override
  String toString() {
    return 'AmenitiesModel(id: $id, image: $image, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmenitiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmenitiesModelImplCopyWith<_$AmenitiesModelImpl> get copyWith =>
      __$$AmenitiesModelImplCopyWithImpl<_$AmenitiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmenitiesModelImplToJson(
      this,
    );
  }
}

abstract class _AmenitiesModel implements AmenitiesModel {
  const factory _AmenitiesModel(
      {@JsonKey(name: '_id') final String? id,
      final String? image,
      final String? name}) = _$AmenitiesModelImpl;

  factory _AmenitiesModel.fromJson(Map<String, dynamic> json) =
      _$AmenitiesModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$AmenitiesModelImplCopyWith<_$AmenitiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterRoomResponseModel _$RegisterRoomResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterRoomResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterRoomResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  RoomModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRoomResponseModelCopyWith<RegisterRoomResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRoomResponseModelCopyWith<$Res> {
  factory $RegisterRoomResponseModelCopyWith(RegisterRoomResponseModel value,
          $Res Function(RegisterRoomResponseModel) then) =
      _$RegisterRoomResponseModelCopyWithImpl<$Res, RegisterRoomResponseModel>;
  @useResult
  $Res call({int? status, String? message, RoomModel? data});

  $RoomModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterRoomResponseModelCopyWithImpl<$Res,
        $Val extends RegisterRoomResponseModel>
    implements $RegisterRoomResponseModelCopyWith<$Res> {
  _$RegisterRoomResponseModelCopyWithImpl(this._value, this._then);

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
              as RoomModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RoomModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterRoomResponseModelImplCopyWith<$Res>
    implements $RegisterRoomResponseModelCopyWith<$Res> {
  factory _$$RegisterRoomResponseModelImplCopyWith(
          _$RegisterRoomResponseModelImpl value,
          $Res Function(_$RegisterRoomResponseModelImpl) then) =
      __$$RegisterRoomResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, RoomModel? data});

  @override
  $RoomModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RegisterRoomResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterRoomResponseModelCopyWithImpl<$Res,
        _$RegisterRoomResponseModelImpl>
    implements _$$RegisterRoomResponseModelImplCopyWith<$Res> {
  __$$RegisterRoomResponseModelImplCopyWithImpl(
      _$RegisterRoomResponseModelImpl _value,
      $Res Function(_$RegisterRoomResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RegisterRoomResponseModelImpl(
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
              as RoomModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterRoomResponseModelImpl implements _RegisterRoomResponseModel {
  const _$RegisterRoomResponseModelImpl({this.status, this.message, this.data});

  factory _$RegisterRoomResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterRoomResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final RoomModel? data;

  @override
  String toString() {
    return 'RegisterRoomResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRoomResponseModelImpl &&
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
  _$$RegisterRoomResponseModelImplCopyWith<_$RegisterRoomResponseModelImpl>
      get copyWith => __$$RegisterRoomResponseModelImplCopyWithImpl<
          _$RegisterRoomResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterRoomResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterRoomResponseModel implements RegisterRoomResponseModel {
  const factory _RegisterRoomResponseModel(
      {final int? status,
      final String? message,
      final RoomModel? data}) = _$RegisterRoomResponseModelImpl;

  factory _RegisterRoomResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegisterRoomResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  RoomModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$RegisterRoomResponseModelImplCopyWith<_$RegisterRoomResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
mixin _$RoomModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get dealerId => throw _privateConstructorUsedError;
  String? get hostelId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get roomNo => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  List<String>? get specialAmenities => throw _privateConstructorUsedError;
  int? get capacityCount => throw _privateConstructorUsedError;
  int? get occupiedCount => throw _privateConstructorUsedError;
  String? get roomType => throw _privateConstructorUsedError;
  RentModel? get rent => throw _privateConstructorUsedError;
  DateTime? get checkInDate => throw _privateConstructorUsedError;
  DateTime? get checkOutDate => throw _privateConstructorUsedError;
  int? get guestCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? dealerId,
      String? hostelId,
      String? image,
      String? roomNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      int? occupiedCount,
      String? roomType,
      RentModel? rent,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount});

  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dealerId = freezed,
    Object? hostelId = freezed,
    Object? image = freezed,
    Object? roomNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? occupiedCount = freezed,
    Object? roomType = freezed,
    Object? rent = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      roomNo: freezed == roomNo
          ? _value.roomNo
          : roomNo // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      specialAmenities: freezed == specialAmenities
          ? _value.specialAmenities
          : specialAmenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      capacityCount: freezed == capacityCount
          ? _value.capacityCount
          : capacityCount // ignore: cast_nullable_to_non_nullable
              as int?,
      occupiedCount: freezed == occupiedCount
          ? _value.occupiedCount
          : occupiedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RentModelCopyWith<$Res>? get rent {
    if (_value.rent == null) {
      return null;
    }

    return $RentModelCopyWith<$Res>(_value.rent!, (value) {
      return _then(_value.copyWith(rent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomModelImplCopyWith<$Res>
    implements $RoomModelCopyWith<$Res> {
  factory _$$RoomModelImplCopyWith(
          _$RoomModelImpl value, $Res Function(_$RoomModelImpl) then) =
      __$$RoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? dealerId,
      String? hostelId,
      String? image,
      String? roomNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      int? occupiedCount,
      String? roomType,
      RentModel? rent,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount});

  @override
  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class __$$RoomModelImplCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$RoomModelImpl>
    implements _$$RoomModelImplCopyWith<$Res> {
  __$$RoomModelImplCopyWithImpl(
      _$RoomModelImpl _value, $Res Function(_$RoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dealerId = freezed,
    Object? hostelId = freezed,
    Object? image = freezed,
    Object? roomNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? occupiedCount = freezed,
    Object? roomType = freezed,
    Object? rent = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
  }) {
    return _then(_$RoomModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      hostelId: freezed == hostelId
          ? _value.hostelId
          : hostelId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      roomNo: freezed == roomNo
          ? _value.roomNo
          : roomNo // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      specialAmenities: freezed == specialAmenities
          ? _value._specialAmenities
          : specialAmenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      capacityCount: freezed == capacityCount
          ? _value.capacityCount
          : capacityCount // ignore: cast_nullable_to_non_nullable
              as int?,
      occupiedCount: freezed == occupiedCount
          ? _value.occupiedCount
          : occupiedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomModelImpl implements _RoomModel {
  const _$RoomModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.dealerId,
      this.hostelId,
      this.image,
      this.roomNo,
      this.floor,
      final List<String>? specialAmenities,
      this.capacityCount,
      this.occupiedCount,
      this.roomType,
      this.rent,
      this.checkInDate,
      this.checkOutDate,
      this.guestCount})
      : _specialAmenities = specialAmenities;

  factory _$RoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? dealerId;
  @override
  final String? hostelId;
  @override
  final String? image;
  @override
  final String? roomNo;
  @override
  final int? floor;
  final List<String>? _specialAmenities;
  @override
  List<String>? get specialAmenities {
    final value = _specialAmenities;
    if (value == null) return null;
    if (_specialAmenities is EqualUnmodifiableListView)
      return _specialAmenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? capacityCount;
  @override
  final int? occupiedCount;
  @override
  final String? roomType;
  @override
  final RentModel? rent;
  @override
  final DateTime? checkInDate;
  @override
  final DateTime? checkOutDate;
  @override
  final int? guestCount;

  @override
  String toString() {
    return 'RoomModel(id: $id, dealerId: $dealerId, hostelId: $hostelId, image: $image, roomNo: $roomNo, floor: $floor, specialAmenities: $specialAmenities, capacityCount: $capacityCount, occupiedCount: $occupiedCount, roomType: $roomType, rent: $rent, checkInDate: $checkInDate, checkOutDate: $checkOutDate, guestCount: $guestCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dealerId, dealerId) ||
                other.dealerId == dealerId) &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.roomNo, roomNo) || other.roomNo == roomNo) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            const DeepCollectionEquality()
                .equals(other._specialAmenities, _specialAmenities) &&
            (identical(other.capacityCount, capacityCount) ||
                other.capacityCount == capacityCount) &&
            (identical(other.occupiedCount, occupiedCount) ||
                other.occupiedCount == occupiedCount) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType) &&
            (identical(other.rent, rent) || other.rent == rent) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dealerId,
      hostelId,
      image,
      roomNo,
      floor,
      const DeepCollectionEquality().hash(_specialAmenities),
      capacityCount,
      occupiedCount,
      roomType,
      rent,
      checkInDate,
      checkOutDate,
      guestCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      __$$RoomModelImplCopyWithImpl<_$RoomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomModelImplToJson(
      this,
    );
  }
}

abstract class _RoomModel implements RoomModel {
  const factory _RoomModel(
      {@JsonKey(name: '_id') final String? id,
      final String? dealerId,
      final String? hostelId,
      final String? image,
      final String? roomNo,
      final int? floor,
      final List<String>? specialAmenities,
      final int? capacityCount,
      final int? occupiedCount,
      final String? roomType,
      final RentModel? rent,
      final DateTime? checkInDate,
      final DateTime? checkOutDate,
      final int? guestCount}) = _$RoomModelImpl;

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$RoomModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get dealerId;
  @override
  String? get hostelId;
  @override
  String? get image;
  @override
  String? get roomNo;
  @override
  int? get floor;
  @override
  List<String>? get specialAmenities;
  @override
  int? get capacityCount;
  @override
  int? get occupiedCount;
  @override
  String? get roomType;
  @override
  RentModel? get rent;
  @override
  DateTime? get checkInDate;
  @override
  DateTime? get checkOutDate;
  @override
  int? get guestCount;
  @override
  @JsonKey(ignore: true)
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RentModel _$RentModelFromJson(Map<String, dynamic> json) {
  return _RentModel.fromJson(json);
}

/// @nodoc
mixin _$RentModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get daily => throw _privateConstructorUsedError;
  int? get monthly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentModelCopyWith<RentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentModelCopyWith<$Res> {
  factory $RentModelCopyWith(RentModel value, $Res Function(RentModel) then) =
      _$RentModelCopyWithImpl<$Res, RentModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, int? daily, int? monthly});
}

/// @nodoc
class _$RentModelCopyWithImpl<$Res, $Val extends RentModel>
    implements $RentModelCopyWith<$Res> {
  _$RentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? daily = freezed,
    Object? monthly = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as int?,
      monthly: freezed == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentModelImplCopyWith<$Res>
    implements $RentModelCopyWith<$Res> {
  factory _$$RentModelImplCopyWith(
          _$RentModelImpl value, $Res Function(_$RentModelImpl) then) =
      __$$RentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, int? daily, int? monthly});
}

/// @nodoc
class __$$RentModelImplCopyWithImpl<$Res>
    extends _$RentModelCopyWithImpl<$Res, _$RentModelImpl>
    implements _$$RentModelImplCopyWith<$Res> {
  __$$RentModelImplCopyWithImpl(
      _$RentModelImpl _value, $Res Function(_$RentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? daily = freezed,
    Object? monthly = freezed,
  }) {
    return _then(_$RentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as int?,
      monthly: freezed == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentModelImpl implements _RentModel {
  const _$RentModelImpl(
      {@JsonKey(name: '_id') this.id, this.daily, this.monthly});

  factory _$RentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? daily;
  @override
  final int? monthly;

  @override
  String toString() {
    return 'RentModel(id: $id, daily: $daily, monthly: $monthly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.daily, daily) || other.daily == daily) &&
            (identical(other.monthly, monthly) || other.monthly == monthly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, daily, monthly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentModelImplCopyWith<_$RentModelImpl> get copyWith =>
      __$$RentModelImplCopyWithImpl<_$RentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentModelImplToJson(
      this,
    );
  }
}

abstract class _RentModel implements RentModel {
  const factory _RentModel(
      {@JsonKey(name: '_id') final String? id,
      final int? daily,
      final int? monthly}) = _$RentModelImpl;

  factory _RentModel.fromJson(Map<String, dynamic> json) =
      _$RentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get daily;
  @override
  int? get monthly;
  @override
  @JsonKey(ignore: true)
  _$$RentModelImplCopyWith<_$RentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
