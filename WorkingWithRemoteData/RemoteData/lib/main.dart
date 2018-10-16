import 'package:flutter/material.dart';
import 'package:remotedata/screens/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http_package',
      home: HomeScreen(),
    );
  }
}
