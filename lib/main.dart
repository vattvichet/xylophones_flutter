// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                FlatButton(
                  color: Colors.red,
                  child: Text("Click Here 1"),
                  onPressed: () {
                    playSound(1);
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  child: Text("Click Here 2"),
                  onPressed: () {
                    playSound(2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  child: Text("Click Here 3"),
                  onPressed: () {
                    playSound(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  child: Text("Click Here 4"),
                  onPressed: () {
                    playSound(4);
                  },
                ),
                FlatButton(
                  color: Colors.greenAccent,
                  child: Text("Click Here 5"),
                  onPressed: () {
                    playSound(5);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Text("Click Here 6"),
                  onPressed: () {
                    playSound(6);
                  },
                ),
                FlatButton(
                  color: Colors.purple,
                  child: Text("Click Here 7"),
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
