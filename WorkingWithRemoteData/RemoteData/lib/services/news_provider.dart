import 'dart:async';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:remotedata/models/new_item_class.dart';

Future<List<int>> getHotNewsIds() async {
  var url = "https://hacker-news.firebaseio.com/v0/topstories.json";

  final response = await http.get(url);
  final statusCode = response.statusCode;

  if (statusCode < 200 || statusCode >= 300 || response.body == null) {
    print("Error $statusCode");
    return null;
  }
  print(response.body);
  final List storiesList = json.decode(response.body);
  return storiesList.cast<int>();
}

Future<NewsItem> getNewsItem(int id) async {
  var url = "https://hacker-news.firebaseio.com/v0/item/$id.json";

  final response = await http.get(url);
  final statusCode = response.statusCode;

  if (statusCode < 200 || statusCode >= 300 || response.body == null) {
    print("Error $statusCode");
    return null;
  }
  final Map data = json.decode(response.body);
  print(data);
  final NewsItem item = NewsItem.fromJson(data);
  return item;
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
