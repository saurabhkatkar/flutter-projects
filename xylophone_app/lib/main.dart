import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playAudio(num);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.purple),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.teal),
              buildKey(4, Colors.green),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
