import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue,
        ),
        body: MagicPoolPage(),
      ),
    ),
  );
}

class MagicPoolPage extends StatefulWidget {
  @override
  _MagicPoolPageState createState() => _MagicPoolPageState();
}

class _MagicPoolPageState extends State<MagicPoolPage> {
  int magicPoll = 1;
  rollBall() {
    setState(() {
      magicPoll = Random().nextInt(5) + 1; // 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            rollBall();
          },
          child: Image.asset("images/ball$magicPoll.png"),
        ),
      ),
    );
  }
}
