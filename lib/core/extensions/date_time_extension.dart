/// Copyright (c) 2024 Ahmad Nour Haidar.

/// this is a helper extensions [functions]
extension FormatDateTime on DateTime {
  static final months = [
    'jan',
    'feb',
    'mar',
    'apr',
    'may',
    'jun',
    'jul',
    'aug',
    'sep',
    'oct',
    'nov',
    'dec'
  ];

  String get dMMMyyyy {
    return "$day-${months[month - 1]},$year";
  }
}
