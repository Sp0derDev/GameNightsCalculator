import 'package:flutter/material.dart';
import 'package:gamenight/components/constants.dart';

class GradientBG extends StatelessWidget {
  final Widget child;

  GradientBG({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, kMainGradient],
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
