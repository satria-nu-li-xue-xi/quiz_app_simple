import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() {
    return _StartingScreenState();
  }
}

class _StartingScreenState extends State<StartingScreen> {
  void startQuiz() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Guess the Answer',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
            color: Color(0xFF3761B2),
            shadows: [
              Shadow(
                color: Color(0xFF3761B2).withValues(alpha: 0.6),
                offset: Offset(0, 2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        const SizedBox(
            height: 18,
        ),
        Material(
          elevation: 6,
          shadowColor: Colors.blue.withValues(alpha: 0.6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2000000000000),
          ),
          child: SvgPicture.asset(
            'assets/img/quiz-logo.svg',
            width: 180,
          ),
        ),
        const SizedBox(
          height: 36,
        ),
        ElevatedButton(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              elevation: 6,
              shadowColor: Colors.blue.withValues(alpha: 0.6),
              backgroundColor: Color(0xFF3761B2),
              foregroundColor: Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
            ),
            child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}