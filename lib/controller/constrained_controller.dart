import 'package:flutter/material.dart';

class ConstrainedControllerCentre extends StatelessWidget {
  final Widget child;

  const ConstrainedControllerCentre({Key? key, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, child: Center(child: child));
  }
}
