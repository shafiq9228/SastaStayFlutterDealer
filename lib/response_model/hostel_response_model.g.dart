// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HostelModelImpl _$$HostelModelImplFromJson(Map<String, dynamic> json) =>
    _$HostelModelImpl(
      id: json['_id'] as String?,
      approvalStatus: json['approvalStatus'] as String?,
      rejectedFields: (json['rejectedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reason: json['reason'] as String?,
      hostelImage: json['hostelImage'] as String?,
      hostelLicence: json['hostelLicence'] as String?,
      hostelName: json['hostelName'] as String?,
      aboutHostel: json['aboutHostel'] as String?,
      gstIn: json['gstIn'] as String?,
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
      'hostelImage': instance.hostelImage,
      'hostelLicence': instance.hostelLicence,
      'hostelName': instance.hostelName,
      'aboutHostel': instance.aboutHostel,
      'gstIn': instance.gstIn,
      'location': instance.location,
      'monthlyIncome': instance.monthlyIncome,
      'totalIncome': instance.totalIncome,
      'totalVotes': instance.totalVotes,
      'rating': instance.rating,
    };
