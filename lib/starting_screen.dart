import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_simple/background_gradient.dart';
import 'package:flutter_svg/svg.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      Color(0xFF51A5DA),
      Color(0xFF0C7BC8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Guess the Answer',
            style: GoogleFonts.lato(
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
          ElevatedButton.icon(
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
            icon: Icon(Icons.play_arrow),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}