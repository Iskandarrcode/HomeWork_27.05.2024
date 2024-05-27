import 'package:flutter/material.dart';
import 'package:may27/controllers/controller_company.dart';
import 'package:may27/views/screens/products_screens.dart';

void main() {
  runApp(const MyApp());

  CompanyContoller().getProducts();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreens(),
    );
  }
}
