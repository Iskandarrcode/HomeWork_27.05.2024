
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part "model_employess.g.dart";

@JsonSerializable()
class Employees {
   String name;
   int age;
   String position;
   List skill;

  Employees({
    required this.name,
    required this.age,
    required this.position,
    required this.skill,
  });

  factory Employees.fromJson(Map<String, dynamic> json) {
    return _$EmployeesFromJson(json);
  }
}
