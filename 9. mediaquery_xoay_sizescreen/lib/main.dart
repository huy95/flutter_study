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
        body: SafeArea(
        child: Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
                mediaTest(),
                testNoMediaQuery(),
                testMediaQuery(),
             ],
           ),
        ),
      ),
      ),
    );
  }
}
class mediaTest extends StatelessWidget { // MediaQuery.of khong duoc su dung duoi truc tiep MaterialApp

  const mediaTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: MediaQuery.of(context).size.height/8,
                  color: Colors.red,
                  ),
                Container(
                  width: MediaQuery.of(context).size.width/5,
                  height: MediaQuery.of(context).size.height/8,
                  color: Colors.brown,
                ),
                
              ],
            ),
       );
  }
 
}
class testMediaQuery extends StatelessWidget { // ko dung khi quay man hinh ko dc
  const testMediaQuery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (MediaQuery.of(context).orientation == Orientation.portrait) ? 
      Column(
                  children:testMedialDK3(),
       ): Row( 
         children: testMedialDK3(),
       )
    );
  }
   List<Widget> testMedialDK3(){
    return <Widget>[
      Container(color: Colors.red,width: 100,height: 100,),
      Container(color: Colors.blue,width: 100,height: 100,),
      Container(color: Colors.green,width: 100,height: 100,),
    ];
  }
}
class testNoMediaQuery extends StatelessWidget { // ko dung khi quay man hinh ko dc
  const testNoMediaQuery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
                  children:testMedialDK3(),
       )
    );
  }
   List<Widget> testMedialDK3(){
    return <Widget>[
      Container(color: Colors.red,width: 100,height: 100,),
      Container(color: Colors.blue,width: 100,height: 100,),
      Container(color: Colors.green,width: 100,height: 100,),
    ];
  }
}