import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold (
        body: Column (
          children: <Widget>[
            /*Container(
              child: Text("Hello World", style: TextStyle(fontSize: 40),),
              padding: EdgeInsets.all(0),
              color: Colors.pinkAccent,
              /*decoration: BoxDecoration (
            shape: BoxShape.circle,
            color: Colors.blue
          ),*/
              alignment: Alignment.center,
              width: 300,
              height: 100,
              margin: EdgeInsets.all(30.0),
              transform: Matrix4.rotationZ(0.05),
            ),*/

           /* ClipOval(
              child: Image.network(
                'https://avatars1.githubusercontent.com/u/1491686?s=460&v=4',
              ),
            ),*/
           //https://api.flutter.dev/flutter/material/CircleAvatar-class.html
           CircleAvatar(
             backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/1491686?s=460&v=4'),
             radius: 100,
           )
          ],
        )


      )
    );
  }
}