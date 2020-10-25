import 'package:flutter/material.dart';

class UserScoreCard extends StatelessWidget {
  final String userName;
  final String score;
  final Color color;

  UserScoreCard(this.userName, this.score, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(userName, style: TextStyle(color: color)),
            Text(score, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
