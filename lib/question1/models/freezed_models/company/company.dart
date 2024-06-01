import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';
import '../department/department.dart';

part 'company.freezed.dart';

part 'company.g.dart';

int? readIsActiveValue(Map json, String key) {
  final keys = ['isActive', 'is_active'];
  for (final e in keys) {
    if (json.containsKey(e)) {
      return json[e];
    }
  }
  return null;
}

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(readValue: readIsActiveValue) int? isActive,
    required String name,
    Address? address,
    required DateTime established,
    required List<Department> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
