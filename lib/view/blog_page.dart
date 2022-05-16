import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/blog_scaffolding_controller.dart';
import '../controller/constrained_controller.dart';
import '../model/bog_post.dart';
import '../model/user.dart';

class BlogPage extends StatelessWidget {
  final BlogPost post;

  const BlogPage({
    Key? key,
    required this.post,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return BlogScaffoldingControl(
      children: [
        ConstrainedControllerCentre(
          child: Column(
            children: [
              CircleAvatar(

              const SizedBox(height: 20),

                radius: 60.0,
                backgroundImage: NetworkImage(user.profilePicture),
              ),
              const SizedBox(height: 20.0),

              Text(
                user.name,
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ),
        const SizedBox(height: 40.0),
        SelectableText(
          post.title,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 40.0,
              ),
        ),

        const SizedBox(
          height: 20,
        ),

        SelectableText(
          post.date,
          style: Theme.of(context).textTheme.caption,
        ),

        const SizedBox(
          height: 20,
        ),

        SelectableText(post.body),
      ],
    );
  }
}
