import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/pages/details_screen.dart';
import 'package:flutter_e_commerce_app/pages/home.dart';

import 'pages/login.dart';
import 'pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Details(),
    );
  }
}
