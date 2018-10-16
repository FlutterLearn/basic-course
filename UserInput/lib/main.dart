import 'package:flutter/material.dart';
import 'package:textfield/screens/first_screen.dart';

void main() => runApp(new MyApp());
String firstName;
String lastName;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    firstName = "";
    lastName = "";
    myController.addListener(_printValue);
  }

  @override
  void dispose() {
    myController.removeListener(_printValue);
    myController.dispose();
    super.dispose();
  }

  _printValue() {
    setState(() {
      lastName = myController.text;
    });
    print("Last text $lastName");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      FirstScreen(firstName: firstName, lastName: lastName))),
          child: Icon(Icons.text_fields),
        ),
        appBar: AppBar(
          title: Text('Text Input'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
              width: 300.0,
              height: 100.0,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1.0,
              )),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Write Something",
                    icon: Icon(Icons.text_fields),
                  ),
                  onChanged: (text) {
                    setState(() {
                      firstName = text;
                    });
                    print("First text $text");
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Write Something",
                    icon: Icon(Icons.text_fields),
                  ),
                  controller: myController,
                ),
              ])),
        ])));
  }
}
