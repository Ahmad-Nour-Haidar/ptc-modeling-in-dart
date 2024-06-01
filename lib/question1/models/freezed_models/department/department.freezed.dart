// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  String get deptId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get manager => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  Availability get availability => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_time')
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
      int year,
      Availability availability,
      @JsonKey(name: 'meeting_time') String meetingTime});

  $AvailabilityCopyWith<$Res> get availability;
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
    Object? year = null,
    Object? availability = null,
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability,
      meetingTime: null == meetingTime
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityCopyWith<$Res> get availability {
    return $AvailabilityCopyWith<$Res>(_value.availability, (value) {
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
      int year,
      Availability availability,
      @JsonKey(name: 'meeting_time') String meetingTime});

  @override
  $AvailabilityCopyWith<$Res> get availability;
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
    Object? year = null,
    Object? availability = null,
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as Availability,
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
      required this.year,
      required this.availability,
      @JsonKey(name: 'meeting_time') required this.meetingTime});

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
  final int year;
  @override
  final Availability availability;
  @override
  @JsonKey(name: 'meeting_time')
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
          required final int year,
          required final Availability availability,
          @JsonKey(name: 'meeting_time') required final String meetingTime}) =
      _$DepartmentImpl;

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
  int get year;
  @override
  Availability get availability;
  @override
  @JsonKey(name: 'meeting_time')
  String get meetingTime;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentImplCopyWith<_$DepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
