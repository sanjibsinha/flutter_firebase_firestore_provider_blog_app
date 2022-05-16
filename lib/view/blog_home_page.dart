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
    return BlogScaffoldingControl(
      children: [
        ConstrainedControllerCentre(
          child: CircleAvatar(
            backgroundImage: NetworkImage(user.profilePicture),

            radius: 70.0,
          ),
        ),
        const SizedBox(height: 20.0),

        ConstrainedControllerCentre(
          child: SelectableText(
            user.name,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        const SizedBox(height: 40.0),
        SelectableText(

          'Hello, my name is Angel. I love peace. What about you?',

          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 40.0),
        SelectableText(

          'Angel\'s Blog-Peace',

          style: Theme.of(context).textTheme.headline2,
        ),
        for (var post in posts) BlogListTileClass(post: post),
      ],
    );
  }
}
