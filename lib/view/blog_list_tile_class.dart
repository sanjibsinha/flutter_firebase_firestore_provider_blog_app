import 'package:flutter/material.dart';

import '../model/bog_post.dart';
import 'blog_page.dart';

class BlogListTileClass extends StatelessWidget {
  const BlogListTileClass({
    Key? key,
    required this.post,
  }) : super(key: key);
  final BlogPost post;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        InkWell(
          child: Text(
            post.title!,
            style: TextStyle(color: Colors.blueAccent.shade700),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return BlogPage(post: post);
              },
            ));
          },
        ),
        const SizedBox(height: 10),
        SelectableText(
          post.date,
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
