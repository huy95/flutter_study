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
          child: Column(
            children: <Widget>[
              textRow(),
              SizedBox(height: 50,),
              spacerRow()
            ],
          ),

        ),
      ),
    );
  }
}
class textRow extends StatelessWidget {
  const textRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 20,
                  width: 80,
                  color: Colors.red,
                  child: Text("check"),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 80,
                        color: Colors.blue,
                        child: Text("check 1"),
                          ),
                          SizedBox(width:20),
                          Container(
                        height: 20,
                        width: 80,
                        color: Colors.green,
                        child: Text("check 2"),
                ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
class spacerRow extends StatelessWidget {
  const spacerRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Spacer(flex:1),
          Container(
                  height: 40,
                  width: 80,
                  color: Colors.red,
                  child: Text("check"),
          ),
          Spacer(flex:2),
          Container(
                  height: 40,
                  width: 80,
                  color: Colors.red,
                  child: Text("check"),
          ),
          Spacer(flex:3),
          Container(
                  height: 40,
                  width: 80,
                  color: Colors.red,
                  child: Text("check"),
          ),
          SizedBox(width: 20,),
          Container(
                  height: 40,
                  width: 80,
                  color: Colors.blue,
                  child: Text("check"),
          ),
        ],
      ),
    );
  }
}