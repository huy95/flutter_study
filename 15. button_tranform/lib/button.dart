import 'package:flutter/material.dart';
 
class ColorButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData icontest;
  ColorButton(this.mainColor, this.secondColor, this.icontest);
  @override
  _ColorButtonState createState() => _ColorButtonState(mainColor, secondColor, icontest);
}

class _ColorButtonState extends State<ColorButton> {
  Color mainColor1, secondColor1;
  bool isPress = false;
  IconData icontest1;
  _ColorButtonState(this.mainColor1, this.secondColor1, this.icontest1);
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
          onTap: (){
            setState(() {
              isPress = !isPress;
            });
          },
          onTapCancel: (){
            setState(() {
              isPress = !isPress;
            });
          },
          
          child: Material(
          elevation: (isPress)? 20: 100,
          borderRadius: BorderRadius.circular(15),
            child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
              child: Stack(
             children: <Widget>[
               SizedBox(
                 width: 50,
                 height: 50,
                 child: Material(
                   borderRadius: BorderRadius.circular(15),
                   color: (isPress) ? secondColor1: mainColor1,
                   child: Icon(icontest1, color: Colors.blueGrey),
                 ),
               ),
               Transform.translate(
                 offset: Offset(30,30),
                 child: SizedBox(
                   width: 50,
                   height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.withOpacity(0.5)
                    ),
                 ),
               ),
                Transform.translate(
                 offset: Offset(30,-30),
                 child: SizedBox(
                   width: 50,
                   height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.withOpacity(0.5)
                    ),
                 ),
               ),
                Transform.translate(
                 offset: Offset(-30,30),
                 child: SizedBox(
                   width: 50,
                   height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.withOpacity(0.5)
                    ),
                 ),
               ),
                Transform.translate(
                 offset: Offset(-30,-30),
                 child: SizedBox(
                   width: 50,
                   height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.withOpacity(0.5)
                    ),
                 ),
               ),
             ],
          ),
        ),
      ),
    );
  } 
}
// class test1 extends StatelessWidget {
//   final int xOffset, yOffset;
//   test1(this.xOffset, this.yOffset);

//   @override
//   Widget build(BuildContext context) {
//       int xOffset, yOffset;
//        return Container(
//             child: Transform.translate(
//              offset: Offset(xOffset, yOffset),
//              child: SizedBox(
//                width: 50,
//                height: 50,
//                 child: Material(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.blue.withOpacity(0.5)
//                 ),
//              ),
//          ),
//           );
//   }
// }