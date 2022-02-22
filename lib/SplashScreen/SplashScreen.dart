// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import '../SignUpScreen/AuthScreen.dart';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    screenChange();

    super.initState();
  }

  screenChange() async {
    Timer(Duration(seconds: 59), () {
      navigatorKey.currentState!
          .pushReplacement(MaterialPageRoute(builder: (builder) {
        return SignUpScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 200,
              width: 170,
              margin: EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage(
                      'assets/logo.png',
                    )),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              'Powered by Oyelabs',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text('WITH LOVE💙',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Inter',
                )),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
