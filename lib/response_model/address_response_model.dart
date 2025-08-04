import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_response_model.freezed.dart';
part 'address_response_model.g.dart';


@Freezed()
class GoogleAddressResponse with _$GoogleAddressResponse {
      const factory GoogleAddressResponse({
            String? status,
            List<GoogleAddressResult>? results
      }) = _GoogleAddressResponse;

      factory GoogleAddressResponse.fromJson(Map<String, dynamic> json) => _$GoogleAddressResponseFromJson(json);
}

@Freezed()
class GoogleAddressResult with _$GoogleAddressResult {
      const factory GoogleAddressResult({
            @JsonKey(name: 'address_components') List<AddressComponent>? addressComponent,
      }) = _GoogleAddressResult;

      factory GoogleAddressResult.fromJson(Map<String, dynamic> json) => _$GoogleAddressResultFromJson(json);
}


@Freezed()
class AddressComponent with _$AddressComponent {
      const factory AddressComponent({
            @JsonKey(name: 'long_name') String? longName,
            @JsonKey(name: 'short_name') String? shortName,
            List<String>? types
      }) = _AddressComponent;

      factory AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);
}

@Freezed()
class AddAddressesResponseModel with _$AddAddressesResponseModel {
      const factory AddAddressesResponseModel({
            int? status,
            String? message,
            AddressDetailResponse? data
      }) = _AddAddressesResponseModel;

      factory AddAddressesResponseModel.fromJson(Map<String, dynamic> json) => _$AddAddressesResponseModelFromJson(json);
}

@Freezed()
class FetchAddressesResponseModel with _$FetchAddressesResponseModel {
      const factory FetchAddressesResponseModel({
            int? status,
            String? message,
            FetchAddressesDataModel? data
      }) = _FetchAddressesResponseModel;

      factory FetchAddressesResponseModel.fromJson(Map<String, dynamic> json) => _$FetchAddressesResponseModelFromJson(json);
}

@Freezed()
class FetchAddressesDataModel with _$FetchAddressesDataModel {
      const factory FetchAddressesDataModel({
            AddressDetailResponse? defaultLocation,
            List<AddressDetailResponse>? locations,
      }) = _FetchAddressesDataModel;

      factory FetchAddressesDataModel.fromJson(Map<String, dynamic> json) => _$FetchAddressesDataModelFromJson(json);
}


@Freezed()
class AddressDetailResponse with _$AddressDetailResponse {
  const factory AddressDetailResponse({
        @JsonKey(name: "_id") String? id,
        String? addressType,
        String? titleName,
        String? address1,
        String? address2,
        String? city,
        String? state,
        int? pinCode,
        String? landMark,
        double? latitude,
        double? longitude
        }) = _AddressDetailResponse;

  factory AddressDetailResponse.fromJson(Map<String, dynamic> json) => _$AddressDetailResponseFromJson(json);
}