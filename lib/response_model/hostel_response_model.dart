import 'package:freezed_annotation/freezed_annotation.dart';

import '../request_models/auth_request_model.dart';

part 'hostel_response_model.freezed.dart';
part 'hostel_response_model.g.dart';

@Freezed()
class FetchHostelsResponseModel with _$FetchHostelsResponseModel{
  const factory FetchHostelsResponseModel({
    int? status,
    String? message,
    List<HostelModel>? data
  }) = _FetchHostelsResponseModel;

  factory FetchHostelsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHostelsResponseModelFromJson(json);
}

@Freezed()
class FetchHostelDetailsResponseModel with _$FetchHostelDetailsResponseModel{
  const factory FetchHostelDetailsResponseModel({
    int? status,
    String? message,
    HostelModel? data
  }) = _FetchHostelDetailsResponseModel;

  factory FetchHostelDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHostelDetailsResponseModelFromJson(json);
}

@Freezed()
class HostelModel with _$HostelModel{
  const factory HostelModel({
    @JsonKey(name: '_id') String? id,
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
    List<String>? images,
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
    dynamic rating
  }) = _HostelModel;

  factory HostelModel.fromJson(Map<String, dynamic> json) => _$HostelModelFromJson(json);
}


@Freezed()
class FetchAmenitiesResponseModel with _$FetchAmenitiesResponseModel{
  const factory FetchAmenitiesResponseModel({
    int? status,
    String? message,
    List<AmenitiesModel>? data
  }) = _FetchAmenitiesResponseModel;

  factory FetchAmenitiesResponseModel.fromJson(Map<String, dynamic> json) => _$FetchAmenitiesResponseModelFromJson(json);
}

@Freezed()
class FetchHostelRoomsResponseModel with _$FetchHostelRoomsResponseModel{
  const factory FetchHostelRoomsResponseModel({
    int? status,
    String? message,
    List<RoomModel>? data
  }) = _FetchHostelRoomsResponseModel;

  factory FetchHostelRoomsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHostelRoomsResponseModelFromJson(json);
}

@Freezed()
class AmenitiesModel with _$AmenitiesModel{
  const factory AmenitiesModel({
    @JsonKey(name: '_id') String? id,
    String? image,
    String? name
  }) = _AmenitiesModel;

  factory AmenitiesModel.fromJson(Map<String, dynamic> json) => _$AmenitiesModelFromJson(json);
}

@Freezed()
class RoomModel with _$RoomModel{
  const factory RoomModel({
    @JsonKey(name: '_id') String? id,
    String? dealerId,
    String? hostelId,
    String? image,
    String? roomNo,
    int? floor,
    List<String>? specialAmenities,
    int? capacityCount,
    int? occupiedCount,
    String? roomType,
    RentModel? rent
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);
}

@Freezed()
class RentModel with _$RentModel{
  const factory RentModel({
    @JsonKey(name: '_id') String? id,
    int? daily,
    int? monthly,
  }) = _RentModel;

  factory RentModel.fromJson(Map<String, dynamic> json) => _$RentModelFromJson(json);
}