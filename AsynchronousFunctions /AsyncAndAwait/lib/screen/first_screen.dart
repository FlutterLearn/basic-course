import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  fetchData() async {
    http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/posts/2');
    print("Response status: ${response.statusCode}");
    if (response.statusCode == 404) {
      return 'Error';
    } else {
      return response.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    onClickFunc() async {
      dynamic data = await fetchData();
      print("Inside onClick");
      if (data != 'Error') {
        print('recived from fetchData $data');
        return 'Got data';
      } else {
        print('recived from fetchData $data');
        return 'No data Found';
      }
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('async and await'),
        backgroundColor: Colors.brown,
      ),
      body: new Center(
        child: new FlatButton(
            child: new Text('Click to use async and await'),
            onPressed: () {
              print("Before the click function");
              onClickFunc();
              print("After the click function");
            }),
      ),
    );
  }
}
