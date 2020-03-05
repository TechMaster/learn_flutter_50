import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slide Show'),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network("https://images.pexels.com/photos/3767403/pexels-photo-3767403.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                SizedBox(height: 15,),
                Text("Romantic Couples", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
                SizedBox(height: 15,),
                /*Row(children: <Widget>[
                  CustomPaint(painter: DrawCircle(false)),
                  SizedBox(width: 20),
                  CustomPaint(painter: DrawCircle(false)),
                  SizedBox(width: 20),
                  CustomPaint(painter: DrawCircle(true)),
                  SizedBox(width: 20),
                  CustomPaint(painter: DrawCircle(false)),
                  SizedBox(width: 20),
                  CustomPaint(painter: DrawCircle(false)),

                ], mainAxisAlignment: MainAxisAlignment.center,)*/
                DotArray(7, 0)
              ],
            )
          ),
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  Paint _paint;
  final bool selected;
  DrawCircle(this.selected) {
    _paint = Paint()
      ..color = selected? Colors.black87 : Colors.grey[500]
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
     canvas.drawCircle(Offset(0.0, 0.0), 8, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DotArray extends StatelessWidget {
  final int numDot;
  final int positionSelecteDot;
  const DotArray(this.numDot, this.positionSelecteDot);

  @override
  Widget build(BuildContext context) {
    var dotarray =  <Widget>[];
    for (var i = 0; i < numDot; i++) {
      dotarray.add(CustomPaint(painter: DrawCircle(i==positionSelecteDot)));
      if (i < numDot-1) {
        dotarray.add(SizedBox(width: 20));
      }      
    }

    return Row (children: dotarray, 
    mainAxisAlignment: MainAxisAlignment.center);
  }
}