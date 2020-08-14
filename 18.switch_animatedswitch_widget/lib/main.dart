import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double myPadding = 5;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
         child: Container(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                    child: Row(
                    children: <Widget>[
                     checkStage(Colors.white
                          ),
                     checkStage(Colors.blue
                          ),

                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                    child: Row(
                  children: <Widget>[
                    checkStage(Colors.red
                          ),
                    checkStage(Colors.indigo
                          ),
                  ],
                )
                )
              ]
            ),
           )
        ),
      ),
    );
  }
}

class checkStage extends StatefulWidget {
  Color colorText;
  
  checkStage( this.colorText);

  @override
  _checkStageState createState() => _checkStageState(colorText);
}

class _checkStageState extends State<checkStage> {
  Color colorText1;
  double mypadding = 5;
  bool check = true;
  _checkStageState( this.colorText1);

  @override
  Widget build(BuildContext context) {
    return Flexible(
          flex: 1,
          child: Container(  child: AnimatedPadding(
                    duration: Duration(seconds:1),
                    padding: EdgeInsets.all(mypadding),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          check = !check;
                          print(check);
                          if(check){
                          mypadding = 50;
                          
                          }
                          else{
                            // check != check;
                            mypadding = 5;
                          } 
                        });
                      },
                      child: Container(color: colorText1)
                      )
                  ),
      ),
    );
  }
}

