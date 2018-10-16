import 'dart:async';

import 'package:flutter/material.dart';
import 'package:remotedata/models/new_item_class.dart';
import '../services/news_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var stories = List<NewsItem>();
  @override
  void initState() {
    super.initState();
    getNewsList();
  }

  getNewsList() async {
    final newsList = await getHotNewsIds()
        .then((ids) => ids.take(15).map((id) async => await getNewsItem(id)));
    print(newsList);
    List<NewsItem> newsitems = await Future.wait(newsList);
    setState(() {
      this.stories.addAll(newsitems);
    });
  }

  browser(String url) async {
    await launchURL(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FlutterLearn HackerNews"),
          elevation: 0.7,
        ),
        body: ListView.builder(
          itemCount: stories.length,
          itemBuilder: (context, index) {
            final item = stories[index];
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              onTap: () {
                browser(item.url);
              },
            );
          },
        ));
  }
}
