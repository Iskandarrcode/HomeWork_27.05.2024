import 'package:flutter/material.dart';

class ToDoEdit2 extends StatefulWidget {
  final indexController;

  ToDoEdit2({
    super.key,
    required this.indexController,
  });

  @override
  State<ToDoEdit2> createState() => ToDoEditDialogState();
}

class ToDoEditDialogState extends State<ToDoEdit2> {
  final _formkey = GlobalKey<FormState>();

  String title = "";
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 206, 211, 233),
      title: const Text("Remove Employess"),
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
