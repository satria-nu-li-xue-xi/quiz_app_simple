import 'package:flutter/material.dart';
import 'package:quiz_app_simple/starting_screen.dart';
import 'package:quiz_app_simple/quiz_page.dart';
import 'package:quiz_app_simple/background_gradient.dart';

class QuizLogic extends StatefulWidget {
  const QuizLogic({super.key});
  @override
  State<QuizLogic> createState() {
    return _QuizLogicState();
  }
}

class _QuizLogicState extends State<QuizLogic> {
  var activeScreen = 'start-screen';
  
  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-page';
    });
  }

  @override
  Widget build(BuildContext context){
    Widget screenWidget = StartingScreen(switchScreen);

    if (activeScreen == 'quiz-page') {
      screenWidget = const QuizPage();
    }

    return MaterialApp(
      home: Scaffold(
        body: BackgroundContainer(
            Color(0xFF51A5DA),
            Color(0xFF0C7BC8),
            child: screenWidget),
      ),
    );
  }
}