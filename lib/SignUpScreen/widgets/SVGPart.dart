// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVGPart extends StatelessWidget {
  const SVGPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.95,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/svgBackground.png'))),
        ),
        SvgPicture.asset(
          'assets/signupsvg.svg',
        ),
        Positioned(
          bottom: -5,
          child: SvgPicture.asset(
            'assets/line.svg',
          ),
        ),
      ],
    );
  }
}
