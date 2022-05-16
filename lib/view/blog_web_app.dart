import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../model/bog_post.dart';
import '../model/user.dart';
import 'blog_home_page.dart';
import '../model/custom_theme.dart';

class BlogWebApp extends StatelessWidget {
  const BlogWebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<List<BlogPost>>(create: (context) => blogPosts),
        Provider<User>(
          create: (context) => User(
            name: 'Angel\'s Blog',
            profilePicture:
                'https://cdn.pixabay.com/photo/2018/03/24/00/36/girl-3255402_960_720.png',
          ),
        ),
      ],
      child: MaterialApp(

        title: 'Angel\'s Blog',
        theme: theme,

        home: const BlogHomePage(),
      ),
    );
  }
}



