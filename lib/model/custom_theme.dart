import 'package:flutter/material.dart';

class CustomTheme {
  static final theme = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      bodyText2: TextStyle(fontSize: 25, height: 1.4),
      caption: TextStyle(fontSize: 20, height: 1.4),
      headline1: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w800,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
