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

_$CategoryRatingImpl _$$CategoryRatingImplFromJson(Map<String, dynamic> json) =>
    _$CategoryRatingImpl(
      rating: json['rating'],
      ratedFor: json['ratedFor'] as String?,
    );

Map<String, dynamic> _$$CategoryRatingImplToJson(
        _$CategoryRatingImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'ratedFor': instance.ratedFor,
    };

_$FetchHostelStatisticsResponseModelImpl
    _$$FetchHostelStatisticsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchHostelStatisticsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => StatsDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchHostelStatisticsResponseModelImplToJson(
        _$FetchHostelStatisticsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$HostelModelImpl _$$HostelModelImplFromJson(Map<String, dynamic> json) =>
    _$HostelModelImpl(
      id: json['_id'] as String?,
      manager: json['manager'] == null
          ? null
          : DealerModel.fromJson(json['manager'] as Map<String, dynamic>),
      approvalStatus: json['approvalStatus'] as String?,
      rejectedFields: (json['rejectedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reason: json['reason'] as String?,
      branch: json['branch'] as int?,
      hostelImage: json['hostelImage'] as String?,
      hostelLicence: json['hostelLicence'] as String?,
      hostelGstDocument: json['hostelGstDocument'] as String?,
      hostelName: json['hostelName'] as String?,
      aboutHostel: json['aboutHostel'] as String?,
      gstIn: json['gstIn'] as String?,
      hostelType: json['hostelType'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      faq: (json['faq'] as List<dynamic>?)
          ?.map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      commission: json['commission'] as int?,
      rating: json['rating'],
      categoryRatings: (json['categoryRatings'] as List<dynamic>?)
          ?.map((e) => CategoryRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      imagesType: (json['imagesType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      checkInTime: json['checkInTime'] as String?,
      checkOutTime: json['checkOutTime'] as String?,
    );

Map<String, dynamic> _$$HostelModelImplToJson(_$HostelModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'manager': instance.manager,
      'approvalStatus': instance.approvalStatus,
      'rejectedFields': instance.rejectedFields,
      'reason': instance.reason,
      'branch': instance.branch,
      'hostelImage': instance.hostelImage,
      'hostelLicence': instance.hostelLicence,
      'hostelGstDocument': instance.hostelGstDocument,
      'hostelName': instance.hostelName,
      'aboutHostel': instance.aboutHostel,
      'gstIn': instance.gstIn,
      'hostelType': instance.hostelType,
      'images': instance.images,
      'faq': instance.faq,
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
      'commission': instance.commission,
      'rating': instance.rating,
      'categoryRatings': instance.categoryRatings,
      'imagesType': instance.imagesType,
      'checkInTime': instance.checkInTime,
      'checkOutTime': instance.checkOutTime,
    };

_$HostelRoomAvailabilityDatesResponseModelImpl
    _$$HostelRoomAvailabilityDatesResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$HostelRoomAvailabilityDatesResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  AvailabilityDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HostelRoomAvailabilityDatesResponseModelImplToJson(
        _$HostelRoomAvailabilityDatesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AvailabilityDataModelImpl _$$AvailabilityDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityDataModelImpl(
      date: json['date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$AvailabilityDataModelImplToJson(
        _$AvailabilityDataModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'status': instance.status,
    };

_$ImageDataModelImpl _$$ImageDataModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataModelImpl(
      imagesType: json['imagesType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ImageDataModelImplToJson(
        _$ImageDataModelImpl instance) =>
    <String, dynamic>{
      'imagesType': instance.imagesType,
      'images': instance.images,
    };

_$FetchLeadsResponseModelImpl _$$FetchLeadsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchLeadsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LeadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchLeadsResponseModelImplToJson(
        _$FetchLeadsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$LeadModelImpl _$$LeadModelImplFromJson(Map<String, dynamic> json) =>
    _$LeadModelImpl(
      userId: json['userId'],
      dealerId: json['dealerId'],
      hostelId: json['hostelId'],
      roomId: json['roomId'],
    );

Map<String, dynamic> _$$LeadModelImplToJson(_$LeadModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dealerId': instance.dealerId,
      'hostelId': instance.hostelId,
      'roomId': instance.roomId,
    };

_$StatsDataModelImpl _$$StatsDataModelImplFromJson(Map<String, dynamic> json) =>
    _$StatsDataModelImpl(
      title: json['title'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$$StatsDataModelImplToJson(
        _$StatsDataModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'value': instance.value,
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
