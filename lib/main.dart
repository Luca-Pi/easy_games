import 'package:easy_games/widgets/sidebar/SideBarLayout.dart';
import "package:flutter/material.dart";

import 'package:easy_games/theme.dart';

import 'package:easy_games/app.dart';

void main() => runApp(Main());

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
        body: SideBarLayout(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            color: Color.fromRGBO(248, 248, 248, 1),
            child: MyApp(),
          ),
        ),
      ),
    );
  }
}
