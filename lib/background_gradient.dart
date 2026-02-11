import 'package:flutter/material.dart';

const alignmentStart = Alignment.topRight;
const alignmentEnd = Alignment.bottomLeft;

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(this.color1, this.color2, {super.key, required this.child});

  final Color color1;
  final Color color2;
  final Widget child;

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
        child: child,
      ),
    );
  }
}