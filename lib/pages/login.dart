// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              MyTextField(
                textInputType: TextInputType.emailAddress,
                isPassword: false,
                hinttext: "Enter Your Email",
              ),
              const SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputType: TextInputType.text,
                isPassword: true,
                hinttext: "Enter Your Password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
