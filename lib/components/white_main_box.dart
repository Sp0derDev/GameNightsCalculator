import 'package:flutter/material.dart';

class WhiteMainBox extends StatelessWidget {
  final Widget boxChild;
  final double boxWidth;
  final double boxHeight;

  WhiteMainBox({this.boxChild, this.boxWidth, this.boxHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 40, bottom: 32, right: 34, left: 34),
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFFFF7E8),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.3,
              blurRadius: 1,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ],
        ),
        child: boxChild);
  }
}
