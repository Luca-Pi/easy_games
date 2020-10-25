import 'dart:async';

import 'package:flutter/material.dart';

import 'package:easy_games/models/Question.dart';
import 'AnswerIllustration.dart';
import 'questionTitle.dart';
import 'answerButton.dart';

class Quiz extends StatefulWidget {
  final List<Question> questions;
  final int currentQuestionIndex;
  final Function(String) onQuestionAnswered;

  Quiz({
    @required this.questions,
    @required this.currentQuestionIndex,
    @required this.onQuestionAnswered,
  });

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  bool hasAnswered = false;
  Timer onAnsweredTransitionTimer;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: const Duration(milliseconds: 5000), vsync: this);
    animation = Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        if (animation.value == 0) {
          _onQuestionAnswered("");
        }
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  void didUpdateWidget(covariant Quiz oldWidget) {
    super.didUpdateWidget(oldWidget);

    controller.reset();
    controller.forward();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[widget.currentQuestionIndex];
    return Column(
      children: [
        Align(
          alignment: Alignment(-1.1, 0),
          child: Text(
            "0" + (widget.currentQuestionIndex + 1).toString(),
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        Image.asset("assets/images/${currentQuestion.illustration}"),
        QuestionTitle(currentQuestion.questionTitle),
        if (currentQuestion.type == QuestionType.text)
          ...currentQuestion.answers
              .map(
                (answer) => AnswerButton(
                  (answer) => _onQuestionAnswered(answer),
                  answer,
                  currentQuestion.correctAnswer,
                  currentQuestion.score,
                  hasAnswered,
                ),
              )
              .toList()
        else
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  AnswerIllustration(
                    (answer) => _onQuestionAnswered(answer),
                    currentQuestion.answers[0],
                    currentQuestion.correctAnswer,
                    currentQuestion.score,
                    hasAnswered,
                  ),
                  AnswerIllustration(
                        (answer) => _onQuestionAnswered(answer),
                    currentQuestion.answers[1],
                    currentQuestion.correctAnswer,
                    currentQuestion.score,
                    hasAnswered,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  AnswerIllustration(
                        (answer) => _onQuestionAnswered(answer),
                    currentQuestion.answers[2],
                    currentQuestion.correctAnswer,
                    currentQuestion.score,
                    hasAnswered,
                  ),
                  AnswerIllustration(
                        (answer) => _onQuestionAnswered(answer),
                    currentQuestion.answers[3],
                    currentQuestion.correctAnswer,
                    currentQuestion.score,
                    hasAnswered,
                  ),
                ],
              ),
            ],
          ),
        Container(
          width: 250,
          padding: const EdgeInsets.symmetric(vertical: 42),
          child: LinearProgressIndicator(
            minHeight: 10,
            value: animation.value,
          ),
        ),
      ],
    );
  }

  void _onQuestionAnswered(String answer) async {
    setState(() {
      hasAnswered = true;
      controller.stop();
    });

    Timer(Duration(seconds: 2), () {
      setState(() {
        hasAnswered = false;
      });
      widget.onQuestionAnswered(answer);
    });
  }
}
