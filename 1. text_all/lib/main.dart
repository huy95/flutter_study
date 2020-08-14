import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: text1()
        ),
      ),
    );
  }
}
class text1 extends StatelessWidget {
  const text1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // cross la doc
        children: <Widget>[
          text2(),
          SizedBox(height: 20,),
          text3(),     
          SizedBox(height: 20,),
          text5(),
        ],
      ),
    );
  }
}
class text2 extends StatelessWidget {
  const text2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,//main: ngang
        children: <Widget>[
          Container(child: text21(),),
          SizedBox(width: 30,),
          Container(child: text22(),)
        ],
      ),
    );
  }
}
class text21 extends StatelessWidget {
  const text21({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.yellow,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,//main: ngang
        children: <Widget>[
          Text("Test21 Row", style: TextStyle(fontSize: 20, color: Colors.red,),),
          SizedBox(width: 20,),
          Text("Test22 Row", style: TextStyle(fontSize: 20, color: Colors.red,),),
          SizedBox(width: 20,),
          Text("Test23 Row", style: TextStyle(fontSize: 20, color: Colors.red, ),),
          SizedBox(width: 20,),
          Text("Test24 Row", style: TextStyle(fontSize: 20, color: Colors.red,),),
        ],
      ),
    );
  }
}
class text22 extends StatelessWidget {
  const text22({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.yellow,
      child: Wrap(
        alignment: WrapAlignment.center,
         children: <Widget>[
          Text("Test25 Wrap", style: TextStyle(fontSize: 20, color: Colors.red),),
          SizedBox(width: 20,),
          Text("Test26 Wrap", style: TextStyle(fontSize: 20, color: Colors.red),),
          SizedBox(width: 20,),
          Text("Test27 Wrap", style: TextStyle(fontSize: 20, color: Colors.red),),
          SizedBox(width: 20,),
          Text("Test28 Wrap", style: TextStyle(fontSize: 20, color: Colors.red),),
        ],
      ),
    );
  }
}

class text3 extends StatelessWidget {

  const text3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container( 
            height: 200,
            width: 200,
            color: Colors.yellow,
              child: Align(
        alignment: Alignment.topLeft,
        child: Text('''Hạt gạo làng ta
Có vị phù sa
Của sông Kinh Thầy
Có hương sen thơm
Trong hồ nước đầy
Có lời mẹ hát
Ngọt bùi đắng cay...''', style: TextStyle(fontSize: 20, color: Colors.red),)
           ),
          ),
          SizedBox(width: 20),
          text4(),
        ],
      ), 
      );
  }
}
class text4 extends StatelessWidget {

  const text4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.yellow,
      child: SelectableText(
        '''Hạt gạo làng ta
Có vị phù sa
Của sông Kinh Thầy
Có hương sen thơm
Trong hồ nước đầy
Có lời mẹ hát
Ngọt bùi đắng cay...''',
      style: TextStyle(fontSize: 20),
      showCursor: true,
      cursorWidth: 5,
      cursorColor: Colors.red,
      ),
      );
  }
}
class text5 extends StatelessWidget {

  const text5({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      height: 300,
      width: 300,
      color: Colors.yellow,
      child: RichText(text: 
      TextSpan(
        style: TextStyle(
        fontSize: 30, color: Colors.black, height: 1.5),
      children: <TextSpan>[
        TextSpan(
       text: "Học ở Techmaster\n",
        style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
        text: "Ngày nào cũng là ngày vui\n",
        style: TextStyle(fontStyle: FontStyle.italic)),
      TextSpan(
         text: "Thích học thì click vào đây\n",
         style: TextStyle(fontStyle: FontStyle.normal)),
      ],
         ),),
      );
  }
}
