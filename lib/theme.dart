import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primaryColor: Color.fromRGBO(114, 161, 249, 1),
  textTheme: ThemeData.light().textTheme.copyWith(
        button: TextStyle(
          color: Colors.white,
        ),
      ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Color.fromRGBO(114, 161, 249, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
    ),
  ),
);
