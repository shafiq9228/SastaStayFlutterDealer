import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@Freezed()
@immutable
sealed class ApiResult<T> with _$ApiResult {
  const factory ApiResult.success(T? data) = _Success<T>;
  const factory ApiResult.error(String error) = Error;
  const factory ApiResult.loading() = Loading;
  const factory ApiResult.loadingCondition(String id,bool status) = LoadingCondition;
  const factory ApiResult.init() = Init;
}