import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int koltukNumarasi=1;

  int tvnumarasi=1;

  int masanumarasi=1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.white,
     appBar: AppBar(
       title: Text("Rasgele Eşya Dizilimi",style: TextStyle(color: Colors.black),),centerTitle: true,backgroundColor: Colors.white,
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //Text en başta olsun diye.
        children: [
          Center
            (child: Text("Aşağıdaki Button ile eviniz için rasgele eşyalar seçilecek ",style: TextStyle(fontSize: 24),)
          ),
          SizedBox(height: 30),
          Expanded(child: Image.asset("assets/koltuk$koltukNumarasi.jpg")),
          Text("Koltuk",style: TextStyle(fontSize: 20),),
          SizedBox(width: 30),
          Expanded(child:Image.asset("assets/tv$tvnumarasi.jpg")),
          Text("Televizyon",style: TextStyle(fontSize: 20),),
          SizedBox(width: 30),
          Expanded(child: Image.asset("assets/yemekmasasi$masanumarasi.jpg")),
          Text("Yemek Masası",style: TextStyle(fontSize: 20),),
          FlatButton(onPressed:() {setState(() {
            koltukNumarasi = Random().nextInt(3)+1;
            tvnumarasi = Random().nextInt(3)+1;
            masanumarasi = Random().nextInt(3)+1;
          });}, child: Text("Butona Tıkla Evin Şenlensin",style: TextStyle(fontSize: 24,color: Colors.red),))
        ],
      ),
     ),
   );
  }
}
