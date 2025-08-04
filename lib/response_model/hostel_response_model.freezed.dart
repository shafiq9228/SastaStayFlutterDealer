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

HostelModel _$HostelModelFromJson(Map<String, dynamic> json) {
  return _HostelModel.fromJson(json);
}

/// @nodoc
mixin _$HostelModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  List<String>? get rejectedFields => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get hostelImage => throw _privateConstructorUsedError;
  String? get hostelLicence => throw _privateConstructorUsedError;
  String? get hostelName => throw _privateConstructorUsedError;
  String? get aboutHostel => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  int? get monthlyIncome => throw _privateConstructorUsedError;
  int? get totalIncome => throw _privateConstructorUsedError;
  int? get totalVotes => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;

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
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      String? hostelImage,
      String? hostelLicence,
      String? hostelName,
      String? aboutHostel,
      String? gstIn,
      LocationModel? location,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      dynamic rating});

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
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? hostelImage = freezed,
    Object? hostelLicence = freezed,
    Object? hostelName = freezed,
    Object? aboutHostel = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$HostelModelImplCopyWith<$Res>
    implements $HostelModelCopyWith<$Res> {
  factory _$$HostelModelImplCopyWith(
          _$HostelModelImpl value, $Res Function(_$HostelModelImpl) then) =
      __$$HostelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      String? hostelImage,
      String? hostelLicence,
      String? hostelName,
      String? aboutHostel,
      String? gstIn,
      LocationModel? location,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      dynamic rating});

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
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? hostelImage = freezed,
    Object? hostelLicence = freezed,
    Object? hostelName = freezed,
    Object? aboutHostel = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$HostelModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostelModelImpl implements _HostelModel {
  const _$HostelModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.approvalStatus,
      final List<String>? rejectedFields,
      this.reason,
      this.hostelImage,
      this.hostelLicence,
      this.hostelName,
      this.aboutHostel,
      this.gstIn,
      this.location,
      this.monthlyIncome,
      this.totalIncome,
      this.totalVotes,
      this.rating})
      : _rejectedFields = rejectedFields;

  factory _$HostelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HostelModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
  final LocationModel? location;
  @override
  final int? monthlyIncome;
  @override
  final int? totalIncome;
  @override
  final int? totalVotes;
  @override
  final dynamic rating;

  @override
  String toString() {
    return 'HostelModel(id: $id, approvalStatus: $approvalStatus, rejectedFields: $rejectedFields, reason: $reason, hostelImage: $hostelImage, hostelLicence: $hostelLicence, hostelName: $hostelName, aboutHostel: $aboutHostel, gstIn: $gstIn, location: $location, monthlyIncome: $monthlyIncome, totalIncome: $totalIncome, totalVotes: $totalVotes, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            const DeepCollectionEquality()
                .equals(other._rejectedFields, _rejectedFields) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.hostelImage, hostelImage) ||
                other.hostelImage == hostelImage) &&
            (identical(other.hostelLicence, hostelLicence) ||
                other.hostelLicence == hostelLicence) &&
            (identical(other.hostelName, hostelName) ||
                other.hostelName == hostelName) &&
            (identical(other.aboutHostel, aboutHostel) ||
                other.aboutHostel == aboutHostel) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      approvalStatus,
      const DeepCollectionEquality().hash(_rejectedFields),
      reason,
      hostelImage,
      hostelLicence,
      hostelName,
      aboutHostel,
      gstIn,
      location,
      monthlyIncome,
      totalIncome,
      totalVotes,
      const DeepCollectionEquality().hash(rating));

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
      final String? approvalStatus,
      final List<String>? rejectedFields,
      final String? reason,
      final String? hostelImage,
      final String? hostelLicence,
      final String? hostelName,
      final String? aboutHostel,
      final String? gstIn,
      final LocationModel? location,
      final int? monthlyIncome,
      final int? totalIncome,
      final int? totalVotes,
      final dynamic rating}) = _$HostelModelImpl;

  factory _HostelModel.fromJson(Map<String, dynamic> json) =
      _$HostelModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get approvalStatus;
  @override
  List<String>? get rejectedFields;
  @override
  String? get reason;
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
  LocationModel? get location;
  @override
  int? get monthlyIncome;
  @override
  int? get totalIncome;
  @override
  int? get totalVotes;
  @override
  dynamic get rating;
  @override
  @JsonKey(ignore: true)
  _$$HostelModelImplCopyWith<_$HostelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
