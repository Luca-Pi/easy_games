import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function(String) onQuestionAnswered;
  final String answer;
  final String correctAnswer;
  final int score;
  final bool hasAnswered;

  AnswerButton(
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
      child: RaisedButton(
        child: Text(answer),
        onPressed: () => onQuestionAnswered(answer),
        color: this.hasAnswered ? answerStateColor : Theme.of(context).primaryColor,
        textColor: Theme.of(context).textTheme.button.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      width: 250,
    );
  }
}
