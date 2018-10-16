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
        backgroundColor: Colors.black,
        title: Text("Flutter Demo"),
        centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.settings, color: Colors.white),
          tooltip: 'Air it',
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            tooltip: 'Air it',
            onPressed: () {},
          ),
          IconButton(
            icon: new Icon(Icons.email, color: Colors.white),
            tooltip: 'Restitch it',
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 500.0,
              height: 300.0,
              child: Image.network(
                'https://tasteandsee.com/wp-content/uploads/2017/06/Easy-Pimento-Cheese-and-Bacon-Burger-EL-burger-great.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Chesse Burger",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  IconButton(
                    iconSize: 60.0,
                    onPressed: () {
                      print("liked");
                    },
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          print("call");
                        },
                        icon: Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                      ),
                      Text("Call")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          print("Route");
                        },
                        icon: Icon(
                          Icons.directions,
                          color: Colors.blue,
                        ),
                      ),
                      Text("Directions")
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          print("Share");
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                      ),
                      Text("Share")
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
                child: Expanded(
              child: Text(
                '''
When we talk about American fast food, our first impression is a hamburger.With globalization, American fast food has conquered most of the world, 
and eating hamburgers almost represents the American way of life.Whether it is thousands of years of food culture in China, on the shore of India’s Ganges River.
''',
                softWrap: true,
                style: TextStyle(fontSize: 15.0),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
