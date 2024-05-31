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

  /// example: 27-dec,596
  String get dMMMyyyy {
    return "$day-${months[month - 1]},$year";
  }

  /// example: 27-dec,2024, 3:40:22
  String get dMMMyyyyHMS {
    return "$day-${months[month - 1]},$year, $hour:$minute:$second";
  }
}
