import 'package:flutter/material.dart';

class BlogListTileClass extends StatelessWidget {
  const BlogListTileClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        InkWell(
          child: Text(
            'What is provider',
            style: TextStyle(color: Colors.blueAccent.shade700),
          ),
          onTap: () {},
        ),
        SizedBox(height: 10),
        SelectableText(
          'January 2, 2020',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
