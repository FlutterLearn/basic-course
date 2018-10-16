//home/index.dart
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  _launchURL() async {
    const url = "https://flutter.io";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  _launchTelephone() async {
    const url = "tel:+1 555 010 999";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  _launchMail() async {
    const url = "mailto:smith@example.org?";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  _launchSMS() async {
    const url = 'sms:5550101234';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterLearn url_launcher"),
        elevation: 0.7,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text('Browser'),
              onPressed: () {
                _launchURL();
              },
            ),
            RaisedButton(
              child: Text('Telephone'),
              onPressed: () {
                _launchTelephone();
              },
            ),
            RaisedButton(
              child: Text('SMS'),
              onPressed: () {
                _launchSMS();
              },
            ),
            RaisedButton(
              child: Text('Mail'),
              onPressed: () {
                _launchMail();
              },
            ),
          ],
        ),
      ),
    );
  }
}
