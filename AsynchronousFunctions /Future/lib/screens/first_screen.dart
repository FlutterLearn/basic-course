import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class FirstScreen extends StatelessWidget {
  Future<dynamic> fetchData() {
    Future<http.Response> response =
        http.get('https://jsonplaceholder.typicode.com/posts/2');

    return response.then((response) {
      print("Response status: ${response.statusCode}");

      if (response.statusCode == 404) {
        return 'Error';
      } else {
        return response.body;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    onClickFunc() {
      Future<dynamic> success = Future(fetchData);
      success.then((data) {
        if (data != 'Sorry') {
          print(data);
          print('Recived from fetchData $data');
        } else {
          print('Recived from fetchData $data');
        }
      });
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Future'),
        backgroundColor: Colors.brown,
      ),
      body: new Center(
        child: new FlatButton(
            child: new Text('Click to use Future'),
            onPressed: () {
              onClickFunc();
            }),
      ),
    );
  }
}
