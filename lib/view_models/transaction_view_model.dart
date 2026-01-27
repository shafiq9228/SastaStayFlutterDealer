import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../api/api_provides.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../components/helper_bottom_sheet.dart';
import '../pages/profile_page.dart';
import '../request_models/account_request_models.dart';
import '../request_models/auth_request_model.dart';
import '../request_models/bookings_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/transaction_response_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';

class TransactionViewModel extends GetxController {

  final apiProvider = Get.put(ApiProvider());

  final fetchTransactionsObserver =  PaginationModel(data: const ApiResult<FetchTransactionsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final setAsPrimaryAccountObserver = const ApiResult<PrimaryResponseModel>.init().obs;

  final fetchWithdrawalDetailsObserver = const ApiResult<FetchWithdrawalDetailsResponseModel>.init().obs;
  final withdrawBalanceObserver = const ApiResult<AddBalanceResponseModel>.init().obs;
  final payUAddCustomerObserver = const ApiResult<PayUAddCustomerResponseModel>.init().obs;
  final payUVerifyOtpObserver = const ApiResult<PrimaryResponseModel>.init().obs;


  final  createBankAccountObserver = const ApiResult<PrimaryResponseModel>.init().obs;
  final  createAccountObserver = const ApiResult<PrimaryResponseModel>.init().obs;
  final deleteAccountObserver = const ApiResult<PrimaryResponseModel>.init().obs;
  final  fetchAccountsObserver = const ApiResult<FetchAccountsResponseModel>.init().obs;

  Rx<UpiData?>  accountDetails = Rx<UpiData?>(null);

  void performCreateBankAccountAction(CreateBankAccountRequestModel request) async {
    try {
      createBankAccountObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.addBankAccount, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          createBankAccountObserver.value = ApiResult.success(responseData);
          Get.back();
        } else {
          createBankAccountObserver.value =
              ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        createBankAccountObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
      createBankAccountObserver.value = ApiResult.error(e.toString());
    }
  }

  void performCreateAccountAction(CreateAccountRequestModel request) async {
    try {
      createAccountObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.createAccount, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          createAccountObserver.value = ApiResult.success(responseData);
          Get.back();
        } else {
          createAccountObserver.value = ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        createAccountObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
      createAccountObserver.value = ApiResult.error(e.toString());
    }
  }

  void performDeleteAccountAction(String id) async {
    try {
      deleteAccountObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.deleteAccount, {"accountId":id});
      print("response");
      print(response);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchAccountsObserver.value.whenOrNull(
              success: (data){
                final responseData = (data as FetchAccountsResponseModel);
                final list = responseData.data?.toList() ?? List.empty();
                final index = list.indexWhere((element) => element.id == id);
                if(index != -1){
                  list.removeAt(index);
                  fetchAccountsObserver.value = ApiResult.success(responseData.copyWith(data: list));
                }
              });
          deleteAccountObserver.value = ApiResult.success(responseData);
        } else {
          deleteAccountObserver.value = ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '', snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}', snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        deleteAccountObserver.value = ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
      deleteAccountObserver.value = ApiResult.error(e.toString());
    }
  }

  void performFetchAccountsAction() async {
    try {
      fetchAccountsObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.fetchAccounts, {});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = FetchAccountsResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchAccountsObserver.value = ApiResult.success(responseData);
          final primaryAccount = responseData.data?.firstWhereOrNull((item) => item.primaryAccount == true);
          print(primaryAccount);
          if(primaryAccount != null){
            accountDetails.value = primaryAccount;
          }
        } else {
          fetchAccountsObserver.value = ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '',
              snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}',
            snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.primary,colorText: Colors.white);
        fetchAccountsObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
          snackPosition: SnackPosition.BOTTOM,backgroundColor: CustomColors.red,colorText: Colors.white);
      fetchAccountsObserver.value = ApiResult.error(e.toString());
    }
  }

  void performPayUAddCustomer() async {
    try {
      payUAddCustomerObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.payUAddCustomer,{});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PayUAddCustomerResponseModel.fromJson(body);
        if (responseData.status == 1) {
          payUAddCustomerObserver.value = ApiResult.success(responseData);
        }
        else if(responseData.status == 2){
          payUAddCustomerObserver.value = const ApiResult.init();
          fetchWithdrawalDetailsObserver.value.whenOrNull(success: (fetchWithDraw) {
            final fetchWithDrawDataModel = (fetchWithDraw  as FetchWithdrawalDetailsResponseModel).data;
            final modifiedDataModel =  fetchWithDrawDataModel?.copyWith(payUAuthetication: true);
            final modifiedData = FetchWithdrawalDetailsResponseModel(data: modifiedDataModel);
            fetchWithdrawalDetailsObserver.value = ApiResult.success(modifiedData);
          });
        }
        else {
          payUAddCustomerObserver.value = ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '', snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
        payUAddCustomerObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red,colorText: Colors.white,);
      payUAddCustomerObserver.value = ApiResult.error(e.toString());
    }
  }

  void performPayUVerifyOtp(String otp,String state) async {
    try {
      payUVerifyOtpObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.payUVerifyOtp,{"otp":otp,"state":state});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          payUVerifyOtpObserver.value = ApiResult.success(responseData);
          fetchWithdrawalDetailsObserver.value.whenOrNull(success: (fetchWithDraw) {
            final fetchWithDrawDataModel = (fetchWithDraw  as FetchWithdrawalDetailsResponseModel).data;
            final modifiedDataModel =  fetchWithDrawDataModel?.copyWith(payUAuthetication: true);
            final modifiedData = FetchWithdrawalDetailsResponseModel(data: modifiedDataModel);
            fetchWithdrawalDetailsObserver.value = ApiResult.success(modifiedData);
          });
        } else {
          payUVerifyOtpObserver.value = ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '', snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
        payUVerifyOtpObserver.value =
            ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red,colorText: Colors.white,);
      payUVerifyOtpObserver.value = ApiResult.error(e.toString());
    }
  }



  Future<void> fetchTransactions(PaginationRequestModel request,bool refresh) async {
    final observer = fetchTransactionsObserver;
    try{
      if(refresh == true){
        observer.value = PaginationModel(data: const ApiResult<FetchTransactionsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
      }

      if (observer.value.isPaginationCompleted || observer.value.isLoading == true) return;

      if(observer.value.page == 1){
        observer.value.data.value = const ApiResult.loading();
      }
      else{
        observer.value.isLoading = true;
        observer.refresh();
      }

      const maxListApiReturns = 20;
      observer.refresh();

      final String? validatorResponse = AuthUtils.validateRequestFields(['page'], request.toJson());
      if(validatorResponse != null) throw validatorResponse;

      final response = await apiProvider.post(EndPoints.fetchTransactions,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchTransactionsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchTransactionsResponseModel?)?.data?.toList();
            oldList?.addAll(responseData.data ?? List.empty());
            observer.value.data.value = ApiResult.success(responseData.copyWith(data: oldList));
          }, orElse: () {
            observer.value.data.value = ApiResult.success(responseData);
          });

          observer.value.page = observer.value.page + 1;
          if ((responseData.data?.length ?? 0) < maxListApiReturns) {
            observer.value.isPaginationCompleted = true;
          }
          observer.value.isLoading = false;
          observer.refresh();
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      observer.value.data.value = ApiResult.error(e.toString());
      observer.value.isLoading = false;
      observer.refresh();
    }
  }


  Future<void> performSetAsPrimaryAccount(String accountId) async {
    try {
      setAsPrimaryAccountObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.setAsPrimaryAccount, {"accountId":accountId});
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = PrimaryResponseModel.fromJson(body);
        if (responseData.status == 1) {
          setAsPrimaryAccountObserver.value = ApiResult.success(responseData);
          performFetchAccountsAction();
          Get.snackbar('Success',"Account Saved As Primary",snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
          return;
        }
        throw "Invalid Status";
      }
      throw "something went wrong. ${response.statusCode ?? 0}";
    } catch (e) {
      Get.snackbar('Exception',e.toString(),snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red,colorText: Colors.white,);
      setAsPrimaryAccountObserver.value = ApiResult.error(e.toString());
    }
  }


  void performWithDrawBalanceAction(WithdrawBalanceRequestModel request,BuildContext context) async {
    try {
      withdrawBalanceObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.withdrawAmount, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = AddBalanceResponseModel.fromJson(body);
        if (responseData.status == 1) {
          withdrawBalanceObserver.value = ApiResult.success(responseData);
          showModalBottomSheet(
            context: context,
            isDismissible: false,
            enableDrag: false,
            isScrollControlled: true, // allows full height scroll
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) {
              return HelperBottomSheet(assetImage: "assets/images/success.png",title:"Withdraw Request Successfully",
                  message: "Your Withdrawal Request Send To Admin,Money Directly Added To Your Account After Admin Acceptance"
                  ,btn1Txt: "Done", btn1Click: () {
                    Get.close(2);
                  });
            },
          );
        } else {
          withdrawBalanceObserver.value = ApiResult.error(responseData.message ?? "");
          Get.snackbar(responseData.message ?? '', responseData.message ?? '', snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
        }
      } else {
        Get.snackbar('${response.statusCode ?? 0}','something went wrong+${response.statusText ?? 0}', snackPosition: SnackPosition.BOTTOM, backgroundColor: CustomColors.primary,colorText: Colors.white,);
        withdrawBalanceObserver.value = ApiResult.error("something went wrong. ${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.snackbar('Exception',e.toString(),snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red,colorText: Colors.white,);
      withdrawBalanceObserver.value = ApiResult.error(e.toString());
    }
  }


}