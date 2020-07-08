import 'package:flutter/cupertino.dart';

class HandPlayer {
  int score;
  String name;
  int tempScore = 0;
  HandPlayer({@required this.name, this.score = 0});
  addScore({int multiplier, scoreToAdd}) {
    score += scoreToAdd * multiplier;
  }

  confirmScore() {
    score += tempScore;
    tempScore = 0;
  }
}
