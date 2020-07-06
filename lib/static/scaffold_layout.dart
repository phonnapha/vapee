import 'package:flutter/material.dart';

class ScaffoldLayout extends StatelessWidget {
  final Widget child;

  const ScaffoldLayout({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      body: SafeArea(
        child: child,
      ),
    );
  }
}
