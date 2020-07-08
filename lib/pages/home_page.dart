import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamenight/components/constants.dart';
import 'package:gamenight/components/white_main_box.dart';
import 'package:gamenight/components/games.dart';
import 'package:gamenight/components/bottom_long_button.dart';
import 'package:gamenight/components/gradient_bg.dart';
import 'package:gamenight/components/title_text.dart';
import 'package:gamenight/pages/hand_players_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBG(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleText(
              text: "Game Night",
              fontSize: 40,
            ),
            WhiteMainBox(
              boxWidth: 210,
              boxHeight: 360,
              boxChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Games(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HandPlayersPage()));
                        },
                        boxColor: Color(0xFFFFAE9F),
                        icon: FontAwesomeIcons.solidHandPaper,
                      ),
                      Games(
                        boxColor: Color(0xFFFADE9A),
                        icon: FontAwesomeIcons.dice,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Games(
                        boxColor: Color(0xFFA6C7AE),
                        icon: FontAwesomeIcons.addressBook,
                      ),
                      Games(
                        boxColor: Color(0xFFBDBBD5),
                        icon: FontAwesomeIcons.airbnb,
                      ),
                    ],
                  )
                ],
              ),
            ),
            LongBottomButton(
              text: 'About',
              color: kDarkButton,
            ),
          ],
        ),
      ),
    );
  }
}
