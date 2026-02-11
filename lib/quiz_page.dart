import 'package:flutter/material.dart';
import 'package:quiz_app_simple/answer_button.dart';
import 'package:quiz_app_simple/data/questions.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
                color: Colors.white),
          ),
          const SizedBox(height: 20),
          ...currentQuestion.answers.map(
            (answers) {
              return AnswerButton(
                  answerText: answers,
                  onTap: () {}
              );
            }
          ),
        ],
      ),
    );
  }
}