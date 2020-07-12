import 'package:flutter/cupertino.dart';
import 'prefs_handler.dart';

class HandPlayer {
  final tag;
  int score;
  String name;
  int tempScore = 0;
  HandPlayer({@required this.name, this.score = 0, @required this.tag});
  addScore({int multiplier, scoreToAdd}) {
    score += scoreToAdd * multiplier;
  }

  confirmScore() {
    score += tempScore;
    tempScore = 0;
  }

  HandPlayer.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        score = json['score'],
        tag = json['tag'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'score': score,
        'tag': tag,
      };
}
