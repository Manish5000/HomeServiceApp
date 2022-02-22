import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OTP Verification',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Raleway',
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP sent to',
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xff9c9c9c),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(width: 5,),
            Text(
              '+1 9879878975',
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}