import 'package:flutter/material.dart';
import 'package:gamenight/components/constants.dart';
import 'package:gamenight/components/white_main_box.dart';
import 'package:gamenight/components/bottom_long_button.dart';
import 'package:gamenight/components/gradient_bg.dart';
import 'package:gamenight/components/title_text.dart';
import 'package:gamenight/components/hand_player_card.dart';
import 'package:gamenight/components/hand_player.dart';

class HandPlayersPage extends StatefulWidget {
  @override
  _HandPlayersPageState createState() => _HandPlayersPageState();
}

class _HandPlayersPageState extends State<HandPlayersPage> {
  HandPlayer player1 = HandPlayer(name: 'Spoder');
  HandPlayer player2 = HandPlayer(name: 'Ali');
  HandPlayer player3 = HandPlayer(name: 'Faisal');
  HandPlayer player4 = HandPlayer(name: 'Ahmad');
  HandPlayer player5 = HandPlayer(name: 'Mahmoud');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: GradientBG(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleText(
              text: "Hand",
              fontSize: 30.0,
            ),
            WhiteMainBox(
              boxWidth: 230,
              boxHeight: 420,
              boxChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HandPlayerCard(
                    player: player1,
                  ),
                  HandPlayerCard(
                    player: player2,
                  ),
                  HandPlayerCard(
                    player: player3,
                  ),
                  HandPlayerCard(
                    player: player4,
                  ),
                  HandPlayerCard(
                    player: player5,
                  ),
                ],
              ),
            ),
            LongBottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Exit",
              color: Color(0xFFF8565F),
            )
          ],
        ),
      ),
    );
  }
}
