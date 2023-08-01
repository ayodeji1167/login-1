// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() tapFunction;
  CustomButton({super.key,required this.tapFunction});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapFunction,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'Sign in',
            style: TextStyle(color: Colors.white,fontSize: 16),
          ),
        ),
      ),
    );
  }
}
