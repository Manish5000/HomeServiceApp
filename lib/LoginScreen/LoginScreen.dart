// ignore_for_file: prefer_const_constructors

import 'package:assignmentoyelabs/LoginScreen/widgets/AppBar.dart';
import 'package:assignmentoyelabs/LoginScreen/widgets/Footer.dart';
import 'package:assignmentoyelabs/LoginScreen/widgets/HeadingAndButtons.dart';
import 'package:assignmentoyelabs/LoginScreen/widgets/SignUpAndForgot.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../SignUpScreen/widgets/PhoneNumberSection.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  CountryCode? _code = CountryCode(code: 'IN');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            NTAppBar(),
            SizedBox(
              height: 50,
            ),
            HeadingAndButtons(),
            SizedBox(
              height: 25,
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
              height: 36,
            ),
            SignUpAndForgotPassword(),
           Spacer(), 
            Footer(),
            SizedBox(
              height: 36,
            )
          ],
        ),
      ),
    );
  }
}
