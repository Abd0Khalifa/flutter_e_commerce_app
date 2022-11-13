// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/pages/register.dart';

import '../shared/colors.dart';
import '../shared/constanats.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: Abdo.copyWith(hintText: "Enter Your Email")),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: Abdo.copyWith(hintText: "Enter Your Password")),
                const SizedBox(
                  height: 64,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an account",
                        style: TextStyle(fontSize: 18)),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
