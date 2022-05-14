import 'package:flutter/material.dart';

class BlogListTileClass extends StatelessWidget {
  const BlogListTileClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        InkWell(
          child: Text(
            'How to get peace?',
            style: TextStyle(color: Colors.blueAccent.shade700),
          ),
          onTap: () {},
        ),
        const SizedBox(height: 10),
        SelectableText(
          'May 14, 2022',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
