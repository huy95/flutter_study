import 'dart:ui';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Font Features'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Text("test flont features (default)", style: TextStyle(fontSize: 20),),
                Text("test1 flont features", style: TextStyle(fontSize: 20,
                fontFeatures: [
                  FontFeature.enable("smcp"),
                  FontFeature.enable("frac")
                ]),),
                Text("test2 2019/2020 flont features", style: TextStyle(fontSize: 20,
                fontFeatures: [
                  FontFeature.enable("smcp"),
                  FontFeature.enable("frac")
                ]),),
                Text("test3 2020 flont features(oldStyle)", style: TextStyle(fontSize: 20,
                fontFamily: "Cardo",
                fontFeatures: [
                  FontFeature.oldstyleFigures()
                ]),),
                Container(
                  child: ClipPath(
                    clipper: MyClipper(),
                    child: Image(
                      width: 300,
                      image: NetworkImage("https://thuthuatnhanh.com/wp-content/uploads/2019/10/hinh-anh-gai-xinh-ha-noi.jpg"),),
                  ) ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width / 2, size.height * 0.5 , size.width,  0);
    path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(size.width / 2, size.height * 0.5 , size.width,  0);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}