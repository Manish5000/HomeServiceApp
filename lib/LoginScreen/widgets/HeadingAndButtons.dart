// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../SignUpScreen/widgets/Buttons.dart';

class HeadingAndButtons extends StatelessWidget {
  const HeadingAndButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome Back!",
          style: TextStyle(
              fontFamily: 'Inter', fontSize: 24, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 60,
        ),
        VerifyButton(
            text: "Continue with Facebook",
            imgPath: 'assets/facebook.svg',
            function: () {},
            buttonColor: Color(0xff7583CA)),
        SizedBox(
          height: 20,
        ),
        VerifyButton(
            text: "Continue with Google",
            imgPath: 'assets/google.svg',
            buttonColor: Colors.white,
            function: () {}),
        SizedBox(
          height: 62,
        ),
        Text(
          "OR Continue with Phone Number".toUpperCase(),
          style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xffA1A4B2),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
