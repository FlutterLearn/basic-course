import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hero/first_screen.dart';
import 'package:hero/photo_hero.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;
    return Scaffold(
      appBar: AppBar(title: Text('Hero App')),
      body: Center(
        child: PhotoHero(
          photo: 'assets/avatar.png',
          width: 180.0,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute<Null>(
                builder: (BuildContext context) => FirstScreen()));
          },
        ),
      ),
    );
  }
}
