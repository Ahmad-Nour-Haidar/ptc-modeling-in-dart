/// Copyright (c) 2024 Ahmad Nour Haidar.
library;

/// this is a helper extensions [functions]
/// also we can use [intl] or [Jiffy]
extension FormatDateTime on DateTime {
  static final months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  int get currentYear => toLocal().year;

  int get currentMonth => toLocal().month;

  int get currentDay => toLocal().day;

  int get currentHour => toLocal().hour;

  int get currentMinute => toLocal().minute;

  int get currentSecond => toLocal().second;

  /// example: 27-dec,596
  String get dMMMyyyy {
    return "$currentDay-$currentMonth,$currentYear";
  }

  /// example: 27-dec,2024, 3:40:22
  String get dMMMyyyyHMS {
    return "$currentDay-$currentMonth,$currentYear, $currentHour:$currentMinute:$currentSecond";
  }
}
