// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchHostelsResponseModelImpl _$$FetchHostelsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchHostelsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HostelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchHostelsResponseModelImplToJson(
        _$FetchHostelsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchHostelDetailsResponseModelImpl
    _$$FetchHostelDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchHostelDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : HostelModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchHostelDetailsResponseModelImplToJson(
        _$FetchHostelDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchRatingAndReviewsResponseModelImpl
    _$$FetchRatingAndReviewsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchRatingAndReviewsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  RatingAndReviewModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchRatingAndReviewsResponseModelImplToJson(
        _$FetchRatingAndReviewsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$RatingAndReviewModelImpl _$$RatingAndReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingAndReviewModelImpl(
      userId: json['userId'],
      hostelId: json['hostelId'],
      rating: json['rating'],
      review: json['review'] as String?,
    );

Map<String, dynamic> _$$RatingAndReviewModelImplToJson(
        _$RatingAndReviewModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'hostelId': instance.hostelId,
      'rating': instance.rating,
      'review': instance.review,
    };

_$HostelModelImpl _$$HostelModelImplFromJson(Map<String, dynamic> json) =>
    _$HostelModelImpl(
      id: json['_id'] as String?,
      approvalStatus: json['approvalStatus'] as String?,
      rejectedFields: (json['rejectedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reason: json['reason'] as String?,
      branch: json['branch'] as int?,
      hostelImage: json['hostelImage'] as String?,
      hostelLicence: json['hostelLicence'] as String?,
      hostelName: json['hostelName'] as String?,
      aboutHostel: json['aboutHostel'] as String?,
      gstIn: json['gstIn'] as String?,
      hostelType: json['hostelType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      amenityIds: (json['amenityIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => AmenitiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amenitiesMore: json['amenitiesMore'] as int?,
      room: json['room'] == null
          ? null
          : RoomModel.fromJson(json['room'] as Map<String, dynamic>),
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomsMore: json['roomsMore'] as int?,
      rules:
          (json['rules'] as List<dynamic>?)?.map((e) => e as String).toList(),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      monthlyIncome: json['monthlyIncome'] as int?,
      totalIncome: json['totalIncome'] as int?,
      totalVotes: json['totalVotes'] as int?,
      rating: json['rating'],
    );

Map<String, dynamic> _$$HostelModelImplToJson(_$HostelModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'approvalStatus': instance.approvalStatus,
      'rejectedFields': instance.rejectedFields,
      'reason': instance.reason,
      'branch': instance.branch,
      'hostelImage': instance.hostelImage,
      'hostelLicence': instance.hostelLicence,
      'hostelName': instance.hostelName,
      'aboutHostel': instance.aboutHostel,
      'gstIn': instance.gstIn,
      'hostelType': instance.hostelType,
      'images': instance.images,
      'amenityIds': instance.amenityIds,
      'amenities': instance.amenities,
      'amenitiesMore': instance.amenitiesMore,
      'room': instance.room,
      'rooms': instance.rooms,
      'roomsMore': instance.roomsMore,
      'rules': instance.rules,
      'location': instance.location,
      'monthlyIncome': instance.monthlyIncome,
      'totalIncome': instance.totalIncome,
      'totalVotes': instance.totalVotes,
      'rating': instance.rating,
    };

_$FetchAmenitiesResponseModelImpl _$$FetchAmenitiesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchAmenitiesResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AmenitiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchAmenitiesResponseModelImplToJson(
        _$FetchAmenitiesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchHostelRoomsResponseModelImpl
    _$$FetchHostelRoomsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchHostelRoomsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          roomTypes: (json['roomTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$FetchHostelRoomsResponseModelImplToJson(
        _$FetchHostelRoomsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'roomTypes': instance.roomTypes,
    };

_$AmenitiesModelImpl _$$AmenitiesModelImplFromJson(Map<String, dynamic> json) =>
    _$AmenitiesModelImpl(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AmenitiesModelImplToJson(
        _$AmenitiesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
    };

_$RegisterRoomResponseModelImpl _$$RegisterRoomResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRoomResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : RoomModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterRoomResponseModelImplToJson(
        _$RegisterRoomResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$RoomModelImpl _$$RoomModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomModelImpl(
      id: json['_id'] as String?,
      dealerId: json['dealerId'] as String?,
      hostelId: json['hostelId'] as String?,
      image: json['image'] as String?,
      roomNo: json['roomNo'] as String?,
      floor: json['floor'] as int?,
      specialAmenities: (json['specialAmenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      capacityCount: json['capacityCount'] as int?,
      occupiedCount: json['occupiedCount'] as int?,
      roomType: json['roomType'] as String?,
      rent: json['rent'] == null
          ? null
          : RentModel.fromJson(json['rent'] as Map<String, dynamic>),
      checkInDate: json['checkInDate'] == null
          ? null
          : DateTime.parse(json['checkInDate'] as String),
      checkOutDate: json['checkOutDate'] == null
          ? null
          : DateTime.parse(json['checkOutDate'] as String),
      guestCount: json['guestCount'] as int?,
    );

Map<String, dynamic> _$$RoomModelImplToJson(_$RoomModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'dealerId': instance.dealerId,
      'hostelId': instance.hostelId,
      'image': instance.image,
      'roomNo': instance.roomNo,
      'floor': instance.floor,
      'specialAmenities': instance.specialAmenities,
      'capacityCount': instance.capacityCount,
      'occupiedCount': instance.occupiedCount,
      'roomType': instance.roomType,
      'rent': instance.rent,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'guestCount': instance.guestCount,
    };

_$RentModelImpl _$$RentModelImplFromJson(Map<String, dynamic> json) =>
    _$RentModelImpl(
      id: json['_id'] as String?,
      daily: json['daily'] as int?,
      monthly: json['monthly'] as int?,
    );

Map<String, dynamic> _$$RentModelImplToJson(_$RentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'daily': instance.daily,
      'monthly': instance.monthly,
    };
