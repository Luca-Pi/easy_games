import 'package:easy_games/models/SidebarCard.dart';
import 'package:flutter/material.dart';

class SidebarContent extends StatelessWidget {
  final List<SidebarCard> themesStats = [
    SidebarCard(
      theme: "RPG",
      record: 4,
      points: 95,
      ranking: 10,
      playCount: 26,
    ),
    SidebarCard(
      theme: "FPS",
      record: 3,
      points: 75,
      ranking: 15,
      playCount: 35,
    ),
    SidebarCard(
      theme: "MMO",
      record: 2,
      points: 55,
      ranking: 20,
      playCount: 44,
    ),
    SidebarCard(
      theme: "Simulation",
      record: 4,
      points: 85,
      ranking: 10,
      playCount: 15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.png"),
          radius: 50,
          backgroundColor: Colors.white,
        ),
        Text("scrumi"),
        FittedBox(
          child: Row(
            children: [Text("Role : "), Text("Berserker")],
          ),
        ),
        Container(
          child: GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            padding: EdgeInsets.all(25),
            children: [
              ...themesStats.map((themeStats) => Card(
                    child: Column(
                      children: [
                        Text(themeStats.theme),
                        Row(children: [Text("Record : "), Text("${themeStats.record}/4")]),
                        Row(children: [Text("Points : "), Text(themeStats.points.toString())]),
                        Row(children: [Text("Ranking : "), Text("${themeStats.ranking}%")]),
                        Row(children: [Text("Played : "), Text(themeStats.playCount.toString())]),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Divider(
          thickness: 0.5,
          color: Colors.grey.withOpacity(0.3),
          indent: 16,
          endIndent: 16,
        ),
      ],
    );
  }
}
