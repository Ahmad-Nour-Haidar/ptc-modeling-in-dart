import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';
import '../department/department.dart';

part 'company_model.freezed.dart';

part 'company_model.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    @JsonKey(name: 'isActive')
    @JsonKey(name: 'is_active')
    required int isActive,
    required String name,
    Address? address,
    required DateTime established,
    required List<Department> departments,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
