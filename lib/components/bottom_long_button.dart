import 'package:flutter/material.dart';

class LongBottomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onTap;

  LongBottomButton({this.text, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 280,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0.3,
              blurRadius: 1,
              offset: Offset(3, 3), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'AvenirNext',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
