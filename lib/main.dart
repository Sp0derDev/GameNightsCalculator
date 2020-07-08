import 'package:flutter/material.dart';
import 'package:gamenight/pages/hand_calc_page.dart';
import 'package:gamenight/pages/home_page.dart';
import 'package:gamenight/pages/hand_calc_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: 'Cocogoose'),
      home: HomePage(),
      //home: HandCalcPage(),
    );
  }
}
