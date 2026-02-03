import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sasta_stay_dealer/response_model/bookings_response_model.dart';

import '../request_models/auth_request_model.dart';

part 'transaction_response_model.freezed.dart';
part 'transaction_response_model.g.dart';

@Freezed()
class FetchWithdrawalDetailsResponseModel with _$FetchWithdrawalDetailsResponseModel {
  const factory FetchWithdrawalDetailsResponseModel({
    int? status,
    String? message,
    WithdrawalDetailsModel? data,
  }) = _FetchWithdrawalDetailsResponseModel;

  factory FetchWithdrawalDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FetchWithdrawalDetailsResponseModelFromJson(json);
}

@Freezed()
class WithdrawalDetailsModel with _$WithdrawalDetailsModel {
  const factory WithdrawalDetailsModel({
    dynamic amount,
    bool? isDocumentApproved,
    bool? payUAuthetication,
    List<ChargesListModel>? chargesList,
  }) = _WithdrawalDetailsModel;

  factory WithdrawalDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalDetailsModelFromJson(json);
}


@Freezed()
class ChargesListModel with _$ChargesListModel{
  const factory ChargesListModel({
    String? name,
    dynamic amount,
    String? extraData,
  }) = _ChargesListModel;

  factory ChargesListModel.fromJson(Map<String, dynamic> json) =>
      _$ChargesListModelFromJson(json);
}

@Freezed()
class AddBalanceResponseModel with _$AddBalanceResponseModel {
  const factory AddBalanceResponseModel({
    int? status,
    String? message,
    AddBalanceDataModel? data,
  }) = _AddBalanceResponseModel;

  factory AddBalanceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddBalanceResponseModelFromJson(json);
}

@Freezed()
class AccountDetailsModel with _$AccountDetailsModel {
  const factory AccountDetailsModel({
    int? accountNumber,
    String? bankName,
    String? ifscCode,
    String? name
  }) = _AccountDetailsModel;

  factory AccountDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsModelFromJson(json);
}




@Freezed()
class AddBalanceDataModel with _$AddBalanceDataModel {
  const factory AddBalanceDataModel({String? transactionId}) = _AddBalanceDataModel;

  factory AddBalanceDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddBalanceDataModelFromJson(json);
}


@Freezed()
class PayUAddCustomerResponseModel with _$PayUAddCustomerResponseModel {
  const factory PayUAddCustomerResponseModel({
    int? status,
    String? message,
    PayUAddCustomerDataModel? data,
  }) = _PayUAddCustomerResponseModel;

  factory PayUAddCustomerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PayUAddCustomerResponseModelFromJson(json);
}

@Freezed()
class PayUAddCustomerDataModel with _$PayUAddCustomerDataModel {
  const factory PayUAddCustomerDataModel({
    String? state,
  }) = _PayUAddCustomerDataModel;

  factory PayUAddCustomerDataModel.fromJson(Map<String, dynamic> json) =>
      _$PayUAddCustomerDataModelFromJson(json);
}

@Freezed()
class FetchAccountsResponseModel with _$FetchAccountsResponseModel{

  const factory FetchAccountsResponseModel({
    int? status,
    String? message,
    List<UpiData>? data,
    OptionsData? options
  }) = _FetchAccountsResponseModel;

  factory FetchAccountsResponseModel.fromJson(Map<String,dynamic> json)=> _$FetchAccountsResponseModelFromJson(json);
}

@Freezed()
class OptionsData with _$OptionsData{

  const factory OptionsData({
    bool? upiWithdrawals,
    bool? bankWithdrawals
  }) = _OptionsData;

  factory OptionsData.fromJson(Map<String,dynamic> json)=> _$OptionsDataFromJson(json);
}


@Freezed()
class UpiData with _$UpiData{

  const factory UpiData({
    String? id,
    String? accountType,
    String? accountNumber,
    String? bankName,
    String? ifscCode,
    String? name,
    String? fullName,
    bool? primaryAccount
  }) = _UpiData;

  factory UpiData.fromJson(Map<String,dynamic> json)=> _$UpiDataFromJson(json);
}