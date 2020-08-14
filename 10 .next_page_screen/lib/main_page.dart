import 'package:flutter/material.dart';
import 'package:next_page_screen/second_page.dart';
 
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("main Page")),
        body: Center(
          child: RaisedButton(
            child: Text("go to second Page"),
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                  return secondPage();
                }
                ));
            },),
    ),
    );
  }
}