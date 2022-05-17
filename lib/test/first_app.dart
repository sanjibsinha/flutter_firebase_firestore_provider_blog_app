import 'package:flutter/material.dart';

import 'second_app.dart';

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Angel\'s Blog',
      home: SecondApp(),
    );
  }
}
