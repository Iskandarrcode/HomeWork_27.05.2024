import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:may27/controllers/controller_company.dart';
import 'package:may27/views/widgets/add_employess.dart';
import 'package:may27/views/widgets/edit_employess.dart';
import 'package:may27/views/widgets/remove_employess.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductScreens extends StatefulWidget {
  const ProductScreens({super.key});

  @override
  State<ProductScreens> createState() => _ProductScreensState();
}

class _ProductScreensState extends State<ProductScreens> {
  final indexController = TextEditingController();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final positionController = TextEditingController();
  final skillController = TextEditingController();

  CompanyContoller companyCountrollers = CompanyContoller();
  final textFieldController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    isLoading = true;

    companyCountrollers.getProducts().then((value) {
      isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(companyCountrollers.list);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 10, 27, 85),
          title: const Text(
            "Product Screen",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ToDoEdit(
                          indexController: indexController,
                          nameController: nameController,
                          ageController: ageController,
                          positionController: positionController,
                          skillController: skillController,
                        );
                      },
                    ));
                  },
                  child: const Text(
                    "Edit Employess",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(10),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ToDoEdit3(
                          indexController: indexController,
                          nameController: nameController,
                          ageController: ageController,
                          positionController: positionController,
                          skillController: skillController,
                        );
                      },
                    ));
                  },
                  child: const Text(
                    "Add Employess",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(10),
                ZoomTapAnimation(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ToDoEdit2(
                          indexController: indexController,
                        );
                      },
                    ));
                  },
                  child: const Text(
                    "Remove Employess",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(50),
                Center(
                  child: ZoomTapAnimation(
                    child: SizedBox(
                      width: 320,
                      child: Card(
                        elevation: 25,
                        color: const Color(0xffFFFFFF),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                "COMPANY",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                  "Company: ${companyCountrollers.list[0].company}"),
                              Text(
                                  "Location: ${companyCountrollers.list[0].location}"),
                              const Gap(15),
                              const Text(
                                "EMPLOYESS",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                  "Name: ${companyCountrollers.list[0].employees[0].name}"),
                              Text(
                                  "Age: ${companyCountrollers.list[0].employees[0].age}"),
                              Text(
                                  "Position: ${companyCountrollers.list[0].employees[0].position}"),
                              Text(
                                  "Skill: ${companyCountrollers.list[0].employees[0].skill}"),
                              const Gap(15),
                              Text(
                                  "Name: ${companyCountrollers.list[0].employees[1].name}"),
                              Text(
                                  "Age: ${companyCountrollers.list[0].employees[1].age}"),
                              Text(
                                  "Position: ${companyCountrollers.list[0].employees[1].position}"),
                              Text(
                                  "Skill: ${companyCountrollers.list[0].employees[1].skill}"),
                              const Gap(15),
                              const Text(
                                "PRODUCTS",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                  "Name: ${companyCountrollers.list[0].products[0].name}"),
                              Text(
                                  "Price: ${companyCountrollers.list[0].products[0].price} \$"),
                              Text(
                                  "InStock: ${companyCountrollers.list[0].products[0].inStock}"),
                              const Gap(10),
                              Text(
                                  "Name: ${companyCountrollers.list[0].products[1].name}"),
                              Text(
                                  "Price: ${companyCountrollers.list[0].products[1].price} \$"),
                              Text(
                                  "InStock: ${companyCountrollers.list[0].products[1].inStock}"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
