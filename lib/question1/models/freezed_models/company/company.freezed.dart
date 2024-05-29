// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int get isActive => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  DateTime get established => throw _privateConstructorUsedError;
  List<Department> get departments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int isActive,
      String name,
      Address address,
      DateTime established,
      List<Department> departments});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? name = null,
    Object? address = null,
    Object? established = null,
    Object? departments = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departments: null == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int isActive,
      String name,
      Address address,
      DateTime established,
      List<Department> departments});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? name = null,
    Object? address = null,
    Object? established = null,
    Object? departments = null,
  }) {
    return _then(_$CompanyImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departments: null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {required this.isActive,
      required this.name,
      required this.address,
      required this.established,
      required final List<Department> departments})
      : _departments = departments;

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final int isActive;
  @override
  final String name;
  @override
  final Address address;
  @override
  final DateTime established;
  final List<Department> _departments;
  @override
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'Company(isActive: $isActive, name: $name, address: $address, established: $established, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.established, established) ||
                other.established == established) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isActive, name, address,
      established, const DeepCollectionEquality().hash(_departments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {required final int isActive,
      required final String name,
      required final Address address,
      required final DateTime established,
      required final List<Department> departments}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int get isActive;
  @override
  String get name;
  @override
  Address get address;
  @override
  DateTime get established;
  @override
  List<Department> get departments;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get street => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String street, String city, String state, String postalCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? state = null,
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String street, String city, String state, String postalCode});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? state = null,
    Object? postalCode = null,
  }) {
    return _then(_$AddressImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.street,
      required this.city,
      required this.state,
      required this.postalCode});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final String street;
  @override
  final String city;
  @override
  final String state;
  @override
  final String postalCode;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, state: $state, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, street, city, state, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String street,
      required final String city,
      required final String state,
      required final String postalCode}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  String get street;
  @override
  String get city;
  @override
  String get state;
  @override
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  String get deptId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get manager => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  Availability? get availability => throw _privateConstructorUsedError;
  String get meetingTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call(
      {String deptId,
      String name,
      String manager,
      double budget,
      int? year,
      Availability? availability,
      String meetingTime});

  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deptId = null,
    Object? name = null,
    Object? manager = null,
    Object? budget = null,
    Object? year = freezed,
    Object? availability = freezed,
    Object? meetingTime = null,
  }) {
    return _then(_value.copyWith(
      deptId: null == deptId
          ? _value.deptId
          : deptId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      meetingTime: null == meetingTime
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepartmentImplCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$DepartmentImplCopyWith(
          _$DepartmentImpl value, $Res Function(_$DepartmentImpl) then) =
      __$$DepartmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deptId,
      String name,
      String manager,
      double budget,
      int? year,
      Availability? availability,
      String meetingTime});

  @override
  $AvailabilityCopyWith<$Res>? get availability;
}

/// @nodoc
class __$$DepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$DepartmentImpl>
    implements _$$DepartmentImplCopyWith<$Res> {
  __$$DepartmentImplCopyWithImpl(
      _$DepartmentImpl _value, $Res Function(_$DepartmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deptId = null,
    Object? name = null,
    Object? manager = null,
    Object? budget = null,
    Object? year = freezed,
    Object? availability = freezed,
    Object? meetingTime = null,
  }) {
    return _then(_$DepartmentImpl(
      deptId: null == deptId
          ? _value.deptId
          : deptId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability?,
      meetingTime: null == meetingTime
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentImpl implements _Department {
  const _$DepartmentImpl(
      {required this.deptId,
      required this.name,
      required this.manager,
      required this.budget,
      this.year,
      this.availability,
      required this.meetingTime});

  factory _$DepartmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentImplFromJson(json);

  @override
  final String deptId;
  @override
  final String name;
  @override
  final String manager;
  @override
  final double budget;
  @override
  final int? year;
  @override
  final Availability? availability;
  @override
  final String meetingTime;

  @override
  String toString() {
    return 'Department(deptId: $deptId, name: $name, manager: $manager, budget: $budget, year: $year, availability: $availability, meetingTime: $meetingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentImpl &&
            (identical(other.deptId, deptId) || other.deptId == deptId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.meetingTime, meetingTime) ||
                other.meetingTime == meetingTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deptId, name, manager, budget,
      year, availability, meetingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      __$$DepartmentImplCopyWithImpl<_$DepartmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentImplToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  const factory _Department(
      {required final String deptId,
      required final String name,
      required final String manager,
      required final double budget,
      final int? year,
      final Availability? availability,
      required final String meetingTime}) = _$DepartmentImpl;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$DepartmentImpl.fromJson;

  @override
  String get deptId;
  @override
  String get name;
  @override
  String get manager;
  @override
  double get budget;
  @override
  int? get year;
  @override
  Availability? get availability;
  @override
  String get meetingTime;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
mixin _$Availability {
  bool get online => throw _privateConstructorUsedError;
  bool get inStore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityCopyWith<Availability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) then) =
      _$AvailabilityCopyWithImpl<$Res, Availability>;
  @useResult
  $Res call({bool online, bool inStore});
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res, $Val extends Availability>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = null,
    Object? inStore = null,
  }) {
    return _then(_value.copyWith(
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      inStore: null == inStore
          ? _value.inStore
          : inStore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityImplCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$$AvailabilityImplCopyWith(
          _$AvailabilityImpl value, $Res Function(_$AvailabilityImpl) then) =
      __$$AvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool online, bool inStore});
}

/// @nodoc
class __$$AvailabilityImplCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res, _$AvailabilityImpl>
    implements _$$AvailabilityImplCopyWith<$Res> {
  __$$AvailabilityImplCopyWithImpl(
      _$AvailabilityImpl _value, $Res Function(_$AvailabilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = null,
    Object? inStore = null,
  }) {
    return _then(_$AvailabilityImpl(
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      inStore: null == inStore
          ? _value.inStore
          : inStore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityImpl implements _Availability {
  const _$AvailabilityImpl({required this.online, required this.inStore});

  factory _$AvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityImplFromJson(json);

  @override
  final bool online;
  @override
  final bool inStore;

  @override
  String toString() {
    return 'Availability(online: $online, inStore: $inStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityImpl &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.inStore, inStore) || other.inStore == inStore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, online, inStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      __$$AvailabilityImplCopyWithImpl<_$AvailabilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityImplToJson(
      this,
    );
  }
}

abstract class _Availability implements Availability {
  const factory _Availability(
      {required final bool online,
      required final bool inStore}) = _$AvailabilityImpl;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$AvailabilityImpl.fromJson;

  @override
  bool get online;
  @override
  bool get inStore;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
