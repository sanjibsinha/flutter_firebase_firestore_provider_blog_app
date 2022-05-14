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
          width: 612,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ConstrainedControllerCentre(
                child: CircleAvatar(
                  radius: 72,
                  backgroundImage: NetworkImage(
                    'https://i.ibb.co/ZKkSW4H/profile-image.png',
                  ),
                ),
              ),
              const SizedBox(height: 18),
              ConstrainedControllerCentre(
                child: SelectableText(
                  'Flutter Dev\'s blog',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              const SizedBox(height: 40),
              SelectableText(
                'Hello, I’m a human. I’m a Flutter developer and an avid human. Occasionally, I nap.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 40),
              SelectableText(
                'Blog',
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
