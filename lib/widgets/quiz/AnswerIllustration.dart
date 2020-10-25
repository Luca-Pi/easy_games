import 'package:flutter/material.dart';

class AnswerIllustration extends StatelessWidget {
  final Function(String) onQuestionAnswered;
  final String answer;
  final String correctAnswer;
  final int score;
  final bool hasAnswered;

  AnswerIllustration(
    this.onQuestionAnswered,
    this.answer,
    this.correctAnswer,
    this.score,
    this.hasAnswered,
  );

  @override
  Widget build(BuildContext context) {
    final answerStateColor = answer == correctAnswer ? Colors.green : Colors.red;

    return Container(
      padding: EdgeInsets.all(6),
      child: ElevatedButton(
        style: Theme.of(context).textButtonTheme.style.copyWith(
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.all(hasAnswered ? answerStateColor : Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        onPressed: () => onQuestionAnswered(answer),

        child: Image.asset("assets/images/${answer}_logo.png"),
      ),
    );
  }
}
