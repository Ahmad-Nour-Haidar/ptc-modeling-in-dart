// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map json) => _$CompanyImpl(
      isActive: (readIsActiveValue(json, 'isActive') as num?)?.toInt(),
      name: json['name'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(Map<String, dynamic>.from(json['address'] as Map)),
      established: DateTime.parse(json['established'] as String),
      departments: (json['departments'] as List<dynamic>)
          .map((e) => Department.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };
