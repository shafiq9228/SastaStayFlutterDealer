import 'package:flutter/services.dart';
import '../utils/util.dart';

class MoneyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove non-digits
    String cleanValue = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Format as money
    final monetaryValue = formatNumber(cleanValue);

    return newValue.copyWith(
      text: monetaryValue,
      selection: TextSelection.collapsed(offset: monetaryValue.length),
    );
  }
}