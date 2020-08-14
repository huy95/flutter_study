import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top:20, bottom: 10, left: 5, right: 10),
            child: Container(
              margin: EdgeInsets.only(top:20, bottom: 10, left: 5, right: 10),
                decoration: BoxDecoration(
                color: Colors.brown, 
                borderRadius: BorderRadiusDirectional.circular(20)
                ),
            ),
        ),
      ),
    ),
    );
  }
}