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
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             RaisedButton(
               child: Text("raise Button"),
               shape: StadiumBorder(),
               onPressed: (){}),
               mybutton1(),
               mybutton2(),
               mybutton3(),
               
           ],
          ),
        ),
      ),
    );
  }
// sd : metarial
  Widget mybutton2(){ 
    return Container( // nut nhan 2
                  width: 150,
                  height: 40,
                 child: Material(
                   borderRadius: BorderRadius.circular(20),// bo khi giao dien
                   elevation: 20,
                   color: Colors.green,
                   child: InkWell(
                     splashColor: Colors.amber,
                     borderRadius: BorderRadius.circular(20),// bo khi nhan vao
                      onTap: (){},
                      child: Center(
                         child: Text("my button 2",
                         style: TextStyle(color: Colors.white),
                         ),
                       ), 
                   ),
                 ),
    );
  }
  Widget mybutton3(){
    return Material(
                child: Container(
                  height: 50,
                  width: 200,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                    colors: [Colors.purple, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 5
                      ),
                    ]
                 ),
                 child: InkWell(
                     splashColor: Colors.amber,
                     borderRadius: BorderRadius.circular(20),// bo khi nhan vao
                      onTap: (){},
                      child: Center(
                         child: Text("my button 3",
                         style: TextStyle(color: Colors.white),
                         ),
                       ), 
                   ),
                ),
              );
  }
  Widget mybutton1(){
    return Material( // them material de do bong elevation - borderRadius - inkWell
                borderRadius: BorderRadius.circular(20),//bo khung chua container
                elevation: 20, // do bong
                child: Container(
                  width: 150,
                  height: 40,
                 child: Material(
                   borderRadius: BorderRadius.circular(20),// bo khi giao dien
                   color: Colors.red,
                   child: InkWell(
                     splashColor: Colors.amber,
                     borderRadius: BorderRadius.circular(20),// bo khi nhan vao
                      onTap: (){},
                      child: Center(
                         child: Text("my button",
                         style: TextStyle(color: Colors.white),
                         ),
                       ), 
                   ),
                 ),
                ),
              );
  }
}
