import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(        
        body: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network("https://images.pexels.com/photos/3767403/pexels-photo-3767403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              SizedBox(height: 20,),
              Text("Romantic Couples", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),),
              SizedBox(height: 20,),
            /*  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[                
                CustomPaint(painter: DrawCircle(Colors.grey[500], 10)),
                SizedBox(width: 30),
                CustomPaint(painter: DrawCircle(Colors.black87, 10)),
                SizedBox(width: 30),
                CustomPaint(painter: DrawCircle(Colors.grey[500], 10)),
                SizedBox(width: 30),
                CustomPaint(painter: DrawCircle(Colors.grey[500], 10))
              ],)*/
              DotArray(6, 2)
            ],
          ),
        ))

      ),
    );
  }
}
class DotArray extends StatelessWidget {
  final int num;
  final int selectIndex;
  const DotArray(this.num, this.selectIndex);

  @override
  Widget build(BuildContext context) {
    var childrend = <Widget>[];
    for (var i = 0; i < num; i++) {
      childrend.add(CustomPaint(painter: DrawCircle(i==selectIndex ? Colors.black87:Colors.grey[500], 8)));
      if (i < num-1) {
        childrend.add(SizedBox(width: 30));
      }
    }
    return Container(
      child: Row(children: childrend,
      mainAxisAlignment: MainAxisAlignment.center,),
    );
  }
}

class DrawCircle extends CustomPainter {
  Paint _paint;
  Color color;
  double radius;
  DrawCircle(Color color, double radius) {
    this.color = color;
    this.radius = radius;
    _paint = Paint()
      ..color = color      
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0,0), this.radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}