import 'package:flutter/material.dart';
import './ui/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var title = "Gestures";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: new Home(title: title),
    );
  }
}

