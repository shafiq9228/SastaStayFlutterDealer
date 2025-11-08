import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sasta_stay_dealer/response_model/bookings_response_model.dart';

import '../request_models/auth_request_model.dart';
import 'auth_response_model.dart';

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
class FetchRatingAndReviewsResponseModel with _$FetchRatingAndReviewsResponseModel{
  const factory FetchRatingAndReviewsResponseModel({
    int? status,
    String? message,
    List<RatingAndReviewModel>? data
  }) = _FetchRatingAndReviewsResponseModel;

  factory FetchRatingAndReviewsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchRatingAndReviewsResponseModelFromJson(json);
}


@Freezed()
class RatingAndReviewModel with _$RatingAndReviewModel{
  const factory RatingAndReviewModel({
    dynamic userId,
    dynamic hostelId,
    dynamic rating,
    String? review
  }) = _RatingAndReviewModel;

  factory RatingAndReviewModel.fromJson(Map<String, dynamic> json) => _$RatingAndReviewModelFromJson(json);
}

@Freezed()
class CategoryRating with _$CategoryRating{
  const factory CategoryRating({
    dynamic rating,
    String? ratedFor
  }) = _CategoryRating;

  factory CategoryRating.fromJson(Map<String, dynamic> json) => _$CategoryRatingFromJson(json);
}


@Freezed()
class FetchHostelStatisticsResponseModel with _$FetchHostelStatisticsResponseModel{
  const factory FetchHostelStatisticsResponseModel({
    int? status,
    String? message,
    List<StatsDataModel>? data
  }) = _FetchHostelStatisticsResponseModel;

  factory FetchHostelStatisticsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHostelStatisticsResponseModelFromJson(json);
}




@Freezed()
class HostelModel with _$HostelModel{
  const factory HostelModel({
    @JsonKey(name: '_id') String? id,
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
    String? checkOutTime
  }) = _HostelModel;

  factory HostelModel.fromJson(Map<String, dynamic> json) => _$HostelModelFromJson(json);
}


@Freezed()
class HostelRoomAvailabilityDatesResponseModel with _$HostelRoomAvailabilityDatesResponseModel {
  const factory HostelRoomAvailabilityDatesResponseModel({
    int? status,
    String? message,
    List<AvailabilityDataModel>? data
  }) = _HostelRoomAvailabilityDatesResponseModel;

  factory HostelRoomAvailabilityDatesResponseModel.fromJson(Map<String, dynamic> json) => _$HostelRoomAvailabilityDatesResponseModelFromJson(json);
}


@Freezed()
class AvailabilityDataModel with _$AvailabilityDataModel {
  const factory AvailabilityDataModel({
    String? date,
    String? status,
  }) = _AvailabilityDataModel;

  factory AvailabilityDataModel.fromJson(Map<String, dynamic> json) => _$AvailabilityDataModelFromJson(json);
}

@Freezed()
class ImageDataModel with _$ImageDataModel{
  const factory ImageDataModel({
    String? imagesType,
    List<String>? images
  }) = _ImageDataModel;

  factory ImageDataModel.fromJson(Map<String, dynamic> json) => _$ImageDataModelFromJson(json);
}

@Freezed()
class FetchLeadsResponseModel with _$FetchLeadsResponseModel{
  const factory FetchLeadsResponseModel({
    int? status,
    String? message,
    List<LeadModel>? data
  }) = _FetchLeadsResponseModel;

  factory FetchLeadsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchLeadsResponseModelFromJson(json);
}

@Freezed()
class LeadModel with _$LeadModel{
  const factory LeadModel({
    dynamic userId,
    dynamic dealerId,
    dynamic hostelId,
    dynamic roomId
  }) = _LeadModel;

  factory LeadModel.fromJson(Map<String, dynamic> json) => _$LeadModelFromJson(json);
}

@Freezed()
class StatsDataModel with _$StatsDataModel{
  const factory StatsDataModel({
    String? type,
    int? amount
  }) = _StatsDataModel;

  factory StatsDataModel.fromJson(Map<String, dynamic> json) => _$StatsDataModelFromJson(json);
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
    List<RoomModel>? data,
    List<String>? roomTypes
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
class RegisterRoomResponseModel with _$RegisterRoomResponseModel{
  const factory RegisterRoomResponseModel({
    int? status,
    String? message,
    RoomModel? data
  }) = _RegisterRoomResponseModel;

  factory RegisterRoomResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterRoomResponseModelFromJson(json);
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
    RentModel? rent,
    DateTime? checkInDate,
    DateTime? checkOutDate,
    int? guestCount
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