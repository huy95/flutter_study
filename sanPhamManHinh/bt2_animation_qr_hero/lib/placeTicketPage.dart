import 'dart:ffi';
import 'package:bt2_animation_qr_hero/data/ticket.dart';
import 'package:flutter/material.dart';

class placeTicketPage extends StatelessWidget {
  const placeTicketPage({Key key}) : super(key: key);

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
    return Container(
                height: 210,
                width: 400,   // padding: const EdgeInsets.(left: 20, right: 20, top :100, bottom: 200),

               child: Material(
        color: primaryColor,
        elevation: 8.0,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: InkWell(
          onTap: (){
            // Navigator.of(context).push(FadePageRoute())

          },
          child: Container(
            margin: EdgeInsets.only(left: 20,top:50, bottom: 50,right: 150),
            child: Column(
              children: <Widget>[
                // Expanded(
                  // child:
                   Row(
                    children: <Widget>[
                     threeLabel(ticket.sourceStation, ticket.destinationStation, ticket.sourceCity),
                     Spacer(),
                     Icon(Icons.flight_takeoff, color: Colors.white, size: 40.0,),
                     Spacer(),
                     threeLabel(ticket.sourceStation, ticket.destinationStation, ticket.sourceCity),
                    ]
                  ),
                  // ),
                  Spacer(),
                  Container(height: 2, width:200, color: Colors.white),
                  Spacer(),
                  underPad(ticket.terminal,ticket.game,ticket.boaringTime),
              ],
            ),

            
          ),
        ),
      ),
            
    );
  }
}
Widget threeLabel (String stationName, cityName, time) => Column(
    children: <Widget>[
        Text(stationName.toUpperCase(), style: TextStyle(fontSize: 12, color: Colors.white)),
        SizedBox(height: 2),
        Text(cityName, style: TextStyle(fontSize: 12, color: Colors.white)),
        SizedBox(height: 2),
        Text(time, style: TextStyle(fontSize: 12, color: Colors.white)),
      ],
  );

class underPad extends StatelessWidget {
  final String terminal, game, boaring;
  underPad(this.terminal, this.game, this.boaring);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
       buildDetail("terminal", this.terminal),
       Spacer(),
       buildDetail("Game", this.game),
       Spacer(),
       buildDetail("boarding", this.boaring)
      ],
    );
  }

  Widget buildDetail(String label, String value) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(label.toUpperCase(), style: TextStyle(fontSize: 10, color: Colors.white)),
      Text(value, style: TextStyle(fontSize: 10, color: Colors.white))
    ],
  );
}