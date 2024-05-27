import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ToDoEdit extends StatefulWidget {
  final nameController;
  final ageController;
  final positionController;
  final skillController;
  final indexController;

  ToDoEdit({
    super.key,
    required this.nameController,
    required this.ageController,
    required this.positionController,
    required this.skillController,
    required this.indexController,
  });

  @override
  State<ToDoEdit> createState() => ToDoEditDialogState();
}

class ToDoEditDialogState extends State<ToDoEdit> {
  final _formkey = GlobalKey<FormState>();

  String title = "";
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 206, 211, 233),
      title: const Text("Edit Employess"),
      content: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: widget.indexController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Index"),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Iltimos Index kiriting";
                  }
                  return null;
                },
                onSaved: (newTodo) {
                  if (newTodo != null) {
                    title = newTodo;
                  }
                },
              ),
              const Gap(10),
              TextFormField(
                controller: widget.nameController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Iltimos Name kiriting";
                  }
                  return null;
                },
                onSaved: (newTodo) {
                  if (newTodo != null) {
                    title = newTodo;
                  }
                },
              ),
              const Gap(10),
              TextFormField(
                controller: widget.ageController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Age"),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Iltimos Age kiriting";
                  }
                  return null;
                },
                onSaved: (newTodo) {
                  if (newTodo != null) {
                    title = newTodo;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: widget.positionController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Position"),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Iltimos Position kiriting";
                  }
                  return null;
                },
                onSaved: (newTodo) {
                  if (newTodo != null) {
                    title = newTodo;
                  }
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: widget.skillController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  label: Text("Skill"),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Iltimos Skill kiriting";
                  }
                  return null;
                },
                onSaved: (newTodo) {
                  if (newTodo != null) {
                    title = newTodo;
                  }
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Bekor qilish"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          child: const Text("O'zgartirish"),
        )
      ],
    );
  }
}
