import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text("Auto Atheneum",textAlign: TextAlign.center,),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search),onPressed: (){print("appbar");},)
      ],
      
    );
  }
}