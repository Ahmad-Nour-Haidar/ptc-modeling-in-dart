import 'package:freezed_annotation/freezed_annotation.dart';

import '../availability/availability.dart';

part 'department.freezed.dart';

part 'department.g.dart';

@freezed
class Department with _$Department {
  const factory Department({
    required String deptId,
    required String name,
    required String manager,
    required double budget,
    required int year,
    required Availability availability,
    @JsonKey(name: 'meeting_time') required String meetingTime,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}
