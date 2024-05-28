import 'dart:convert';

import 'package:may27/models/model_company.dart';

class CompanyContoller {
  final List<CompanyModels> _list = [];

  List<CompanyModels> get list {
    return [..._list];
  }

  Future<void> getProducts() async {
    const String url = '''
      {
        "company": "Tech Solutions",
        "location": "San Francisco",
        "employees": [
          {
            "name": "Alice",
            "age": 30,
            "position": "Developer",
            "skills": ["Dart", "Flutter", "Firebase"]
          },
          {
            "name": "Bob",
            "age": 25,
            "position": "Designer",
            "skills": ["Photoshop", "Illustrator"]
          }
        ],
        "products": [
          {"name": "Product A", "price": 29.99, "inStock": true},
          {"name": "Product B", "price": 49.99, "inStock": false}
        ]
      }
     ''';
    Map<String, dynamic> data = jsonDecode(url);
    _list.add(CompanyModels.fromJson(data));
  }

  // void delete(int index) {
  //   _list.removeAt(index);
  // }

  void edit(int index, String name, int age, String position, List skills) {
    _list[0].employees[index].name = name;
    _list[0].employees[index].age = age;
    _list[0].employees[index].position = position;
    _list[0].employees[index].skill = skills;
  }

  // void add({required String name, required String phone}) {
  //   int red = Random().nextInt(255);
  //   int green = Random().nextInt(255);
  //   int blue = Random().nextInt(255);

  //   _list.add(
  //     Contact(
  //       name: name,
  //       phone: phone,
  //       color: Color.fromARGB(255, red, green, blue),
  //     ),
  //   );
}
