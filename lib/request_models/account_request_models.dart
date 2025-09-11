import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_request_models.freezed.dart';
part 'account_request_models.g.dart';

@Freezed()
class InitialDepositRequestModel with _$InitialDepositRequestModel{

  const factory InitialDepositRequestModel({
    required String amount,
    required String transactionId
  }) = _InitialDepositRequestModel;

  factory InitialDepositRequestModel.fromJson(Map<String,dynamic> json) => _$InitialDepositRequestModelFromJson(json);
}

@Freezed()
class UpiRequestModel with _$UpiRequestModel{

  const factory UpiRequestModel({
    required String amount,
    required String upiId
  }) = _UpiRequestModel;

  factory UpiRequestModel.fromJson(Map<String,dynamic> json) => _$UpiRequestModelFromJson(json);
}

@Freezed()
class CreateBankAccountRequestModel with _$CreateBankAccountRequestModel{

  const factory CreateBankAccountRequestModel({
    required String fullName,
    required String bankName,
    required String ifscCode,
    required String accountNumber
  }) = _CreateBankAccountRequestModel;

  factory CreateBankAccountRequestModel.fromJson(Map<String,dynamic> json) => _$CreateBankAccountRequestModelFromJson(json);
}


@Freezed()
class CreateAccountRequestModel with _$CreateAccountRequestModel{

  const factory CreateAccountRequestModel({
    required String upiId,
    required String accountType
  }) = _CreateAccountRequestModel;

  factory CreateAccountRequestModel.fromJson(Map<String,dynamic> json) => _$CreateAccountRequestModelFromJson(json);
}