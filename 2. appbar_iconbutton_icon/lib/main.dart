import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb, color: Colors.white,),
          title: Text("AppBar example", 
          style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings), 
              onPressed: (){}),
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){})

          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
            ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Card(
                  elevation: 20,
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Icon(Icons.exposure),
                        ),
                      Text("Account Box Text card 1")
                    ],
                  ),
                ),
                  buildCard(iconData: Icons.face,text: "Account Box Text card"),
                  buildCard(iconData: Icons.favorite,text: "Account Box Text card" ),
                  buildCard(iconData: Icons.feedback,text: "Account Box Text card"),
                  buildCard(iconData: Icons.filter,text: "Account Box Text card"),
              ],
            )
          ),
        ),
      ),
    );
  }
}
Card buildCard({IconData iconData, String text}){
  return Card(
    elevation: 5,// do bong
    child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Icon(iconData),),
        Text(text),
      ],
    ),
  );
}