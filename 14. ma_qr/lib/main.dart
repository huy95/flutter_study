import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ma QR'),
        ),
        body: Center(
          child: QrImage( // chon hien thi qr_flutter : ma qr hinh anh
            version: 6, // co the xem them 1s version : https://www.qrcode.com/en/codes/
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.Q,
            size: 300,
            data: "https://www.facebook.com/huy.ma.5454",
          ),
        ),
      ),
    );
  }
}