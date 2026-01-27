import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sasta_stay_dealer/components/custom_progress_bar.dart';
import 'package:sasta_stay_dealer/components/secondary_heading_component.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';
import 'package:get/get.dart';
import 'package:sasta_stay_dealer/utils/statefullwrapper.dart';
import 'package:intl/intl.dart';

import '../response_model/hostel_response_model.dart';
import '../view_models/hostel_view_model.dart';

class StatsDashboardPage extends StatefulWidget {
  const StatsDashboardPage({super.key});

  @override
  State<StatsDashboardPage> createState() => _StatsDashboardPageState();
}

class _StatsDashboardPageState extends State<StatsDashboardPage> {
  final hostelViewModel = Get.put(HostelViewModel());
  DateTime? _selectedDate;
  bool _showAllStats = true;

  // Helper method to get icon and color based on stat type
  (IconData, Color) _getStatIconAndColor(String type) {
    switch (type) {
      case "Earning":
        return (Icons.currency_rupee, Colors.green);
      case "Bookings":
      case "Offline Bookings":
        return (Icons.book_online, Colors.blue);
      case "Withdraws":
        return (Icons.account_balance_wallet, Colors.orange);
      case "Pending Withdraws":
        return (Icons.pending, Colors.amber);
      case "Failed Withdraws":
        return (Icons.error_outline, Colors.red);
      case "Pending Refunds":
      case "Refunds":
        return (Icons.refresh, Colors.purple);
      default:
        return (Icons.show_chart, Colors.grey);
    }
  }


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: CustomColors.primary,
            hintColor: CustomColors.primary,
            colorScheme: ColorScheme.light(primary: CustomColors.primary!),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _showAllStats = false;
      });
      await fetchStats(picked);
    }
  }

  Future<void> _goToPreviousDate() async {
    if (_selectedDate != null) {
      final previousDate = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day - 1,
      );
      setState(() {
        _selectedDate = previousDate;
      });
      await fetchStats(previousDate);
    }
  }

  Future<void> _goToNextDate() async {
    if (_selectedDate != null) {
      final nextDate = DateTime(
        _selectedDate!.year,
        _selectedDate!.month,
        _selectedDate!.day + 1,
      );
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);

      // Only allow going to next date if it's not beyond today
      if (nextDate.isBefore(today) || nextDate.isAtSameMomentAs(today)) {
        setState(() {
          _selectedDate = nextDate;
        });
        await fetchStats(nextDate);
      }
    }
  }

  Future<void> _showAllStatistics() async {
    setState(() {
      _selectedDate = null;
      _showAllStats = true;
    });
    await fetchStats(null);
  }

  bool get _isToday {
    if (_selectedDate == null) return false;
    final now = DateTime.now();
    return _selectedDate!.year == now.year &&
        _selectedDate!.month == now.month &&
        _selectedDate!.day == now.day;
  }

  bool get _isFirstDate {
    if (_selectedDate == null) return false;
    return _selectedDate!.isAtSameMomentAs(DateTime(2000, 1, 1));
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        fetchStats(null);
      },
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              const SecondaryHeadingComponent(buttonTxt: "Dashboard Statistics"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 16,right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        color: CustomColors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Financial Overview',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey.shade800,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      // Show All Stats Button
                                      if (!_showAllStats)
                                        Padding(
                                          padding: const EdgeInsets.only(right: 8.0),
                                          child: OutlinedButton(
                                            onPressed: _showAllStatistics,
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              side: BorderSide(color: CustomColors.primary!),
                                            ),
                                            child: Text(
                                              'All Stats',
                                              style: TextStyle(
                                                color: CustomColors.primary,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      // Date Navigation Buttons (only show when date is selected)
                                      // Calendar Button
                                      Container(
                                        decoration: BoxDecoration(
                                          color: CustomColors.primary!.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.calendar_today,
                                            color: CustomColors.primary,
                                            size: 20,
                                          ),
                                          onPressed: () => _selectDate(context),
                                          tooltip: 'Select Date',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              if (_selectedDate != null)
                                Row(
                                  children: [
                                    // Previous Date Button
                                    Container(
                                      decoration: BoxDecoration(
                                        color: _isFirstDate
                                            ? Colors.grey.shade300
                                            : CustomColors.primary!.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          color: _isFirstDate
                                              ? Colors.grey
                                              : CustomColors.primary,
                                          size: 16,
                                        ),
                                        onPressed: _isFirstDate ? null : _goToPreviousDate,
                                        tooltip: 'Previous Day',
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    // Next Date Button
                                    Container(
                                      decoration: BoxDecoration(
                                        color: _isToday
                                            ? Colors.grey.shade300
                                            : CustomColors.primary!.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          color: _isToday
                                              ? Colors.grey
                                              : CustomColors.primary,
                                          size: 16,
                                        ),
                                        onPressed: _isToday ? null : _goToNextDate,
                                        tooltip: 'Next Day',
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                  ],
                                ),
                              const SizedBox(height: 8),
                              // Selected Date Display with Navigation Info
                              if (_selectedDate != null)
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.date_range,
                                          size: 16,
                                          color: Colors.grey.shade600,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Showing stats for: ${DateFormat('dd MMM yyyy').format(_selectedDate!)}',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Use arrows to navigate between days',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade500,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ],
                                ),
                              if (_showAllStats)
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bar_chart,
                                      size: 16,
                                      color: Colors.grey.shade600,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Showing all statistics',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Stats Grid
                      Expanded(
                        child: Obx(() => hostelViewModel.fetchHostelStatisticsObserver.value.maybeWhen(
                          loading: () => const CustomProgressBar(),
                          success: (data) {
                            final stats = (data as FetchHostelStatisticsResponseModel).data;
                            if (stats == null || stats.isEmpty) {
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.analytics_outlined,
                                      size: 64,
                                      color: Colors.grey.shade400,
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                      _selectedDate != null
                                          ? 'No data available for selected date'
                                          : 'No statistics available',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                            return MasonryGridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              itemCount: stats.length,
                              itemBuilder: (context, index) {
                                final stat = stats[index];
                                final type = stat.title ?? "";
                                final value = stat.value ?? 0;
                                final (icon, color) = _getStatIconAndColor(type);

                                return Card(
                                  color: CustomColors.white,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: color.withOpacity(0.1),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(icon, color: color, size: 20),
                                            ),
                                            const Spacer(),
                                            if (type.contains("Pending") || type.contains("Failed"))
                                              Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                decoration: BoxDecoration(
                                                  color: type.contains("Failed")
                                                      ? Colors.red.shade100
                                                      : Colors.amber.shade100,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Text(
                                                  type.contains("Failed") ? "Failed" : "Pending",
                                                  style: TextStyle(
                                                    color: type.contains("Failed")
                                                        ? Colors.red
                                                        : Colors.amber.shade800,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Text(
                                          type,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          value,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey.shade800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          orElse: () => const SizedBox(),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> fetchStats(DateTime? date) async {
    await hostelViewModel.fetchHostelStatistics(date);
  }
}