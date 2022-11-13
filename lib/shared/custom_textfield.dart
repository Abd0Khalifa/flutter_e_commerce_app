// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textInputType;
  final bool isPassword;
  final String hinttext;

  const MyTextField({
    super.key,
    required this.textInputType,
    required this.isPassword,
    required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hinttext,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
