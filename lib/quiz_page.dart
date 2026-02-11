import 'package:flutter/material.dart';
import 'package:quiz_app_simple/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The Question...', style: TextStyle(color: Colors.white),),
          const SizedBox(height: 20),
          AnswerButton(
              answerText: 'Answer 1',
              onTap: () {}
          ),
          AnswerButton(
              answerText: 'Answer 2',
              onTap: () {}
          ),
          AnswerButton(
              answerText: 'Answer 3',
              onTap: () {}
          ),
          AnswerButton(
              answerText: 'Answer 4',
              onTap: () {}
          ),
        ],
      ),
    );
  }
}