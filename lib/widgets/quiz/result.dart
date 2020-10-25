import 'package:easy_games/widgets/custom/PrimaryButton.dart';
import 'package:easy_games/widgets/quiz/UserScoreCard.dart';
import 'package:flutter/material.dart';

class QuizResult extends StatelessWidget {
  final int finalScore;
  final Function onRetryEvent;
  final Function onHomeButtonClicked;

  QuizResult(this.finalScore, this.onRetryEvent, this.onHomeButtonClicked);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 80,
            child: PrimaryButton(child: Text("Home"), onPressed: onHomeButtonClicked),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Container(
              child: Text("RESULTS", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            ),
          ),
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.png"),
              radius: 30,
              backgroundColor: Colors.white,
            ),
            Text("scrumi"),
            Text("$finalScore points", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
          ],
        ),
        Container(
          width: 250,
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Classement", style: TextStyle(fontSize: 14, color: Colors.grey)),
                  Text("Points", style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
              UserScoreCard("Luckys", "95", Colors.yellow),
              UserScoreCard("Torvic_TV", "70", Colors.grey),
              UserScoreCard("Skattank", "65", Colors.amber),
              UserScoreCard("Scrumi", "50", Colors.grey),
              UserScoreCard("Anonymous", "30", Colors.yellow),
              Text(
                "View more",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
        Container(
          width: 150,
          child: PrimaryButton(
            onPressed: onRetryEvent,
            child: Text("Try again ?"),
          ),
        ),
        Align(
          heightFactor: 5,
          alignment: Alignment(0.9, 1),
          child: Image.asset("assets/images/easy_game_logo_text.png", width: 80),
        ),
      ],
    );
  }
}
