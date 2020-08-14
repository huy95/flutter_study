import 'package:flutter/material.dart';
import 'button.dart';
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 1),
              ColorButton(Colors.red, Colors.black, Icons.adb),
              Spacer(flex: 1),
              ColorButton(Colors.green, Colors.blueGrey, Icons.add_alarm),
              Spacer(flex: 1),
              ColorButton(Colors.brown, Colors.yellow, Icons.add_comment),
              Spacer(flex: 1),
              ColorButton(Colors.blue, Colors.purple, Icons.add_circle),
              Spacer(flex: 1),
            ]
          )
        ),
      ),
    );
  }
}