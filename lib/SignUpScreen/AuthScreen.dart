// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignmentoyelabs/LoginScreen/LoginScreen.dart';
import 'package:assignmentoyelabs/SignUpScreen/widgets/Buttons.dart';
import 'package:assignmentoyelabs/SignUpScreen/widgets/PhoneNumberSection.dart';
import 'package:assignmentoyelabs/SignUpScreen/widgets/SVGPart.dart';
import 'package:assignmentoyelabs/SignUpScreen/widgets/HeadingText.dart';
import 'package:assignmentoyelabs/main.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController numberController = TextEditingController();
  CountryCode? _code = CountryCode(code: "IN");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SVGPart(),
            SizedBox(
              height: 4,
            ),
            HeadingPart(),
            SizedBox(
              height: 28,
            ),
            Container(
                height: 63,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(horizontal: 26),
                child: Row(children: [
                  Flexible(
                      child: CountryCodePicker(
                    showDropDownButton: true,
                    initialSelection: _code!.code,
                    onInit: (c) {
                      _code = c;
                    },
                    onChanged: (c) {
                      print(c.code);
                      _code = c;
                    },
                    hideMainText: false,
                    textStyle: TextStyle(color: Color(0xff31373a)),
                  )),
                  VerticalDivider(
                    indent: 14,
                    color: Color(0xff797979),
                    width: 0.5,
                    endIndent: 14,
                  ),
                  PhoneNumberSection(
                    hintText: 'Enter Phone Number',
                  ),
                ])),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: MyButton(
                  text: 'SIGN IN',
                  color: Colors.black,
                  textColor: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  function: () async {
                    navigatorKey.currentState!
                        .push(MaterialPageRoute(builder: (builder) {
                      return LoginScreen();
                    }));
                  }),
            ),
            Spacer(),
            Text(
              'VIEW OTHER OPTIONS',
              style: TextStyle(
                  fontFamily: 'Inter',
                  letterSpacing: 0.5,
                  color: Color(0xff5A77FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 29,
            ),
            InkWell(
              onTap: () {},
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'ALREADY HAVE AN ACCOUNT? ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xff9c9c9c),
                      letterSpacing: 0.5,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                TextSpan(
                    text: "LOGIN",
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontFamily: 'Inter',
                      color: Color(0xff5A77FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
              ])),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
