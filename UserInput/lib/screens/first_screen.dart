import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final firstName;
  final lastName;
  FirstScreen({this.firstName, this.lastName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              firstName,
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              lastName,
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
    );
  }
}
