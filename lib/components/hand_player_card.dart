import 'package:flutter/material.dart';
import 'package:gamenight/components/constants.dart';
import 'package:gamenight/components/hand_player.dart';
import 'package:gamenight/pages/hand_calc_page.dart';

class HandPlayerCard extends StatefulWidget {
  HandPlayer player;

  HandPlayerCard({@required this.player});
  @override
  _HandPlayerCardState createState() => _HandPlayerCardState();
}

class _HandPlayerCardState extends State<HandPlayerCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HandCalcPage(
                        player: widget.player,
                      ))).then((value) {
            setState(() {});
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 7, bottom: 7, right: 3, left: 3),
          padding: EdgeInsets.only(top: 17, bottom: 12, right: 12, left: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kLightGray,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0.3,
                blurRadius: 2,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                widget.player.name,
                style: TextStyle(
                  color: kDarkButton,
                  fontFamily: 'AvenirNext',
                  fontSize: 18,
                ),
              ),
              Text(
                widget.player.score.toString(),
                style: TextStyle(
                  color: kLightRed,
                  fontFamily: 'AvenirNext',
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
