import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'dart:async';
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
          child: ChangeNotifierProvider<TimeState>(
            builder: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Consumer<TimeState>(
                  builder:(context,timeState,_) => CustomProgressBar(
                    width: 200, value: timeState.time, totalValue: 100,
                    )),
                SizedBox(height: 20,),

                Consumer<TimeState>(
                  builder: (context, timeStage, _) => RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      "start",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class CustomProgressBar extends StatelessWidget {
    final double width;
    final int value;
    final int totalValue;
    CustomProgressBar({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value/totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.timer, color: Colors.black,),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                 height: 15,
                 width: width * ratio,
                 duration:  Duration(milliseconds: 500),
                 decoration: BoxDecoration(
                   color: Colors.lightGreen,
                   borderRadius: BorderRadius.circular(5),
                 ), 
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TimeState with ChangeNotifier{
  int _time = 15;
  int get time => _time;
  set time(int newTime){
    _time = newTime;
    notifyListeners();
  }
}