import 'package:flutter/material.dart';
import 'package:gamenight/components/constants.dart';
import 'package:gamenight/components/white_main_box.dart';
import 'package:gamenight/components/bottom_long_button.dart';
import 'package:gamenight/components/gradient_bg.dart';
import 'package:gamenight/components/title_text.dart';
import 'package:gamenight/components/hand_player_card.dart';
import 'package:gamenight/components/hand_player.dart';
import 'package:gamenight/components/prefs_handler.dart';

class HandPlayersPage extends StatefulWidget {
  @override
  _HandPlayersPageState createState() => _HandPlayersPageState();
}

class _HandPlayersPageState extends State<HandPlayersPage> {
  loadSharedPrefs() async {
    try {
      HandPlayer savedPlayer1 =
          HandPlayer.fromJson(await readPlayer("player1"));
      player1 = savedPlayer1;
    } catch (ex) {}
    try {
      HandPlayer savedPlayer2 =
          HandPlayer.fromJson(await readPlayer("player2"));
      player2 = savedPlayer2;
    } catch (ex) {}
    try {
      HandPlayer savedPlayer3 =
          HandPlayer.fromJson(await readPlayer("player3"));
      player3 = savedPlayer3;
    } catch (ex) {}
    try {
      HandPlayer savedPlayer4 =
          HandPlayer.fromJson(await readPlayer("player4"));
      player4 = savedPlayer4;
    } catch (ex) {}
    try {
      HandPlayer savedPlayer5 =
          HandPlayer.fromJson(await readPlayer("player5"));
      player5 = savedPlayer5;
    } catch (ex) {}

    setState(() {});
  }

  //
  HandPlayer player1 = HandPlayer(
    name: 'Spoder',
    tag: 'player1',
  );
  HandPlayer player2 = HandPlayer(
    name: 'Ali',
    tag: 'player2',
  );
  HandPlayer player3 = HandPlayer(
    name: 'Faisal',
    tag: 'player3',
  );
  HandPlayer player4 = HandPlayer(
    name: 'Ahmad',
    tag: 'player4',
  );
  HandPlayer player5 = HandPlayer(
    name: 'Mahmoud',
    tag: 'player5',
  );

  @override
  void initState() {
    //clearPref();

    loadSharedPrefs();

    super.initState();
  }

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
                resetPrefs();
              },
              text: "Exit",
              color: Color(0xFFF8565F),
            ),
          ],
        ),
      ),
    );
  }
}
