import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamenight/components/constants.dart';
import 'package:gamenight/components/white_main_box.dart';
import 'package:gamenight/components/bottom_long_button.dart';
import 'package:gamenight/components/gradient_bg.dart';
import 'package:gamenight/components/title_text.dart';
import 'package:gamenight/components/hand_player.dart';

class HandScoreContainer extends StatefulWidget {
  HandPlayer player;
  int multiplier;

  HandScoreContainer({this.player, this.multiplier});

  @override
  _HandScoreContainerState createState() => _HandScoreContainerState();
}

class _HandScoreContainerState extends State<HandScoreContainer> {
  bool isSuckSelected = false;
  int tempScore;
  int totalCards = 0;
  var totalCardsField = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState

    widget.player.tempScore = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    if (isSuckSelected) {
                      isSuckSelected = false;
                      print(totalCards);
                      totalCardsField.clear();

                      widget.player.tempScore -= totalCards * widget.multiplier;
                      widget.player.tempScore -= 100 * widget.multiplier;
                      totalCards = 0;
                    } else {
                      isSuckSelected = true;
                      totalCardsField.clear();
                      widget.player.tempScore -= totalCards * widget.multiplier;
                      widget.player.tempScore += 100 * widget.multiplier;
                      totalCards = 0;
                    }

                    // print(widget.player.tempScore);
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 14, bottom: 8),
                  padding: EdgeInsets.only(top: 4),
                  alignment: Alignment.center,
                  width: 180,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: isSuckSelected ? kLightRed : kLightRed2,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 0.3,
                        blurRadius: 2,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    'I suck',
                    style: TextStyle(
                      fontFamily: 'AvenirNext',
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.75),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 6, bottom: 6),
                padding: EdgeInsets.only(top: 20, bottom: 10),
                alignment: Alignment.center,
                width: 180,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white30,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0.3,
                      blurRadius: 2,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.values[5],
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.solidHeart,
                      color: kLightRed,
                      size: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 2),
                      width: 140,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        controller: totalCardsField,
                        enabled: isSuckSelected ? false : true,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onSubmitted: (input) {
                          setState(() {
                            totalCards = int.parse(input);
                            widget.player.tempScore +=
                                totalCards * widget.multiplier;
                            //print(widget.player.tempScore);
                          });
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Total Cards',
                          hintStyle: TextStyle(
                            fontFamily: 'AvenirNext',
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            "Score: " + widget.player.tempScore.toString(),
            style: TextStyle(
              fontFamily: 'AvenirNext',
              fontSize: 20,
              color: kDarkButton,
            ),
          )
        ],
      ),
    );
    ;
  }
}
