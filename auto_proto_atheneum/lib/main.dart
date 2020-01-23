import 'package:auto_proto_atheneum/Screens/homescr.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auto Atheneum",
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.grey[900],
        canvasColor: Colors.grey[900],
      ),
      home: HomeScreen(),
    );
  }
}
