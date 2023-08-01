// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BoxImage extends StatelessWidget {
  final String imagePath;
  BoxImage({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
          color: Color.fromARGB(255, 223, 223, 223)),
      child: Row(
        children: [Image.asset(imagePath,width: 25,)],
      ),
    );
  }
}
