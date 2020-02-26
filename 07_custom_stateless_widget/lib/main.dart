import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MyWidget("Hello World", "us"),
                MyWidget("こんにちは世界", "jp"),
                MyWidget("Chào thế giới", "vn"),
                MyWidget("Ciao mondo", "it"),
                MyWidget("你好，世界", "cn")
              ],
            )
        )
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget(this.title, this.country);

  final String title;
  final String country;

  @override
  Widget build(BuildContext context) {
    return
      Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("images/" + this.country + ".png", scale: 2),
              Text(title, style: TextStyle(fontSize: 30))
            ],
          ),
          padding: EdgeInsets.all(10),
          color: Colors.grey[200],
      );
  }
}
