// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyModels _$CompanyModelsFromJson(Map<String, dynamic> json) =>
    CompanyModels(
      company: json['company'] as String,
      location: json['location'] as String,
      employees: (json['employees'] as List<dynamic>)
          .map((e) => Employees.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyModelsToJson(CompanyModels instance) =>
    <String, dynamic>{
      'company': instance.company,
      'location': instance.location,
      'employees': instance.employees,
      'products': instance.products,
    };
