import 'package:flutter/material.dart';
import 'package:next_page_screen/main_page.dart';
 
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("main Page")),
        body: Center(
          child: RaisedButton(
            child: Text("Login"),
            onPressed: (){
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context){
                  return MainPage();
                },),
                );
            },),
    ),
    );
  }
}