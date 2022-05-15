import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/bog_post.dart';
import '../model/user.dart';
import 'blog_home_page.dart';

final theme = ThemeData(
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
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
  ),
);

class BlogWebApp extends StatelessWidget {
  const BlogWebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<List<BlogPost>>(create: (context) => _blogPosts),
        Provider<User>(
          create: (context) => User(
            name: 'Flutter Dev',
            profilePicture:
                'https://cdn.pixabay.com/photo/2018/03/24/00/36/girl-3255402_960_720.png',
          ),
        ),
      ],
      child: MaterialApp(
        title: 'A Girl\'s Blog',
        theme: theme,
        home: const BlogHomePage(),
      ),
    );
  }
}

final _blogPosts = [
  BlogPost(
    title: 'What is provider?',
    publishedDate: DateTime(2020, 1, 2),
    body:
        'A wrapper around InheritedWidget to make them easier to use and more reusable.',
  ),
  BlogPost(
    title: 'What is multi-provider?',
    publishedDate: DateTime(2020, 2, 3),
    body:
        'A provider that merges multiple providers into a single linear widget tree. It is used to improve readability and reduce boilerplate code of having to nest multiple layers of providers.',
  ),
];
