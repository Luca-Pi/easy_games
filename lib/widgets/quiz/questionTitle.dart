import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String questionText;

  QuestionTitle(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,

        style: TextStyle(fontSize: 16, color: Colors.grey),
        textAlign: TextAlign.center,
      ),

      width: double.infinity,
      margin: EdgeInsets.all(15),
    );
  }
}
