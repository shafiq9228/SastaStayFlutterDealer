// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchWithdrawalDetailsResponseModelImpl
    _$$FetchWithdrawalDetailsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchWithdrawalDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : WithdrawalDetailsModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchWithdrawalDetailsResponseModelImplToJson(
        _$FetchWithdrawalDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$WithdrawalDetailsModelImpl _$$WithdrawalDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawalDetailsModelImpl(
      amount: (json['amount'] as num?)?.toDouble(),
      isDocumentApproved: json['isDocumentApproved'] as bool?,
      payUAuthetication: json['payUAuthetication'] as bool?,
      chargesList: (json['chargesList'] as List<dynamic>?)
          ?.map((e) => ChargesListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WithdrawalDetailsModelImplToJson(
        _$WithdrawalDetailsModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'isDocumentApproved': instance.isDocumentApproved,
      'payUAuthetication': instance.payUAuthetication,
      'chargesList': instance.chargesList,
    };

_$ChargesListModelImpl _$$ChargesListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChargesListModelImpl(
      name: json['name'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      extraData: json['extraData'] as String?,
    );

Map<String, dynamic> _$$ChargesListModelImplToJson(
        _$ChargesListModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'extraData': instance.extraData,
    };

_$AddBalanceResponseModelImpl _$$AddBalanceResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBalanceResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AddBalanceDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddBalanceResponseModelImplToJson(
        _$AddBalanceResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$AccountDetailsModelImpl _$$AccountDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDetailsModelImpl(
      accountNumber: json['accountNumber'] as int?,
      bankName: json['bankName'] as String?,
      ifscCode: json['ifscCode'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AccountDetailsModelImplToJson(
        _$AccountDetailsModelImpl instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'bankName': instance.bankName,
      'ifscCode': instance.ifscCode,
      'name': instance.name,
    };

_$AddBalanceDataModelImpl _$$AddBalanceDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBalanceDataModelImpl(
      transactionId: json['transactionId'] as String?,
    );

Map<String, dynamic> _$$AddBalanceDataModelImplToJson(
        _$AddBalanceDataModelImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
    };

_$PayUAddCustomerResponseModelImpl _$$PayUAddCustomerResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PayUAddCustomerResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PayUAddCustomerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayUAddCustomerResponseModelImplToJson(
        _$PayUAddCustomerResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$PayUAddCustomerDataModelImpl _$$PayUAddCustomerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PayUAddCustomerDataModelImpl(
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$PayUAddCustomerDataModelImplToJson(
        _$PayUAddCustomerDataModelImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
    };

_$FetchAccountsResponseModelImpl _$$FetchAccountsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchAccountsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UpiData.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: json['options'] == null
          ? null
          : OptionsData.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchAccountsResponseModelImplToJson(
        _$FetchAccountsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'options': instance.options,
    };

_$OptionsDataImpl _$$OptionsDataImplFromJson(Map<String, dynamic> json) =>
    _$OptionsDataImpl(
      upiWithdrawals: json['upiWithdrawals'] as bool?,
      bankWithdrawals: json['bankWithdrawals'] as bool?,
    );

Map<String, dynamic> _$$OptionsDataImplToJson(_$OptionsDataImpl instance) =>
    <String, dynamic>{
      'upiWithdrawals': instance.upiWithdrawals,
      'bankWithdrawals': instance.bankWithdrawals,
    };

_$UpiDataImpl _$$UpiDataImplFromJson(Map<String, dynamic> json) =>
    _$UpiDataImpl(
      id: json['id'] as String?,
      accountType: json['accountType'] as String?,
      accountNumber: json['accountNumber'] as String?,
      bankName: json['bankName'] as String?,
      ifscCode: json['ifscCode'] as String?,
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      primaryAccount: json['primaryAccount'] as bool?,
    );

Map<String, dynamic> _$$UpiDataImplToJson(_$UpiDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountType': instance.accountType,
      'accountNumber': instance.accountNumber,
      'bankName': instance.bankName,
      'ifscCode': instance.ifscCode,
      'name': instance.name,
      'fullName': instance.fullName,
      'primaryAccount': instance.primaryAccount,
    };
