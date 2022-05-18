import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/custom_theme.dart';
import 'second_app.dart';

class ClassTitle {
  late String title;
  ClassTitle(this.title);
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ClassTitle>(
          create: (context) => ClassTitle('John\'s Blog'),
        ),
        Provider<String>(
          create: (context) => 'John',
        ),
        Provider<int>(
          create: (context) => 23,
        ),
      ],
      child: MaterialApp(
        title: 'Angel\'s Blog',
        theme: CustomTheme.theme,
        home: const SecondApp(),
      ),
    );
  }
}
