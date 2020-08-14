import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('audio Play'),
        ),
        body: Center(
          child: TestAsync(),
        ),
      ),
    );
  }
}
class TestAsync extends StatefulWidget {
  TestAsync({Key key}) : super(key: key);

  @override
  _TestAsyncState createState() => _TestAsyncState();
}

class _TestAsyncState extends State<TestAsync> {
  String derision = "00:00:00";
  AudioPlayer audioplayer;

  _TestAsyncState(){
    audioplayer = AudioPlayer();
    audioplayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        derision = duration.toString();
      });
    });
    audioplayer.setReleaseMode(ReleaseMode.LOOP);
  }
  void playsound(String url) async {
    await audioplayer.play(url);
  }
  void pauseSound() async {
    await audioplayer.pause();
  }

  void stopSound() async {
    await audioplayer.stop();
  }
  void resumeSound() async {
    await audioplayer.resume();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: <Widget>[
         RaisedButton(
           child: Text("Play"),
           onPressed: (){
            //  playsound("https://nhac.vn/album/mot-ban-tinh-ca-nhip-6-8-single-phung-khanh-linh-ab7Ajlq3?st=solpEvM");
            // playsound("https://nhac.vn/album/tinh-cam-the-best-of-quang-dung-quang-dung-abzR1J?st=soMXqpQ");
            playsound("http//23.237.126.42/ost/top-gear-2-sega-genesis/yzcalloe/01_Title%20Theme.mp3");
           }),
         RaisedButton(
           child: Text("pause"),
           onPressed: (){
             pauseSound();
           }),
           RaisedButton(
           child: Text("Stop"),
           onPressed: (){
             stopSound();
           }),
           RaisedButton(
           child: Text("resume"),
           onPressed: (){
             resumeSound();
           }),
           Text(derision, style: TextStyle(fontSize: 16),)
       ],
     ),
    
    );
  }
}