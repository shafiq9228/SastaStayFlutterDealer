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
      List<GuestDetailsModel>? guestDetailsList});

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
      List<GuestDetailsModel>? guestDetailsList});

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
      required final List<GuestDetailsModel>? guestDetailsList})
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
  String toString() {
    return 'BookingRequestModel(roomModel: $roomModel, hostelId: $hostelId, roomId: $roomId, checkInDate: $checkInDate, checkOutDate: $checkOutDate, guestCount: $guestCount, guestDetailsList: $guestDetailsList)';
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
                .equals(other._guestDetailsList, _guestDetailsList));
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
      const DeepCollectionEquality().hash(_guestDetailsList));

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
          required final List<GuestDetailsModel>? guestDetailsList}) =
      _$BookingRequestModelImpl;

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
  @JsonKey(ignore: true)
  _$$BookingRequestModelImplCopyWith<_$BookingRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
