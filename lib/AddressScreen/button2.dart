import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationButton extends StatelessWidget {
  final VoidCallback? function;
  final String? imgPath;
  final String? text;
  final Color? buttonColor;
  const LocationButton(
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
                text!,
                style: TextStyle(
                    color: Colors.white,
                        
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