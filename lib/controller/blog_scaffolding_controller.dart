import 'package:flutter/material.dart';

class BlogScaffold extends StatelessWidget {
  final List<Widget> children;

  const BlogScaffold({
    Key? key,
    required this.children,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 600,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: children,
          ),
        ),
      ),
    );
  }
}
