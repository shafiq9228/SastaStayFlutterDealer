import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/components/empty_data_view.dart';
import 'package:sasta_stay_dealer/utils/custom_colors.dart';

class BookingsPage extends StatelessWidget {
  const BookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: Center(
        child: EmptyDataView(text: "No Bookings Found"),
      ),
    );
  }
}
