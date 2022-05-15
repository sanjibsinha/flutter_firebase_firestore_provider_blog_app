import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/blog_scaffolding_controller.dart';
import '../controller/constrained_controller.dart';
import '../model/bog_post.dart';
import '../model/user.dart';
import 'blog_list_tile_class.dart';

class BlogHomePage extends StatelessWidget {
  const BlogHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    final posts = Provider.of<List<BlogPost>>(context);
    return BlogScaffold(
      children: [
        ConstrainedControllerCentre(
          child: CircleAvatar(
            backgroundImage: NetworkImage(user.profilePicture),
            radius: 72,
          ),
        ),
        const SizedBox(height: 18),
        ConstrainedControllerCentre(
          child: SelectableText(
            user.name,
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
        for (var post in posts) BlogListTileClass(post: post),
      ],
    );
  }
}
