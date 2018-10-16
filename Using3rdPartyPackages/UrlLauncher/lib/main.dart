import 'package:flutter/material.dart';
import 'package:urllauncher/screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'url_launcher_app',
      home: HomeScreen(),
    );
  }
}
