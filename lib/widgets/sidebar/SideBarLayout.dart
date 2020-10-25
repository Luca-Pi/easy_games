import 'package:flutter/material.dart';

import 'SideBar.dart';

class SideBarLayout extends StatelessWidget {
  final Widget child;

  SideBarLayout({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        SideBar(),
      ],

    );
  }
}
