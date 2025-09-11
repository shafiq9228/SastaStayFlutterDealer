import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sasta_stay_dealer/response_model/bookings_response_model.dart';

import '../response_model/address_response_model.dart';
import '../response_model/hostel_response_model.dart';

part 'bookings_request_model.freezed.dart';
part 'bookings_request_model.g.dart';


@Freezed()
class BookingRequestModel with _$BookingRequestModel{
  const factory BookingRequestModel({
    required RoomModel? roomModel,
    required String? hostelId,
    required String? roomId,
    required DateTime? checkInDate,
    required DateTime? checkOutDate,
    required int? guestCount,
    required List<GuestDetailsModel>? guestDetailsList,
    required String? couponId
  }) = _BookingRequestModel;

  factory BookingRequestModel.fromJson(Map<String, dynamic> json) => _$BookingRequestModelFromJson(json);
}

@Freezed()
class AddBalanceRequestModel with _$AddBalanceRequestModel{
  const factory AddBalanceRequestModel({
    required double amount,
  }) = _AddBalanceRequestModel;
  factory AddBalanceRequestModel.fromJson(Map<String,dynamic> json) => _$AddBalanceRequestModelFromJson(json);
}

