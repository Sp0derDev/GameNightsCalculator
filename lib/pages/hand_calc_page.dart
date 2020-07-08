import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamenight/components/constants.dart';
import 'package:gamenight/components/hand_player.dart';
import 'package:gamenight/components/white_main_box.dart';
import 'package:gamenight/components/bottom_long_button.dart';
import 'package:gamenight/components/gradient_bg.dart';
import 'package:gamenight/components/title_text.dart';
import 'package:gamenight/components/hand_score_container.dart';

class HandCalcPage extends StatefulWidget {
  HandPlayer player;
  HandCalcPage({@required this.player});

  @override
  _HandCalcPageState createState() => _HandCalcPageState();
}

class _HandCalcPageState extends State<HandCalcPage> {
  @override
  Widget build(BuildContext context) {
    int tempScore = widget.player.score;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: GradientBG(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleText(
                text: 'Hand',
                fontSize: 35.0,
              ),
              WhiteMainBox(
                boxWidth: 230,
                boxHeight: 450,
                boxChild: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.player.name,
                          style: TextStyle(
                            fontFamily: 'AvenirNext',
                            fontSize: 28,
                            color: kTitle.withOpacity(0.95),
//                        backgroundColor: kLightGray,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14),
                          constraints: BoxConstraints.expand(height: 40),
                          child: TabBar(
                            isScrollable: false,
                            labelColor: Colors.black,
                            labelStyle: TextStyle(
                              fontFamily: 'AvenirNext',
                              fontSize: 16,
                            ),
                            indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                color: kLightRed.withOpacity(0.7),
                                width: 4.0,
                              ),
                            ),
                            unselectedLabelColor: Colors.black54,
                            tabs: [
                              Tab(text: 'x1'),
                              Tab(text: 'x2'),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 4, bottom: 10),
                          child: TabBarView(children: [
                            HandScoreContainer(
                              player: widget.player,
                              multiplier: 1,
                            ),
                            HandScoreContainer(
                              player: widget.player,
                              multiplier: 2,
                            ),
                          ]),
                        )),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    widget.player.confirmScore();
                    Navigator.pop(context);
                  });
                },
                child: LongBottomButton(
                  text: "Continue",
                  color: kDarkButton,
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
