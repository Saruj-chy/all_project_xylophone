import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Xylophone_Screen extends StatelessWidget {
  static String id = "/xylophone";

  const Xylophone_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: XylophoneApp(),
      ),
    );
  }
}



void playsound({int? soundnumber}) {
  final player = new AudioPlayer();
  player.play(AssetSource('note$soundnumber.wav'));
}



class XylophoneApp extends StatelessWidget {
  Expanded playButtonKey({required String name, required int songNum}){
    return Expanded(
      child: TextButton(
        // color: Colors.red,
        onPressed: () {
          playsound(soundnumber: songNum);
        },
        child: Text(
          "Play Sound - $name",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              playButtonKey(name: "Sa", songNum: 1),
              playButtonKey(name: "Re", songNum: 2),
              playButtonKey(name: "Ga", songNum: 3),
              playButtonKey(name: "Ma", songNum: 4),
              playButtonKey(name: "Pa", songNum: 5),
              playButtonKey(name: "Da", songNum: 6),
              playButtonKey(name: "Ni", songNum: 7),
              playButtonKey(name: "Saa", songNum: 1),

            ],
          ),
        ),
      ),
    );
  }
}
