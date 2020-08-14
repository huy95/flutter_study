import 'package:flutter/material.dart';
import 'button.dart';
import 'package:bt2_animation_qr_hero/data/ticket.dart';
import 'placeTicketPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Ticket ticket = Ticket();
    ticket.id = "1";
   ticket.sourceStation = "LHR";
  ticket.destinationStation = "London";
  ticket.sourceCity = "15:00";
  ticket.destinationCity = "SXF";
  ticket.departureTime = "New York";
  ticket.arrivalTime = "07:00";
  ticket.terminal = "12";
  ticket.game = "F62" ;
  ticket.boaringTime = "14:30";
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Plane Ticket', style: TextStyle(color: Colors.black, fontSize: 30),),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children : <Widget>[
            SizedBox(height: 10),
            buttonCustom(firstOption: "not Used", secondOption: "Already Used",),
            SizedBox(height: 100),
           placeTicketPage(),
          ]
        ) ,

      ),
    );
  }
}
// Widget threeLabel (String stationName, cityName, time) => Column(
//     children: <Widget>[
//         Text(stationName.toUpperCase(), style: TextStyle(fontSize: 12, color: Colors.white)),
//         SizedBox(height: 2),
//         Text(cityName, style: TextStyle(fontSize: 12, color: Colors.white)),
//         SizedBox(height: 2),
//         Text(time, style: TextStyle(fontSize: 12, color: Colors.white)),
//       ],
//   );

// class underPad extends StatelessWidget {
//   final String terminal, game, boaring;
//   underPad(this.terminal, this.game, this.boaring);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//        buildDetail("terminal", this.terminal),
//        Spacer(),
//        buildDetail("Game", this.game),
//        Spacer(),
//        buildDetail("boarding", this.boaring)
//       ],
//     );
//   }

//   Widget buildDetail(String label, String value) => Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Text(label.toUpperCase(), style: TextStyle(fontSize: 10, color: Colors.white)),
//       Text(value, style: TextStyle(fontSize: 10, color: Colors.white))
//     ],
//   );
// }