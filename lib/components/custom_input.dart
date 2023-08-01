// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomInput(
      {super.key, required this.controller, required this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey.shade100),
          ),
          focusedBorder:  const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.lightBlueAccent),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 152, 152, 152)),
          filled: true,
          fillColor: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}
