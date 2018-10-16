import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Alert Dialog title"),
              content: Text("Alert Dialog body"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog Demo"),
        ),
        body: Center(
          child: InkWell(
            onTap: () => _showDialog(),
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "AlertBox",
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
        ));
  }
}
