import 'package:flutter/material.dart';
 
class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second App'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              child: Text('back'),
              onPressed: (){
                Navigator.pop(context);
              }),
          ),
        ),
      ),
    );
  }
}