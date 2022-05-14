import 'package:flutter/material.dart';

import '../controller/constrained_controller.dart';
import 'blog_list_tile_class.dart';

class BlogHomePage extends StatelessWidget {
  const BlogHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 600,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ConstrainedControllerCentre(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2018/03/24/00/36/girl-3255402_960_720.png',
                  ),
                ),
              ),
              const SizedBox(height: 18),
              ConstrainedControllerCentre(
                child: SelectableText(
                  'Angel\'s Blog',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(height: 40),
              SelectableText(
                'Hello, my name is Angel, and I want peace above all. What about you?',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 40),
              SelectableText(
                'Angel',
                style: Theme.of(context).textTheme.headline2,
              ),
              const BlogListTileClass(),
            ],
          ),
        ),
      ),
    );
  }
}
