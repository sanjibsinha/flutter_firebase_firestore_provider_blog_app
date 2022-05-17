import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
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
                      child: const TextField(),
                    ),
                  ),
                  const TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 20.0,
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
