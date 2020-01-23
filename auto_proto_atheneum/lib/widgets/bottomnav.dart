import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var tabindex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.grey,
       onTap: (int index){
         setState(() {
           tabindex=index;
         });
      },
      currentIndex: tabindex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.label),title: Text("Title")),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions),title: Text("Title")),
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Title")),
        BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Title")),
        BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("Title")),
        
      ],
    );
  }
}