import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;

  PrimaryButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: Theme.of(context).textButtonTheme.style,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
