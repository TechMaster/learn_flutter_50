import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[300],
            body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyWidget("Hello World", "us"),
                    MyWidget("こんにちは世界", "jp"),
                    MyWidget("Chào thế giới", "vn"),
                    MyWidget("Ciao mondo", "it"),
                    MyWidget("你好，世界", "cn"),
                  ],
                ),
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10)
            )
        ));
  }
}

class MyWidget extends StatelessWidget {
  MyWidget(this.title, this.country);

  final String title;
  final String country;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
      Image.asset(
        "images/" + this.country + ".png",
        scale: 3,
      ),
      Container(
        child: Text(title, style: TextStyle(fontSize: 30)),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    ]);
  }
}
