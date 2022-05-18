import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'first_app.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = Provider.of<ClassTitle>(context);
    final name = Provider.of<String>(context);
    final age = Provider.of<int>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text.rich(
              TextSpan(
                text: 'Your name is ',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                children: <InlineSpan>[
                  WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 100),
                      child: Text(
                        name,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  const TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Your age is $age',
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
