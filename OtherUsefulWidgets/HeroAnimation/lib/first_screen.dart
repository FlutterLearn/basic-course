import 'package:flutter/material.dart';
import 'package:hero/photo_hero.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flippers Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.topLeft,
        child: PhotoHero(
          photo: 'assets/avatar.png',
          width: 60.0,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
