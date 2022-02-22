// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PhoneNumberSection extends StatelessWidget {
  final String? hintText;

  PhoneNumberSection({
    @required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: TextFormField(
        keyboardType: TextInputType.phone,
        validator: (value) {
          if (value!.isEmpty) {
            return "NUMBER FIELD IS EMPTY";
          }

          return null;
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(
              style: BorderStyle.none,
              width: 0,
            )),
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 15,
                color: Color(0xff31373A),
                fontWeight: FontWeight.w300)),
      ),
    );
  }
}
