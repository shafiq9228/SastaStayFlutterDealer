import 'package:freezed_annotation/freezed_annotation.dart';

import '../request_models/auth_request_model.dart';

part 'hostel_response_model.freezed.dart';
part 'hostel_response_model.g.dart';

@Freezed()
class HostelModel with _$HostelModel{
  const factory HostelModel({
    @JsonKey(name: '_id') String? id,
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
    dynamic rating
  }) = _HostelModel;

  factory HostelModel.fromJson(Map<String, dynamic> json) => _$HostelModelFromJson(json);
}
