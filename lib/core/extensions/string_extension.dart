/// Copyright (c) 2024 Ahmad Nour Haidar.
library;

/// this is a helper extensions [functions]
extension ConvertString on String {
  DateTime get toDateTime => DateTime.parse(this);

  double get toDouble => double.parse(this);

  int get toInt => toDouble.toInt();
}
