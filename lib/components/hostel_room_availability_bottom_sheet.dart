import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:sasta_stay_dealer/components/title_message_component.dart';

import '../api/api_result.dart';
import '../request_models/bookings_request_model.dart';
import '../response_model/bookings_response_model.dart';
import '../response_model/hostel_response_model.dart';
import '../utils/app_styles.dart';
import '../utils/auth_utils.dart';
import '../utils/custom_colors.dart';
import '../view_models/booking_view_model.dart';
import 'colored_availability_calendar.dart';
import 'custom_network_image.dart';
import 'custom_outlined_button.dart';

class HostelRoomAvailabilityBottomSheet extends StatefulWidget {
  final RoomModel? roomModel;
  const HostelRoomAvailabilityBottomSheet({super.key, required this.roomModel});

  @override
  State<HostelRoomAvailabilityBottomSheet> createState() =>
      _HostelRoomAvailabilityBottomSheetState();
}

class _HostelRoomAvailabilityBottomSheetState extends State<HostelRoomAvailabilityBottomSheet> {
  final bookingViewModel = Get.put(BookingViewModel());
  int _guestCount = 1;
  final List<DateTime> _selectedDates = [];

  Future<void> _selectDate(BuildContext context) async {
    await bookingViewModel.checkAvailabilityDates(widget.roomModel?.hostelId ?? "",widget.roomModel?.id ?? "",_guestCount);

    bookingViewModel.checkAvailabilityDatesObserver.value.whenOrNull(success: (data){
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) => ColoredAvailabilityCalendar(
            bookingViewModel: bookingViewModel,
            onRangeSelected: (DateTime start, DateTime end) {
              setState(() {
                _selectedDates.clear();
                DateTime current = start;
                if(start ==  end){
                  _selectedDates.add(current);
                }
                else{
                  while (current.isBefore(end) || current.isAtSameMomentAs(end)) {
                    _selectedDates.add(current);
                    current = current.add(const Duration(days: 1));
                  }
                }
              });
            }
        ),
      );
    });
  }


  // Future<void> _selectDate(BuildContext context) async {
  //   bookingViewModel.checkHostelRoomAvailabilityObserver.value = const ApiResult.init();
  //   final DateTimeRange? picked = await showDateRangePicker(
  //     context: context,
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime(DateTime.now().year + 1),
  //     initialDateRange: _selectedDates.length >= 2
  //         ? DateTimeRange(start: _selectedDates.first, end: _selectedDates.last)
  //         : null,
  //   );
  //
  //   if (picked != null) {
  //     setState(() {
  //       _selectedDates.clear();
  //       DateTime current = picked.start;
  //       while (current.isBefore(picked.end) || current.isAtSameMomentAs(picked.end)) {
  //         _selectedDates.add(current);
  //         current = current.add(const Duration(days: 1));
  //       }
  //     });
  //   }
  // }

  void _incrementGuests() {
    setState(() {
      _guestCount++;
    });
  }

  void _decrementGuests() {
    if (_guestCount > 1) {
      setState(() {
        _guestCount--;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.roomModel?.checkInDate != null && widget.roomModel?.checkOutDate != null) {
      _guestCount = widget.roomModel?.guestCount ?? 0;
      _selectedDates.clear();
      DateTime current = widget.roomModel!.checkInDate!;
      DateTime end = widget.roomModel!.checkOutDate!;
      while (current.isBefore(end) || current.isAtSameMomentAs(end)) {
        _selectedDates.add(current);
        current = current.add(const Duration(days: 1));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.white,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom, // handle keyboard
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // makes sheet wrap content
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 50,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Text(
                'Check Availability',
                style: TextStyle(
                  fontSize: 18,
                  color: CustomColors.textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomNetworkImage(
                    imageUrl: widget.roomModel?.image ?? '',
                    borderRadius: 10,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 50,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.roomModel?.roomType ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: CustomColors.primary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.roomModel?.roomNo ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: CustomColors.textColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: double.infinity,
                  color: CustomColors.lightGray,
                  height: 5,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset("assets/images/profile.png",width: 20,height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Guests', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: CustomColors.textColor)),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: _decrementGuests,
                          child: Container(width: 30,height: 30,decoration: AppStyles.primaryCircleBg,child:Center(child: Icon(Icons.remove, color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('$_guestCount', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: CustomColors.textColor)),
                        ),
                        _guestCount < (widget.roomModel?.capacityCount ?? 0)
                            ? InkWell(
                          onTap: _incrementGuests,
                          child: Container(width: 30,height: 30,decoration: AppStyles.primaryCircleBg,child:Center(child: Icon(Icons.add, color: Colors.white))),
                        )
                            : const SizedBox(width: 30)
                      ],
                    ),
                  ),
                  Obx(() =>
                      bookingViewModel.checkHostelRoomAvailabilityObserver.value.maybeWhen(
                          success: (res) {
                            final response  = (res as HostelRoomAvailabilityResponseModel);
                            return response.status == 3 ? Text(response.message ?? "",style: TextStyle(fontWeight: FontWeight.w500,color: CustomColors.red,fontSize: 12),) : SizedBox();
                          },
                          orElse: () => SizedBox()))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: double.infinity,
                  color: CustomColors.lightGray,
                  height: 5,
                ),
              ),
              if (_selectedDates.isNotEmpty) ...[
                Text(
                  'Selected Dates (${_selectedDates.length}):',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: CustomColors.textColor),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _selectedDates.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Chip(
                          label: Text(DateFormat('MMM dd').format(_selectedDates[index])),
                        ),
                      );
                    },
                  ),
                ),
              ],
              const SizedBox(height: 8),
              Text(
                'Select Dates:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColors.textColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              _selectedDates.isEmpty == true ? CustomOutlinedButton(
                buttonTxt: "Choose Dates",
                buttonClick: () => _selectDate(context),
              ) : Column(
                children: [
                  Row(
                    children: [
                      TitleMessageComponent(asset: 'assets/images/booking.png', title: 'Check In', message: "${AuthUtils.formatDateToLong(_selectedDates.first)}",),
                      Expanded(child: Text("${_selectedDates.length} Nights",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: CustomColors.textColor),)),
                      TitleMessageComponent(asset: 'assets/images/booking.png', title: 'Check Out', message: "${AuthUtils.formatDateToLong(_selectedDates.last)}",),
                    ],
                  ),
                  CustomOutlinedButton(
                    buttonTxt: "Edit",
                    buttonClick: () => _selectDate(context),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Visibility(
                visible: _selectedDates.isNotEmpty == true,
                child: Obx(() => bookingViewModel.checkHostelRoomAvailabilityObserver.value.maybeWhen(
                  loading: () => const Center(
                      child: SizedBox(width: 30, height: 30, child: CircularProgressIndicator())),
                  success: (data) {
                    final availabilityResponse = (data as HostelRoomAvailabilityResponseModel);
                    final onGoingBookings = availabilityResponse.data?.onGoingBookings ?? [];
                    return onGoingBookings.isNotEmpty ?  (availabilityResponse.status == 2 ?  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Warning header with icon
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.orange, width: 1),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.warning_amber_rounded, color: Colors.orange[700], size: 20),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Selected Dates Are Unavailable",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.orange[800],
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Please select another room, this room is fully occupied",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.orange[700],
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Booked Slots",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Try Alternate Of This Booking Dates",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 12),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: onGoingBookings.length,
                          itemBuilder: (context, index) {
                            final onGoingBookingDetails = onGoingBookings[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person_outline, size: 16, color:  CustomColors.primary),
                                        SizedBox(width: 4),
                                        Text(
                                          "Guests: ${onGoingBookingDetails.guestCount ?? 0}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: CustomColors.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined, size: 16, color: CustomColors.primary),
                                        SizedBox(width: 4),
                                        Text(
                                          "Check-In: ${AuthUtils.formatDateToLong(onGoingBookingDetails.checkInDate)}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: CustomColors
                                            .primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined, size: 16, color: CustomColors.primary),
                                        SizedBox(width: 4),
                                        Text(
                                          "Check-Out: ${AuthUtils.formatDateToLong(onGoingBookingDetails.checkOutDate)}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: CustomColors.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 16),
                        PrimaryButton(buttonTxt: "Check Alternate Dates Availability", buttonClick: (){
                          bookingViewModel.checkHostelRoomAvailabilityObserver.value = const ApiResult.init();
                          setState(() {
                            _selectedDates.clear();
                          });
                          _selectDate(context);
                        }),
                      ],
                    ) :
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Warning header with icon
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.orange[50],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.orange, width: 1),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.warning_amber_rounded, color: Colors.orange[700], size: 20),
                              SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Selected Dates Are Unavailable For ${_guestCount} Guests ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.orange[800],
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      availabilityResponse.message ?? "",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.orange[700],
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),

                        // Booked slots section
                        Text(
                          "Booked Slots",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Try Alternate Of This Booking Dates Or Reduce Guest Count And Try Again",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 12),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: onGoingBookings.length,
                          itemBuilder: (context, index) {
                            final onGoingBookingDetails = onGoingBookings[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person_outline, size: 16, color:  CustomColors.primary),
                                        SizedBox(width: 4),
                                        Text(
                                          "Guests: ${onGoingBookingDetails.guestCount ?? 0}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: CustomColors.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined, size: 16, color: CustomColors.primary),
                                        SizedBox(width: 4),
                                        Text(
                                          "Check-In: ${AuthUtils.formatDateToLong(onGoingBookingDetails.checkInDate)}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: CustomColors
                                                .primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_month_outlined, size: 16, color: CustomColors.primary),
                                        SizedBox(width: 4),
                                        Text(
                                          "Check-Out: ${AuthUtils.formatDateToLong(onGoingBookingDetails.checkOutDate)}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: CustomColors.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 16),
                        PrimaryButton(buttonTxt: "Try Again", buttonClick: (){
                          if (_selectedDates.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please Select Dates')),
                            );
                            return;
                          }
                          bookingViewModel.checkHostelRoomAvailability(
                            BookingRequestModel(
                              roomModel: widget.roomModel,
                              hostelId: widget.roomModel?.hostelId ?? "",
                              roomId: widget.roomModel?.id ?? "",
                              checkInDate: _selectedDates.first,
                              checkOutDate: _selectedDates.last,
                              guestCount: _guestCount,
                              guestDetailsList: [],couponId:bookingViewModel.selectedCoupon.value?.id ?? ""
                            ),2
                          );
                        }),
                      ],
                    )) : PrimaryButton(
                      buttonTxt: "Let\'s go",
                      buttonClick: () {
                        if (_selectedDates.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please Select Dates')),
                          );
                          return;
                        }
                        bookingViewModel.checkHostelRoomAvailability(
                          BookingRequestModel(
                            roomModel: widget.roomModel,
                            hostelId: widget.roomModel?.hostelId ?? "",
                            roomId: widget.roomModel?.id ?? "",
                            checkInDate: _selectedDates.first,
                            checkOutDate: _selectedDates.last,
                            guestCount: _guestCount,
                            guestDetailsList: [],couponId:bookingViewModel.selectedCoupon.value?.id ?? ""
                          ),2
                        );
                      },
                    );
                  },
                  orElse: () => PrimaryButton(
                    buttonTxt: "Let\'s go",
                    buttonClick: () {
                      if (_selectedDates.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please Select Dates')),
                        );
                        return;
                      }
                      bookingViewModel.checkHostelRoomAvailability(
                        BookingRequestModel(
                          roomModel: widget.roomModel,
                          hostelId: widget.roomModel?.hostelId ?? "",
                          roomId: widget.roomModel?.id ?? "",
                          checkInDate: _selectedDates.first,
                          checkOutDate: _selectedDates.last,
                          guestCount: _guestCount,
                          guestDetailsList: [],couponId:bookingViewModel.selectedCoupon.value?.id ?? ""
                        ),2
                      );
                    },
                  ),
                )),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}