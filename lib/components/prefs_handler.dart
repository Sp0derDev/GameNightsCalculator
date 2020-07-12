import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'hand_player.dart';

savePlayer(String key, value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, jsonEncode(value));
  print('Saved $key');
}

readPlayer(String key) async {
  final prefs = await SharedPreferences.getInstance();
  var player = jsonDecode(prefs.getString(key));
  print(player);
  return player;
}

saveAll(p1, p2, p3, p4, p5) {
  savePlayer('player1', p1);
  savePlayer('player2', p2);
  savePlayer('player3', p3);
  savePlayer('player4', p4);
  savePlayer('player5', p5);
}

clearPref() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
}

resetPrefs() async {
  HandPlayer p1 = HandPlayer(
    name: 'Spoder',
    tag: 'player1',
  );
  HandPlayer p2 = HandPlayer(
    name: 'Ali',
    tag: 'player2',
  );
  HandPlayer p3 = HandPlayer(
    name: 'Faisal',
    tag: 'player3',
  );
  HandPlayer p4 = HandPlayer(
    name: 'Ahmad',
    tag: 'player4',
  );
  HandPlayer p5 = HandPlayer(
    name: 'Mahmoud',
    tag: 'player5',
  );

  saveAll(p1, p2, p3, p4, p5);
  //print('object');
}
