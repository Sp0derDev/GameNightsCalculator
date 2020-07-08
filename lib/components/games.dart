import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gamenight/pages/hand_players_page.dart';

class Games extends StatelessWidget {
  final Color boxColor;
  final IconData icon;
  final Function onPressed;
//  final

  Games({this.boxColor, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: boxColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.3,
            blurRadius: 2,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          splashColor: Colors.white,
          alignment: Alignment.center,
          onPressed: onPressed,
          icon: FaIcon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
