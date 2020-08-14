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
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left:5,bottom:5,top:5),
                        color: Colors.red,
                        ),),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue,
                    ),),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right:5,bottom:5,top:5),
                        color: Colors.grey,
                    ),),

                  ],
                ),
                ),
              Flexible(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex:2, child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.blue),),
                    Flexible(flex:1, 
                    child: Container(
                      margin: EdgeInsets.only(right:5,bottom:5,top:5),
                      color: Colors.red),)
                    
                  ],
                ),
                ),
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.red),
                ),
            ],
            
          ),
        ),
      ),
    );
  }
}