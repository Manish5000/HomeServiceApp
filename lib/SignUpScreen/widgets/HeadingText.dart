// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HeadingPart extends StatelessWidget {
  const HeadingPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Your Home Services Expert',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Raleway',
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Continue with Phone Number',
          style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff9c9c9c),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
