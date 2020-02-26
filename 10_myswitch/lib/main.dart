import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MySwitch(isOn: false),
                  SizedBox(height: 30),
                  MySwitch(isOn: true)
                ],
              ),
            )));
  }
}

// ignore: must_be_immutable
class MySwitch extends StatefulWidget {
  bool isOn;

  MySwitch({this.isOn});

  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isOn = !widget.isOn;
        });
      },
      child:
      Image.asset("images/switch_" + (widget.isOn ? "on" : "off") + ".png"),
    );
  }
}
