// Dart imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_styles.dart';
import 'custom_colors.dart';

// Future<String> getUniqueUserId() async {
//   String? deviceID;
//   final deviceInfo = DeviceInfoPlugin();
//   if (Platform.isIOS) {
//     final iosDeviceInfo = await deviceInfo.iosInfo;
//     deviceID = iosDeviceInfo.identifierForVendor; // unique ID on iOS
//   } else if (Platform.isAndroid) {
//     final androidDeviceInfo = await deviceInfo.androidInfo;
//     deviceID = androidDeviceInfo.id; // unique ID on Android
//   }
//
//   if (deviceID != null && deviceID.length < 4) {
//     if (Platform.isAndroid) {
//       deviceID += '_android';
//     } else if (Platform.isIOS) {
//       deviceID += '_ios___';
//     }
//   }
//   if (Platform.isAndroid) {
//     deviceID ??= 'flutter_user_id_android';
//   } else if (Platform.isIOS) {
//     deviceID ??= 'flutter_user_id_ios';
//   }
//
//   final userID = md5
//       .convert(utf8.encode(deviceID!))
//       .toString()
//       .replaceAll(RegExp(r'[^0-9]'), '');
//   return userID.substring(userID.length - 6);
// }

Widget switchDropList<T>(
  ValueNotifier<T> notifier,
  List<T> itemValues,
  Widget Function(T value) widgetBuilder,
) {
  return ValueListenableBuilder<T>(
      valueListenable: notifier,
      builder: (context, value, _) {
        return DropdownButton<T>(
          value: value,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: itemValues.map((T itemValue) {
            return DropdownMenuItem(
              value: itemValue,
              child: widgetBuilder(itemValue),
            );
          }).toList(),
          onChanged: (T? newValue) {
            if (newValue != null) {
              notifier.value = newValue;
            }
          },
        );
      });
}

