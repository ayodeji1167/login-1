// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:login/components/box_img.dart';
import 'package:login/components/custom_button.dart';
import 'package:login/components/custom_input.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signin() {
    print("I am signing in");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SafeArea(
          child: Center(
        child: Column(children: [
          Icon(
            Icons.lock,
            size: 100,
          ),
          SizedBox(height: 33),
          Text(
            '''Welcome back,you've been missed''',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomInput(
              controller: usernameController,
              hintText: 'Username',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomInput(
              controller: passwordController,
              hintText: 'Password',
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          CustomButton(
            tapFunction: signin,
          ),
          SizedBox(height: 50),
          Text('Or continue with',style: TextStyle(fontSize: 16),),
                    SizedBox(height: 60),

          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              BoxImage(imagePath: 'lib/images/google.png'),
              SizedBox(width: 20,),
              BoxImage(imagePath: 'lib/images/apple.png'),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member', style: TextStyle(fontSize: 15),),
              SizedBox(width: 6,),
              Text('Register now', style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 55, 131, 192)),),

            ],
          )
        ]),
      )),
    );
  }
}
