import 'package:get/get.dart';
import 'package:sasta_stay_dealer/pages/booking_details_page.dart';
import 'package:sasta_stay_dealer/pages/checkout_page.dart';
import '../api/api_provides.dart';
import '../api/api_result.dart';
import '../api/end_points.dart';
import '../request_models/auth_request_model.dart';
import '../request_models/bookings_request_model.dart';
import '../response_model/auth_response_model.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../utils/preference_manager.dart';

class BookingViewModel extends GetxController{

  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());
  Rx<BookingRequestModel?> bookingRequestModelObserver = Rx<BookingRequestModel?>(null);


  final checkHostelRoomAvailabilityObserver = const ApiResult<HostelRoomAvailabilityResponseModel>.init().obs;
  final confirmBookingObserver = const ApiResult<ConfirmBookingResponseModel>.init().obs;

  final fetchSearchedBookingsObserver =  PaginationModel(data: const ApiResult<FetchBookingsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchAllBookingsObserver =  PaginationModel(data: const ApiResult<FetchBookingsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchOngoingBookingsObserver =  PaginationModel(data: const ApiResult<FetchBookingsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchUpComingBookingsObserver =  PaginationModel(data: const ApiResult<FetchBookingsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;
  final fetchPastBookingsObserver =  PaginationModel(data: const ApiResult<FetchBookingsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "").obs;

  final fetchBookingDetailsObserver = const ApiResult<FetchBookingDetailsResponseModel>.init().obs;

  RxList<GuestDetailsModel> guestDetailsList = <GuestDetailsModel>[].obs;
  RxString aadharImage = "".obs;


  Future<void> checkHostelRoomAvailability(BookingRequestModel request,RoomModel? roomModel) async {
    try{
      checkHostelRoomAvailabilityObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.checkHostelRoomAvailability,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        var responseData = HostelRoomAvailabilityResponseModel.fromJson(body);
        if(responseData.status == 1){
          final updatedRequest = request.copyWith(roomModel: request.roomModel?.copyWith(checkInDate: request.checkInDate,checkOutDate: request.checkOutDate,guestCount: request.guestCount));
          bookingRequestModelObserver.value = updatedRequest;
          checkHostelRoomAvailabilityObserver.value = ApiResult.success(responseData);
          Get.to(() => CheckoutPage(roomModel: roomModel));
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      checkHostelRoomAvailabilityObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> performConfirmBooking(BookingRequestModel? request) async {
    try{
      if(request == null) throw "Invalid Booking Request";
      confirmBookingObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.confirmBooking,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = ConfirmBookingResponseModel.fromJson(body);
        if(responseData.status == 1){
          confirmBookingObserver.value = ApiResult.success(responseData);
          Get.to(() => BookingDetailsPage(orderId: responseData.data?.bookingResponse?.orderId ?? "",fromBooking: true));
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      Get.snackbar("Error",e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      confirmBookingObserver.value = ApiResult.error(e.toString());
    }
  }


  Future<void> fetchBookings(PaginationRequestModel request,bool refresh) async {
    final observer = (request.searchQuery?? "").trim().isNotEmpty ? fetchSearchedBookingsObserver  : request.query == "Ongoing" ? fetchOngoingBookingsObserver : request.query == "Upcoming" ? fetchUpComingBookingsObserver : request.query == "Past" ? fetchPastBookingsObserver : fetchAllBookingsObserver;
    try{
      if(refresh == true){
        observer.value = PaginationModel(data: const ApiResult<FetchBookingsResponseModel>.init().obs, isLoading: false, isPaginationCompleted: false, page: 1, error: "");
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

      final response = await apiProvider.post(EndPoints.fetchBookings,request.toJson());
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchBookingsResponseModel.fromJson(body);
        if(responseData.status == 1){
          observer.value.data.value.maybeWhen(success: (data) {
            final oldList = (data as FetchBookingsResponseModel?)?.data?.toList();
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

  Future<void> fetchBookingDetails(String orderId) async{
    try{
      fetchBookingDetailsObserver.value = const ApiResult.loading();
      final response = await apiProvider.post(EndPoints.fetchBookingDetails,{"orderId":orderId});
      final body = response.body;
      if(response.isOk && body !=null){
        final responseData = FetchBookingDetailsResponseModel.fromJson(body);
        if(responseData.status == 1){
          fetchBookingDetailsObserver.value = ApiResult.success(responseData);
          return;
        }
        throw "${responseData.message}";
      }
      throw "Response Body Null";
    }
    catch(e){
      print(e.toString());
      Get.snackbar("Error", e.toString(),backgroundColor: CustomColors.primary,colorText: CustomColors.white,snackPosition: SnackPosition.BOTTOM);
      fetchBookingDetailsObserver.value = ApiResult.error(e.toString());
    }
  }


}
