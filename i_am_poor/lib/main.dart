import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Center(
            child: Text('I Am Poor'),
          ),
        ),
        body: Center(
          child: Image.asset('images/Design.png'),
        ),
      ),
    ));
