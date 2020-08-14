import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Textfield all'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children:<Widget>[
                Textfield1(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Textfield1 extends StatefulWidget {
  

  @override
  _Textfield1State createState() => _Textfield1State();
}

class _Textfield1State extends State<Textfield1> {
  TextEditingController controller1 = TextEditingController(text: "");
  var con1 = "" ;
  var con2= "";
  final con1con = new TextEditingController();
  final con2con = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 100,right:20,left:20),
       child: Column(
         children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "input<12"),
            obscureText: true,//an pass
            maxLength: 12, // dai toei da
            onChanged: (value){
              setState(() {
              });
            }, controller: controller1,
          ),
          Text(controller1.text),
          SizedBox(height: 30,),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.adb),//icon ben ngoai
              prefixIcon: Icon(Icons.person),// icon ben trong
              labelText: "enter Phone",
              prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              border:  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
            keyboardType: TextInputType.number,
            onChanged: (value){
            }, controller: con1con,
          ),

          RaisedButton(
            child: Text("check setState"),
            onPressed: (){
              setState(() {
                con1 = con1con.text;
              });
            }
            ),
          Text(" setState button: $con1"),

          SizedBox(height: 30,),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.lightBlue[50],
              filled: true,
              prefixText: "Email:  ",
              hintText: "enter Email",
              
              hintStyle: TextStyle(fontSize: 10),
              prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              border:  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value1){
              setState(() {
              });
            }, controller: con2con,
          ),
          Text(con2con.text),
         ],
       ),
    );
  }
}