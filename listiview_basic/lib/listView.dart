import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listiview_basic/flower.dart';
import 'data.dart';


class ListViewEX extends StatefulWidget {
  ListViewEX({Key key}) : super(key: key);

  @override
  _ListViewEXState createState() => _ListViewEXState();
}

class _ListViewEXState extends State<ListViewEX> {
  List<Container> _buildListItemFromFlowers(){
    int index = 0;
    return flowers.map((flowers) {
      var container = Container(
        decoration: index % 2 ==0 ?
        new BoxDecoration(
          color: const Color(0xFF7ec0ee),
        ): 
        new BoxDecoration(
          color: const Color(0xFFb0e0e6),
        ),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.all(10),
              height: 70,
              width: 70,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: new DecorationImage(
                fit:  BoxFit.cover,
                image: NetworkImage(flowers.imageURL),
                ),) 

            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: new Text(
                    flowers.flowerName,
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: new Text(
                    flowers.description,
                    style: TextStyle(
                      fontSize: 12
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
  
    return Container(
       child: new ListView(
         children:
           _buildListItemFromFlowers(),
         
       ),
    );
  }
}