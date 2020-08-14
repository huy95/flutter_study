import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack - Align - SizeBox'),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[ 
                  Flexible(flex:1,child: class1(numberFlex1: 1,numberFlex2: 2,),),
                  Flexible(flex:1, child: class2(numberFlex2: 2,numberFlex1: 1,),)
                ],
              ),
              // SizedBox(height: 100),
              // Container(width: 30,height: 100, color: Colors.blue,),
              Flexible(child: Container(width: 30,height: 100, color: Colors.blue,),),
              Align(
                alignment: Alignment(0,-1),
                child: RaisedButton(
                  child: Text("My stack1"),
                  color: Colors.yellow,
                  onPressed: (){},
                  ),
              ),
              // Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
              listView(),
            ],
          ),
        ),
      ),
    );
  }
}
class class1 extends StatelessWidget {
  final int numberFlex1;
  final int numberFlex2;
  class1({this.numberFlex1, this.numberFlex2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:<Widget>[
          Flexible(flex:numberFlex1,child:Container(color: Colors.grey,) ),
          Flexible(flex:numberFlex2,child: Container(color: Colors.white,)),
        ],
      ),
    );
  }
}
class class2 extends StatelessWidget {
  final int numberFlex1;
  final int numberFlex2;
  class2({this.numberFlex1, this.numberFlex2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        
        children:<Widget>[
          Flexible(flex:numberFlex2,child: Container(color: Colors.white,)),
          Flexible(flex:numberFlex1,child:Container(color: Colors.grey,) ),
        ],
      ),
    );
  }
}
class listView extends StatelessWidget {
  const listView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(100, 300, 30, 0),
      child: ListView(
        children: <Widget>[
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Container(margin: EdgeInsets.all(10),child: Text("check text 1", style: TextStyle(fontSize: 30),)),
          Text("check text 3", style: TextStyle(fontSize: 30),),
          Text("check text 4", style: TextStyle(fontSize: 30),),
          Text("check text 5", style: TextStyle(fontSize: 30),),
          Text("check text 6", style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}