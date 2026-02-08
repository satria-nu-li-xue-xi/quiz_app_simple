import 'package:flutter/material.dart';
import 'package:quiz_app_simple/starting_screen.dart';

const alignmentStart = Alignment.topRight;
const alignmentEnd = Alignment.bottomLeft;

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: alignmentStart,
          end: alignmentEnd,
        ),
      ),
      child: Center(
        child: StartingScreen(),
      ),
    );
  }
}