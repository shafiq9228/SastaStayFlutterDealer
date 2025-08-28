// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hostel_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListRoomRequestModel _$ListRoomRequestModelFromJson(Map<String, dynamic> json) {
  return _ListRoomRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ListRoomRequestModel {
  String? get roomId => throw _privateConstructorUsedError;
  String? get hostelId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get roomNo => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  List<String>? get specialAmenities => throw _privateConstructorUsedError;
  int? get capacityCount => throw _privateConstructorUsedError;
  String? get roomType => throw _privateConstructorUsedError;
  RentModel? get rent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListRoomRequestModelCopyWith<ListRoomRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListRoomRequestModelCopyWith<$Res> {
  factory $ListRoomRequestModelCopyWith(ListRoomRequestModel value,
          $Res Function(ListRoomRequestModel) then) =
      _$ListRoomRequestModelCopyWithImpl<$Res, ListRoomRequestModel>;
  @useResult
  $Res call(
      {String? roomId,
      String? hostelId,
      String? image,
      String? roomNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      String? roomType,
      RentModel? rent});

  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class _$ListRoomRequestModelCopyWithImpl<$Res,
        $Val extends ListRoomRequestModel>
    implements $ListRoomRequestModelCopyWith<$Res> {
  _$ListRoomRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = freezed,
    Object? hostelId = freezed,
    Object? image = freezed,
    Object? roomNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? roomType = freezed,
    Object? rent = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
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
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
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
abstract class _$$ListRoomRequestModelImplCopyWith<$Res>
    implements $ListRoomRequestModelCopyWith<$Res> {
  factory _$$ListRoomRequestModelImplCopyWith(_$ListRoomRequestModelImpl value,
          $Res Function(_$ListRoomRequestModelImpl) then) =
      __$$ListRoomRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? roomId,
      String? hostelId,
      String? image,
      String? roomNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      String? roomType,
      RentModel? rent});

  @override
  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class __$$ListRoomRequestModelImplCopyWithImpl<$Res>
    extends _$ListRoomRequestModelCopyWithImpl<$Res, _$ListRoomRequestModelImpl>
    implements _$$ListRoomRequestModelImplCopyWith<$Res> {
  __$$ListRoomRequestModelImplCopyWithImpl(_$ListRoomRequestModelImpl _value,
      $Res Function(_$ListRoomRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = freezed,
    Object? hostelId = freezed,
    Object? image = freezed,
    Object? roomNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? roomType = freezed,
    Object? rent = freezed,
  }) {
    return _then(_$ListRoomRequestModelImpl(
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
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
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListRoomRequestModelImpl implements _ListRoomRequestModel {
  const _$ListRoomRequestModelImpl(
      {required this.roomId,
      required this.hostelId,
      required this.image,
      required this.roomNo,
      required this.floor,
      required final List<String>? specialAmenities,
      required this.capacityCount,
      required this.roomType,
      required this.rent})
      : _specialAmenities = specialAmenities;

  factory _$ListRoomRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListRoomRequestModelImplFromJson(json);

  @override
  final String? roomId;
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
  final String? roomType;
  @override
  final RentModel? rent;

  @override
  String toString() {
    return 'ListRoomRequestModel(roomId: $roomId, hostelId: $hostelId, image: $image, roomNo: $roomNo, floor: $floor, specialAmenities: $specialAmenities, capacityCount: $capacityCount, roomType: $roomType, rent: $rent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListRoomRequestModelImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.hostelId, hostelId) ||
                other.hostelId == hostelId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.roomNo, roomNo) || other.roomNo == roomNo) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            const DeepCollectionEquality()
                .equals(other._specialAmenities, _specialAmenities) &&
            (identical(other.capacityCount, capacityCount) ||
                other.capacityCount == capacityCount) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType) &&
            (identical(other.rent, rent) || other.rent == rent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomId,
      hostelId,
      image,
      roomNo,
      floor,
      const DeepCollectionEquality().hash(_specialAmenities),
      capacityCount,
      roomType,
      rent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListRoomRequestModelImplCopyWith<_$ListRoomRequestModelImpl>
      get copyWith =>
          __$$ListRoomRequestModelImplCopyWithImpl<_$ListRoomRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListRoomRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ListRoomRequestModel implements ListRoomRequestModel {
  const factory _ListRoomRequestModel(
      {required final String? roomId,
      required final String? hostelId,
      required final String? image,
      required final String? roomNo,
      required final int? floor,
      required final List<String>? specialAmenities,
      required final int? capacityCount,
      required final String? roomType,
      required final RentModel? rent}) = _$ListRoomRequestModelImpl;

  factory _ListRoomRequestModel.fromJson(Map<String, dynamic> json) =
      _$ListRoomRequestModelImpl.fromJson;

  @override
  String? get roomId;
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
  String? get roomType;
  @override
  RentModel? get rent;
  @override
  @JsonKey(ignore: true)
  _$$ListRoomRequestModelImplCopyWith<_$ListRoomRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
