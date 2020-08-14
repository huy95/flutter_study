import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
Color mainColor = Color(0xFF652A78);
Color redColor = Color(0xFFDE3c10);
Color purpleColor = Color(0xFF8132AD);
Color cyan = Colors.cyan[300];
Color orange = Colors.orangeAccent[200];
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Paint'),
        ),
        body: CustomPaint(
          painter: myCustomScreen(),
          child: Container(
            // height: 500,
            // color: mainColor,
          ),
        ),
      ),
    );
  }
}
class myCustomScreen extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Paint paint = Paint();
    
    Path mainPath = Path();
    mainPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height*0.6),);
    paint.color = mainColor;
    canvas.drawPath(mainPath, paint);


    Path purplePath = Path();
    purplePath.lineTo(size.width *0.25,  0);
    purplePath.quadraticBezierTo(size.width*0.15, size.height * .25, 0, size.height * 0.25);
    // purplePath.lineTo(0, size.height * 0.1);
    // purplePath.quadraticBezierTo(size.width*0.25, size.height * .3, size.width *0.2, 0);
    purplePath.close();
    paint.color = purpleColor;
    canvas.drawPath(purplePath, paint);

    Path redPath = Path();
    redPath.moveTo(size.width , size.height * 0.2);
    redPath.quadraticBezierTo(size.width * .5, size.height *0.45, size.width*0.2 , size.height*0.6,);
 
    redPath.lineTo(0, size.height*0.4);
    redPath.quadraticBezierTo(size.width * 0.4, size.height *0.3, size.width*0.8, 0,);
    redPath.lineTo(size.width , 0);
    redPath.close();
    paint.color = redColor;
    canvas.drawPath(redPath, paint);

    Path oringaPath = Path();
    oringaPath.moveTo(0, size.height * 0.35); 
    oringaPath.quadraticBezierTo(0, size.height * 0.35, size.width * 0.3, size.height * 0.6);
    oringaPath.lineTo(0, size.height * 0.6);
    oringaPath.close();
    paint.color = orange;
    canvas.drawPath(oringaPath, paint);


    Path trianglePath = Path();
    trianglePath.lineTo(size.width * 0.1, 0.0);
    trianglePath.lineTo(0, size.height *0.15);
    trianglePath.close();
    paint.color = cyan;
    canvas.drawPath(trianglePath, paint);
    

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return oldDelegate != this;
  }
}