import 'package:flutter/material.dart';
import 'package:gamenight/components/constants.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double fontSize;

  TitleText({this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kTitle,
          fontFamily: 'AvenirNext',
//                  fontWeight: FontWeight.bold,
          fontSize: fontSize,
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.3,
              blurRadius: 3,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ]),
    );
  }
}
