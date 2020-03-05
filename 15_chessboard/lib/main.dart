import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chess Board'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Cell(Colors.red),
                    Cell(Colors.green),
                    Cell(Colors.blue),
                    Cell(Colors.yellow),
                    Cell(Colors.brown),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Cell(Colors.blue),
                    Cell(Colors.yellow),
                    Cell(Colors.brown),
                    Cell(Colors.red),
                    Cell(Colors.green)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Cell(Colors.red),
                    Cell(Colors.green),
                    Cell(Colors.blue),
                    Cell(Colors.yellow),
                    Cell(Colors.brown),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Cell(Colors.blue),
                    Cell(Colors.yellow),
                    Cell(Colors.brown),
                    Cell(Colors.red),
                    Cell(Colors.green)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Cell(Colors.red),
                    Cell(Colors.green),
                    Cell(Colors.blue),
                    Cell(Colors.yellow),
                    Cell(Colors.brown),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawRect extends CustomPainter {
  Paint _paint;

  DrawRect() {
    _paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & Size.square(60), _paint);
    //canvas.drawRect(Rect.fromLTRB(-50, -50, 100, 100), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class Cell extends StatelessWidget {
  final Color color;
  const Cell(this.color);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          color: this.color,
        ),
      ),
    );
  }
}
