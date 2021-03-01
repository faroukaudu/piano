import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MySong());

class MySong extends StatefulWidget {
  @override
  _MySongState createState() => _MySongState();
}

void keySound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

Expanded sound({Color col, int pin}) {
  return Expanded(
    child: FlatButton(
      color: col,
      onPressed: () {
        keySound(pin);
      },
      child: null,
    ),
  );
}

class _MySongState extends State<MySong> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              sound(col: Colors.purple, pin: 1),
              sound(col: Colors.brown, pin: 2),
              sound(col: Colors.blue, pin: 3),
              sound(col: Colors.red, pin: 4),
              sound(col: Colors.black, pin: 5),
              sound(col: Colors.yellow, pin: 6),
              sound(col: Colors.green, pin: 7),
            ],
          ),
        ),
      ),
    );
  }
}
