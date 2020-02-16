import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold (
          backgroundColor: Colors.lightGreenAccent,
          appBar: AppBar(title: Text("Demo Stateless Widget")),
          body: Center (
              child: Column (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.favorite, size:100, color: Colors.pinkAccent,),
                  Icon(Icons.access_alarm, size:200),
                  //Icon(Icons.account_box, size:100),
                  Text("Hello World", style: TextStyle(fontSize: 50),)
                ],
              )

          )
        )
    );
  }
}
//Text("Hello World", style: TextStyle(fontSize: 50),)