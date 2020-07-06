import 'package:flutter/material.dart';
import 'package:vapee/views/home_page.dart';

class Vapee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
