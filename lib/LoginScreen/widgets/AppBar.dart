// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../main.dart';

class NTAppBar extends StatelessWidget {
  const NTAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 28),
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: () {
          navigatorKey.currentState!.pop();
        },
        child: Icon(
          Icons.arrow_back,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