AlertDialog unAvailableAlert() {
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    backgroundColor: CustomColors.white,
    content: IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Expanded(child: SizedBox.shrink()),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/wrong_image.png',
                    width: 10,
                    height: 10,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset('assets/images/no_data_found.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            "User Currently Offline \n\n Please Try Again Later",
            style: AppStyles.textError,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child:  const Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

String timeAgoCustom(DateTime date) {
  final currentDay = DateFormat('dd-MM-yyyy').format(DateTime.now());
  final logDay = DateFormat('dd-MM-yyyy').format(date);
  return "${currentDay == logDay ? "today" : DateFormat("dd/MM/yyyy").format(date)} ${DateFormat('jm').format(date)}";
  // if (diff.inDays > 365) {
  //   return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
  // }
  // if (diff.inDays > 30) {
  //   return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
  // }
  // if (diff.inDays > 7) {
  //   return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
  // }
  // if (diff.inDays >= 0)
  //   if(diff.inDays == 0){
  //     return "Today ${DateFormat('jm').format(d)}";
  //   }
  //   else if(diff.inDays == 1){
  //     return "Yesterday ${DateFormat('jm').format(d)}";
  //   }
  //   else{
  //     return "${DateFormat.E().add_jm().format(d)}";
  //   }
  // if (diff.inMinutes > 0) {
  //   return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
  // }
  // return "just now";
}

List<String> maleAvatarUrls(){
  final images = [
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695837174.png?alt=media&token=112b7bcf-c6e2-4e83-9b1b-ff84e47deffa",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695854941.png?alt=media&token=0fb48460-1e65-487b-b975-254147f0eb32",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695910130.png?alt=media&token=db73b8cd-bc82-4c9d-9e19-d8afa6832209",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727696561925.png?alt=media&token=903725be-7253-4e37-98eb-42d6516f9aff",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695873459.png?alt=media&token=76f968fb-ab8b-4826-8355-9f9a2aa7aff0",
  ];
  return images;
}

List<String> femaleAvatarUrls(){
  final images = [
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695927113.png?alt=media&token=710179ae-3a06-4762-94e4-352ce1518317",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695891460.png?alt=media&token=2fc1274f-eb5c-44c4-9832-db6c5881163d",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727696347532.png?alt=media&token=0981a1e5-d665-4ee6-abf9-39b6c478ab9a",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727696390828.png?alt=media&token=b97f45d0-71b0-490f-b7dd-5c1f247d80f3",
    "https://firebasestorage.googleapis.com/v0/b/vlogcalls-73428.appspot.com/o/profile%2F668fcddff6d19ccd874aa175%2F1727695792180.png?alt=media&token=265a8267-83cf-46f4-9211-e7288f6df308",
  ];
  return images;
}

bool validateAvatarExist(String avatar){
   final avatars = maleAvatarUrls() + femaleAvatarUrls();
   return avatars.contains(avatar);
}

bool isHttpsUrl(String input) {
  RegExp httpsUrlRegex = RegExp(r'^https:\/\/');
  return httpsUrlRegex.hasMatch(input);
}

bool isFilePath(String input) {
  RegExp filePathRegex = RegExp(r'^[a-zA-Z]:\\|^\/');
  return filePathRegex.hasMatch(input);
}

bool isFileOrUrl(String input) {
  RegExp httpsUrlRegex = RegExp(r'^https:\/\/');
  RegExp filePathRegex = RegExp(r'^[a-zA-Z]:\\|^\/');
  return filePathRegex.hasMatch(input) || httpsUrlRegex.hasMatch(input);
}

String convertSecondsToTime(int seconds) {
  if (seconds < 0) {
    return "Invalid input: Time cannot be negative.";
  }
  if (seconds < 60) {
    return "$seconds ${seconds == 1 ? 's' : 's'}";
  }
  int minutes = (seconds % 3600) ~/ 60;
  int hours = seconds ~/ 3600;
  seconds = seconds % 60;
  List<String> timeParts = [];
  if (hours > 0) {
    timeParts.add(" $hours ${hours == 1 ? 'Hr' : 'Hrs'}");
  }
  if (minutes > 0) {
    timeParts.add(" $minutes ${minutes == 1 ? 'M' : 'M'}");
  }
  if (seconds > 0) {
    timeParts.add(" $seconds ${seconds == 1 ? 'S' : 'S'}");
  }
  return timeParts.join(" ");
}

extension SnackbarExtension on BuildContext {
  void showCustomSnackbar(String title, String message,
      {Color backgroundColor = Colors.red,
      Color textColor = Colors.white,
      SnackPosition position = SnackPosition.BOTTOM}) {
    Get.snackbar(
      title,
      message,
      snackPosition: position,
      backgroundColor: backgroundColor,
      colorText: textColor,
    );
  }
} 

extension ListSpaceBetweenExtension on List<Widget> {
  List<Widget> withSpaceBetween({double? width, double? height}) => [
        for (int i = 0; i < length; i++) ...[
          if (i > 0) SizedBox(width: width, height: height),
          this[i],
        ],
      ];
}

String floatFormateNumber(String number) {
  String integerPart = number.split('.')[0];
  String decimalPart = number.split('.')[1];
  final formateValue = formatNumber(integerPart);
  return "$formateValue.$decimalPart";
} 

String formatNumber(String number) {
  final cleanNumber = number.replaceAll(RegExp(r'[^0-9]'), '');

  final length = cleanNumber.length;

  if (length <= 3) {
    return cleanNumber;
  }
  final lastThreeDigits = cleanNumber.substring(length - 3);

  final remainingDigits = cleanNumber.substring(0, length - 3);
  final formattedRemainingDigits = StringBuffer();

  for (int i = remainingDigits.length - 1; i >= 0; i--) {
    formattedRemainingDigits.write(remainingDigits[i]);
    if ((remainingDigits.length - i) % 2 == 0) {
      formattedRemainingDigits.write(',');
    }
  }
  final formattedReversed =
      formattedRemainingDigits.toString().split('').reversed.join();

  final formattedNumber = '$formattedReversed,$lastThreeDigits';
  return formattedNumber.startsWith(',')
      ? formattedNumber.substring(1)
      : formattedNumber;
}



String? capitalizeFirstLetter(String? input) {
  if (input == null || input.isEmpty) {
    return input;
  }
  return input[0].toUpperCase() + input.substring(1);
}

String removeCommas(String numberWithCommas) {
  if (numberWithCommas.isEmpty) {
    return "0";
  }
  return numberWithCommas.replaceAll(',', '');
}

// String formatRelativeTime(String dateString) {
//   DateTime dateTime = DateTime.parse(dateString).toUtc();
//   Duration difference = DateTime.now().difference(dateTime);
//   if (difference.inDays > 30) {
//     int months = difference.inDays ~/ 30;
//     return '$months ${months == 1 ? 'month' : 'months'} ago';
//   } else if (difference.inDays > 0) {
//     return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
//   } else if (difference.inHours > 0) {
//     return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
//   } else if (difference.inMinutes > 0) {
//     return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
//   } else {
//     return timeago.format(dateTime, locale: 'en_short', allowFromNow: true);
//   }
// }

String convert12To24HourFormat(String time12Hour) {
  DateTime parsedTime = DateFormat('hh:mm a').parse(time12Hour);
  return DateFormat('HH:mm').format(parsedTime);
}

String convert24To12HourFormat(String? time24Hour) {
  try {
    DateTime parsedTime = DateFormat('HH:mm').parse(time24Hour ?? "");
    return DateFormat('hh:mm a').format(parsedTime);
  } catch (error) {
    return time24Hour ?? "";
  }
}

void openInCallPage(String phoneNumber) async{
  final uri = Uri.parse(phoneNumber);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    Get.snackbar("Could not launch","CallPage",backgroundColor: CustomColors.red,colorText: Colors.white,snackPosition: SnackPosition.BOTTOM);
    // Handle error
    throw 'Could not launch $phoneNumber';
  }
}


class ReversibleColumn extends StatelessWidget {
  final bool reverse;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;

  const ReversibleColumn({
    Key? key,
    required this.reverse,
    required this.children, required this.crossAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: reverse ? children.reversed.toList() : children,
    );
  }
}



