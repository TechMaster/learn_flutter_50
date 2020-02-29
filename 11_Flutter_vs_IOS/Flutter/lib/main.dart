import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:math';

void main() => runApp(MyApp());

const chars = "abcdefghijklmnopqrstuvwxyz0123456789";

String randomString(int strlen) {
  Random rnd = new Random(new DateTime.now().millisecondsSinceEpoch);
  String result = "";
  for (var i = 0; i < strlen; i++) {
    result += chars[rnd.nextInt(chars.length)];
  }
  return result;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _myText = "Hello World";
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  setState(() {
                    _myText = randomString(5);
                  });
                },
                child: Text(
                  "Change Text",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(height: 20),
              Text(_myText, style: TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}