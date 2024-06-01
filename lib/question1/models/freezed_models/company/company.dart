import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';
import '../department/department.dart';

part 'company.freezed.dart';

part 'company.g.dart';

int? readIsActiveValue(Map map, String key) {
  if (map.containsKey('isActive')) {
    return map['isActive'];
  } else if (map.containsKey('is_active')) {
    return map['is_active'];
  } else {
    return null;
  }
}

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(readValue: readIsActiveValue) required int? isActive,
    required String name,
    Address? address,
    required DateTime established,
    required List<Department> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
