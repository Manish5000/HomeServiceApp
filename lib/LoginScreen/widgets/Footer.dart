// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../SignUpScreen/AuthScreen.dart';
import '../../main.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigatorKey.currentState!.push(MaterialPageRoute(builder: (builder) {
          return SignUpScreen();
        }));
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff9c9c9c),
              letterSpacing: 0.5,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
        TextSpan(
            text: "SIGN IN",
            style: TextStyle(
              letterSpacing: 0.5,
              fontFamily: 'Inter',
              color: Color(0xff5A77FF),
                 
              fontSize: 14
              ,
              fontWeight: FontWeight.w400,
            )),
      ])),
    );
  }
}
