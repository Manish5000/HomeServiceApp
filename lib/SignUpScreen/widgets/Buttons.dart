// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton extends StatelessWidget {
  final String? text;
  final String? imgpath;
  final VoidCallback? function;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  MyButton(
      {@required this.text,
      this.textColor,
      this.imgpath,
      this.fontWeight,
      this.fontSize,
      @required this.color,
      @required this.function});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 63,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        color: color,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: function,
            child: Center(
              child: Text(
                text!,
                style: TextStyle(
                    color: textColor,
                    fontFamily: 'Inter',
                    fontWeight: fontWeight,
                    fontSize: fontSize),
              ),
            )),
      ),
    );
  }
}

class VerifyButton extends StatelessWidget {
  final VoidCallback? function;
  final String? imgPath;
  final String? text;
  final Color? buttonColor;
  const VerifyButton(
      {@required this.function,
      this.buttonColor,
      @required this.imgPath,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 63,
      margin: EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(38),
          color: buttonColor,
          border: Border.all(width: 1, color: Color(0xffEBEAEC))),
      child: GestureDetector(
        onTap: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imgPath!),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Text(
                text!.toUpperCase(),
                style: TextStyle(
                    color: buttonColor == Color(0xff7583ca)
                        ? Colors.white
                        : Color(0xff3F414E),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
