import 'package:flutter/material.dart';
import 'file:///mnt/6E8023248022F26F/Projects/flutter/flutter_app/lib/tracking_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TrackingInput(),
    );
  }
}
