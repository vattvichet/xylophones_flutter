// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //
  //
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

// //Use {} if we don't want to confuse to pass the value
//   void showName({String greeting, String name}) {
//     print('$greeting $name');
//   }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text("Click Here 1"),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  // void main() {
  //   int step1Result = add(n1: 5, n2: 9);
  //   int step2Result = multiply(step1Result, 5);
  //   double finalResult = step2Result / 3;
  //   print(finalResult);
  // }

  // int add({int n1, int n2}) {
  //   return (n1 + n2);
  // }

  // int multiply(int n1, int n2) {
  //   return (n1 * n2);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                SizedBox(height: 15),
                buildKey(color: Colors.orange, soundNumber: 2),
                SizedBox(height: 15),
                buildKey(color: Colors.yellow, soundNumber: 3),
                SizedBox(height: 15),
                buildKey(color: Colors.green, soundNumber: 4),
                SizedBox(height: 15),
                buildKey(color: Colors.greenAccent, soundNumber: 5),
                SizedBox(height: 15),
                buildKey(color: Colors.blue, soundNumber: 6),
                SizedBox(height: 15),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
