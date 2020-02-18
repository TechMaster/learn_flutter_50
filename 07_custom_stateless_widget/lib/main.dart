import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyWidget("Hello World", "us"),
              MyWidget("こんにちは世界", "jp"),
              MyWidget("Chào thế giới", "vn"),
              MyWidget("Ciao mondo", "it"),
              MyWidget("你好，世界", "cn"),
            ],
          )
        ),
      ))
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget(this.title, this.country);
  final String title;
  final String country;
  @override
  Widget build(BuildContext context) {
    //return Text(this.title, style: TextStyle(fontSize: 40));
    return Row (
      mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("images/" + this.country +".png", scale: 3,),
          Spacer(),
          Text(this.title, style: TextStyle(fontSize: 40)),
        ]
    );
  }
}


