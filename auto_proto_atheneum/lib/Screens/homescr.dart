import 'package:auto_proto_atheneum/Screens/hometab.dart';
import 'package:auto_proto_atheneum/widgets/appbar.dart';
import 'package:auto_proto_atheneum/widgets/bottomnav.dart';
import 'package:auto_proto_atheneum/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text(
        "Auto Atheneum",
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      appBar: appbar,
      drawer: NavDrawer(),
      bottomNavigationBar: BottomNav(),
      body: HomeTab(),
    );
  }
}
