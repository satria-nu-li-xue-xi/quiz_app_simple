import 'package:flutter/material.dart';
import 'package:quiz_app_simple/background_gradient.dart';

void main () {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: BackgroundContainer(
            Color(0xFF51A5DA),
            Color(0xFF0C7BC8),
        ),
      ),
    ),
  );
}