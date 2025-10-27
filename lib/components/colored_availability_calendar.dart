import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sasta_stay_dealer/components/primary_button.dart';
import 'package:table_calendar/table_calendar.dart';
import '../response_model/bookings_response_model.dart';
import 'package:get/get.dart';

import '../response_model/hostel_response_model.dart';
import '../utils/custom_colors.dart';
import '../view_models/booking_view_model.dart';

class ColoredAvailabilityCalendar extends StatefulWidget {
  final BookingViewModel bookingViewModel;
  final Function(DateTime start, DateTime end) onRangeSelected;

  const ColoredAvailabilityCalendar({
    super.key,
    required this.onRangeSelected, required this.bookingViewModel,
  });

  @override
  State<ColoredAvailabilityCalendar> createState() =>
      _ColoredAvailabilityCalendarState();
}

class _ColoredAvailabilityCalendarState extends State<ColoredAvailabilityCalendar> {
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  DateTime _focusedDay = DateTime.now();
  RxMap<DateTime, String> _dateStatusMap = <DateTime, String>{}.obs;


  @override
  Widget build(BuildContext context) {
    return Obx(() => widget.bookingViewModel.checkAvailabilityDatesObserver.value.maybeWhen(
      success: (data){
        final bookingData = (data as HostelRoomAvailabilityDatesResponseModel).data;
        _dateStatusMap.clear();
        _dateStatusMap.value = {
          for (var d in bookingData ?? [])
            normalizeDate(DateTime.parse(d.date ?? "")) : d.status ?? "available"
        };
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 5,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Expanded(
                child: TableCalendar(
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now().add(const Duration(days: 365)),
                  focusedDay: _focusedDay,
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  rangeSelectionMode: RangeSelectionMode.toggledOn,
                  onRangeSelected: (start, end, focusedDay) {
                    final status = _dateStatusMap[normalizeDate(focusedDay)] ?? "available";
                      if (status == "unavailable") {
                        final formattedDate = DateFormat("MMM d, yyyy").format(focusedDay);
                        Get.snackbar(
                            "Unavailable",
                            "The selected date ($formattedDate) is not available.",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: CustomColors.primary,
                            colorText: CustomColors.white
                          );
                        return;
                      }

                    if (start != null && end != null){
                      // Normalize all dates (remove time part)
                      DateTime current = normalizeDate(start);
                      final DateTime last = normalizeDate(end);

                      bool hasUnavailable = false;

                      // Check every date between start and end
                      while (!current.isAfter(last)) {
                        final status = _dateStatusMap[normalizeDate(current)] ?? "available";
                        if (status == "unavailable") {
                          hasUnavailable = true;
                          break;
                        }
                        current = current.add(const Duration(days: 1));
                      }

                      if (hasUnavailable) {
                        Get.snackbar(
                          "Unavailable Range",
                          "Your selected range includes unavailable dates.",
                          snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: CustomColors.primary,
                            colorText: CustomColors.white
                        );
                        return;
                      }
                    };

                    // If all dates are valid
                    setState(() {
                      _rangeStart = start;
                      _rangeEnd = end;
                      _focusedDay = focusedDay;
                    });
                  },
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      final status = _dateStatusMap[normalizeDate(day)] ?? "available";

                      Color bgColor;
                      switch (status) {
                        case "available":
                          bgColor = Colors.green.shade300;
                          break;
                        case "partial":
                          bgColor = Colors.orange.shade300;
                          break;
                        case "unavailable":
                          bgColor = Colors.red.shade300;
                          break;
                        default:
                          bgColor = Colors.white;
                      }

                      final isInRange = _rangeStart != null &&
                          _rangeEnd != null &&
                          day.isAfter(_rangeStart!.subtract(const Duration(days: 1))) &&
                          day.isBefore(_rangeEnd!.add(const Duration(days: 1)));

                      return Container(
                        decoration: BoxDecoration(
                          color: isInRange
                              ? Colors.blueAccent
                              : bgColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: const EdgeInsets.all(4),
                        alignment: Alignment.center,
                        child: Text(
                          "${day.day}",
                          style: TextStyle(
                            color: status == "unavailable"
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(10),
                child: PrimaryButton(
                  buttonTxt: "Confirm",
                  buttonClick: () {
                    if (_rangeStart != null && _rangeEnd != null) {
                      widget.onRangeSelected(_rangeStart!, _rangeEnd!);
                    }
                    else if(_rangeStart != null && _rangeEnd == null){
                      widget.onRangeSelected(_rangeStart!, _rangeStart!);
                    }
                    else if(_rangeStart == null && _rangeEnd != null){
                      widget.onRangeSelected(_rangeEnd!, _rangeEnd!);
                    }

                    Navigator.pop(context);
                  }
                ),
              ),
            ],
          ),
        );
      },
        orElse: () => SizedBox()));
  }
}
