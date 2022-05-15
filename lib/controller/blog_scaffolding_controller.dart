import 'package:flutter/material.dart';

class BlogScaffoldingControl extends StatelessWidget {
  final List<Widget> children;

  const BlogScaffoldingControl({Key? key, required this.children})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 612,
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
