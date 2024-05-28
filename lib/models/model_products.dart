// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part "model_products.g.dart";

@JsonSerializable()
class Products {
   String name;
   double price;
   bool inStock;

  Products({
    required this.name,
    required this.price,
    required this.inStock,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return _$ProductsFromJson(json);
  }
}
