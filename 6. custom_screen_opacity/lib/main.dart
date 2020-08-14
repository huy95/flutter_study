import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Custom App Basic')),
        ),
        body: Center(
          child: customBasi(),
        ),
      ),
    );
  }
}
class customBasi extends StatelessWidget {
  const customBasi({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var x = MediaQuery.of(context).size.height;
    var y = MediaQuery.of(context).size.width;
    return Material(
      borderRadius: BorderRadius.circular(5),
      elevation: 10,
      child: Container(
        height: x*0.7,
        width: y*0.8,
        color: Colors.white,
         child: Column(
           children: <Widget>[
             Container(height: x*0.35, 
             decoration: BoxDecoration(
              //  color: Colors.brown,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(4),
                 topRight: Radius.circular(4)
                 ),
               image: DecorationImage(

                 image: NetworkImage("https://i.pinimg.com/originals/1f/93/c1/1f93c19676ef2ad80f17ee5c228d8559.png",),
                // image: AssetImage('images/test.png'),
                // image: AssetImage('images/test.png'),
                // image: AssetImage('images/test2.jpeg'),
               fit: BoxFit.fill
               ),
             ),
             ),
             Container(
               margin: EdgeInsets.fromLTRB(20, 50 , 40, 20),
               child: Column(
                 children: <Widget>[
                   Text("Beautiful Sunset at Paddy Field",
                   maxLines: 2,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Color(0xFFF56D5D),
                     fontSize: 25,
                   ),
                   ),
                   SizedBox(height: 20),
                   text1(),
                   SizedBox(height: 10),
                   text2()
                 ],
               ),
             )

           ],
         ),
      ),
    );
  }
  Widget text1(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Posted on ",
        style: TextStyle(color: Colors.brown, fontSize: 12),),
        Text("June 18, 2020",
        style: TextStyle(color: Colors.red, fontSize: 12),),
      ],
    );
  }
  Widget text2(){
    return Row(
      children: <Widget>[
        Spacer(flex: 7,),
        Icon(Icons.thumb_up, size: 18, color: Colors.brown[110],),
        Spacer(flex: 1,),
        Text("99", style: TextStyle(color:Colors.brown[110],fontSize: 14 ),),
        Spacer(flex: 5,),
        Icon(Icons.comment, size: 18, color: Colors.brown[110],),
        Spacer(flex: 1,),
        Text("99", style: TextStyle(color:Colors.brown[110],fontSize: 14 ),),
        Spacer(flex: 5,),

      ],
    );
  }
}