// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_request_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialDepositRequestModelImpl _$$InitialDepositRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InitialDepositRequestModelImpl(
      amount: json['amount'] as String,
      transactionId: json['transactionId'] as String,
    );

Map<String, dynamic> _$$InitialDepositRequestModelImplToJson(
        _$InitialDepositRequestModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'transactionId': instance.transactionId,
    };

_$UpiRequestModelImpl _$$UpiRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpiRequestModelImpl(
      amount: json['amount'] as String,
      upiId: json['upiId'] as String,
    );

Map<String, dynamic> _$$UpiRequestModelImplToJson(
        _$UpiRequestModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'upiId': instance.upiId,
    };

_$CreateBankAccountRequestModelImpl
    _$$CreateBankAccountRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$CreateBankAccountRequestModelImpl(
          fullName: json['fullName'] as String,
          bankName: json['bankName'] as String,
          ifscCode: json['ifscCode'] as String,
          accountNumber: json['accountNumber'] as String,
        );

Map<String, dynamic> _$$CreateBankAccountRequestModelImplToJson(
        _$CreateBankAccountRequestModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'bankName': instance.bankName,
      'ifscCode': instance.ifscCode,
      'accountNumber': instance.accountNumber,
    };

_$CreateAccountRequestModelImpl _$$CreateAccountRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAccountRequestModelImpl(
      upiId: json['upiId'] as String,
      accountType: json['accountType'] as String,
    );

Map<String, dynamic> _$$CreateAccountRequestModelImplToJson(
        _$CreateAccountRequestModelImpl instance) =>
    <String, dynamic>{
      'upiId': instance.upiId,
      'accountType': instance.accountType,
    };
