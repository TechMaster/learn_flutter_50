# IOS và Flutter
## IOS
```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeText(_ sender: UIButton) {
        myLabel.text = "Hello Vietnam"
    }
}
```

## Flutter Phiên bản 1

Nhóm FlatButton và Text vào một Stateful Widget là ChangeText

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChangeTheText(),
        ),
      ),
    );
  }
}
class ChangeTheText extends StatefulWidget {
  @override
  _ChangeTheTextState createState() => _ChangeTheTextState();
}

class _ChangeTheTextState extends State<ChangeTheText> {
  String myText = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            onPressed: () {
              setState(() {
                myText = "Hello Daegu";
              });
              print("Tai sao khong chay?");
            },
            child: Text(
              "Change Text",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          SizedBox(height: 20),
          Text(myText, style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}

```

## Flutter Phiên bản 2

Chuyển MyApp thành StatefulWidget
Mỗi lần bấm nút thì generate random string

```dart
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
```