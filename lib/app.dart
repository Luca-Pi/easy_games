import "package:flutter/material.dart";

import 'config/questions.dart';
import 'widgets/login/LoginView.dart';
import 'widgets/quiz/quiz.dart';
import 'widgets/quiz/result.dart';

import 'models/Question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _playerName;
  var _currentQuestionIndex = 0;
  var scoreTotal = 0;

  @override
  Widget build(BuildContext context) {
    return _playerName == null
        ? LoginView(_onNameEntered)
        : _currentQuestionIndex < questions.length
            ? Quiz(
                questions: questions,
                currentQuestionIndex: _currentQuestionIndex,
                onQuestionAnswered: _onQuestionAnswered,
              )
            : QuizResult(scoreTotal, onRetryEvent, onLogout);
  }

  void _onNameEntered(String name) {
    setState(() {
      _playerName = name;
    });
  }

  void _onQuestionAnswered(String answer) {
    if (questions[_currentQuestionIndex].correctAnswer == answer) {
      scoreTotal += questions[_currentQuestionIndex].score;
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  void onRetryEvent() {
    setState(() {
      _currentQuestionIndex = 0;
      scoreTotal = 0;
    });
  }

  void onLogout() {
    setState(() {
      scoreTotal = 0;
      _currentQuestionIndex = 0;
      _playerName = null;
    });
  }
}
