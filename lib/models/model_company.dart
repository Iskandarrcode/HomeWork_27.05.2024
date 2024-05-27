// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:may27/models/model_employess.dart';
import 'package:may27/models/model_products.dart';
part "model_company.g.dart";

@JsonSerializable()
class CompanyModels {
  final String company;
  final String location;
  final List<Employees> employees;
  final List<Products> products;

  CompanyModels({
    required this.company,
    required this.location,
    required this.employees,
    required this.products,
  });

   factory CompanyModels.fromJson(Map<String, dynamic> json) {
    return _$CompanyModelsFromJson(json);
  }
}
