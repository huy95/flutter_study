import 'package:flutter/material.dart';

class buttonCustom extends StatelessWidget {
  final String firstOption, secondOption;
  buttonCustom({this.firstOption, this.secondOption});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // initialData: firstOption,
      initialData: secondOption,
      builder: (context, snapshot){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomRadioButton(
              text: firstOption,
              isCurrentAction: isEqual(snapshot.data, firstOption),
            ),
             CustomRadioButton(
              text: secondOption,
              isCurrentAction: isEqual(snapshot.data, secondOption),
            ),
          ],
        );
      },
    );
  }
  bool isEqual(String snapshotValue, String radioButtonText){
    return snapshotValue == radioButtonText;
  }
}



class CustomRadioButton extends StatelessWidget {
  final String text;
  final bool isCurrentAction;
  CustomRadioButton({this.text, this.isCurrentAction});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isCurrentAction ? 4.0:0,
      borderRadius: isCurrentAction ? BorderRadius.all(Radius.circular(20.0)): null,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(text.toUpperCase(),
        style: isCurrentAction ? 
        TextStyle(color: Colors.white, fontSize: 18):
        TextStyle(color: Colors.black, fontSize: 18)
        ),
      ),
      color: isCurrentAction ? Color(0xFF3F47F4): Colors.white,
    );
  }
}