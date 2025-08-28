import 'package:freezed_annotation/freezed_annotation.dart';

import '../response_model/hostel_response_model.dart';

part 'hostel_request_model.freezed.dart';
part 'hostel_request_model.g.dart';


@Freezed()
class ListRoomRequestModel with _$ListRoomRequestModel{
  const factory ListRoomRequestModel({
    required String? roomId,
    required String? hostelId,
    required String? image,
    required String? roomNo,
    required int? floor,
    required List<String>? specialAmenities,
    required int? capacityCount,
    required String? roomType,
    required RentModel? rent,
  }) = _ListRoomRequestModel;

  factory ListRoomRequestModel.fromJson(Map<String, dynamic> json) => _$ListRoomRequestModelFromJson(json);
}

