import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  @JsonKey(name: 'is_active')
  int isActive;
  String name;
  Address address;
  DateTime established;
  List<Department> departments;

  Company({
    required this.isActive,
    required this.name,
    required this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@JsonSerializable()
class Address {
  String street;
  String city;
  String state;
  @JsonKey(name: 'postalCode')
  String postalCode;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Department {
  String deptId;
  String name;
  String manager;
  double budget;
  int? year;
  Availability? availability;
  @JsonKey(name: 'meeting_time')
  String meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentToJson(this);
}

@JsonSerializable()
class Availability {
  bool online;
  bool inStore;

  Availability({
    required this.online,
    required this.inStore,
  });

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}
