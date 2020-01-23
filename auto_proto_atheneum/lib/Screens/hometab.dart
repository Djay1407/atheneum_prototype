import 'package:auto_proto_atheneum/widgets/bookicon.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20.0,left: 20.0),
          child: Text("SUBJECT 1",style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),)),
        Padding(padding: EdgeInsets.all(10.0),
          child: SizedBox(height: 200.0,width: 150.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
                  return Padding(padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: 100.0,width: 100.0,
                        child: EventGridItem(),
                    ),
                  );}
              ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20.0,left: 20.0),
          child: Text("SUBJECT 1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),)),
        Padding(padding: EdgeInsets.all(10.0),
          child: SizedBox(height: 200.0,width: 150.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
                  return Padding(padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: 100.0,width: 100.0,
                        child: EventGridItem(),
                    ),
                  );}
              ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20.0,left: 20.0),
          child: Text("SUBJECT 1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),)),
        Padding(padding: EdgeInsets.all(10.0),
          child: SizedBox(height: 200.0,width: 150.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context,int index){
                  return Padding(padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: 100.0,width: 100.0,
                        child: EventGridItem(),
                    ),
                  );}
              ),
          ),
        ),
    ],);

  }
}