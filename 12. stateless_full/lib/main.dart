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
          child: MyApp1(),
        ),
      ),
    );
  }
}
class MyApp1 extends StatefulWidget {
  MyApp1({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp1> {
  int counter = 0;
 void counterCus(){
  setState(() {
    counter = counter +1;
  });
 }
 void counterCus2(){
   setState(() {
     counter = counter -1;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(counter.toString(), style: TextStyle(fontSize: 40)),
             Row(
              //  crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 RaisedButton(
                   child: Text("tang"),
                   onPressed: counterCus,
                   ),
                   RaisedButton(
               child: Text("giam"),
               onPressed: counterCus2,
               ),
               ],
             ),
               
           ],
         ),
      ),
    );
  }
}