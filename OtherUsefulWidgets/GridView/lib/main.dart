import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Center(
              child: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    border: Border.all(
                      width: 1.0,
                    )),
                child: Text(
                  'Item $index',
                  style: TextStyle(fontSize: 20.0),
                ),
                alignment: Alignment(0.0, 0.0),
              ),
            );
          })),
    );
  }
}
