import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  final name,dir;
  BookPage(this.name,this.dir);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name),),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
              child: Hero(
              tag: widget.dir,
              child: Image.asset(widget.dir,
               height: 300.0,width: 400.0,
               ),
               
              /* DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.dir),
                    fit: BoxFit.fill
                  )
                ),
              ),*/
             ),
            
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(widget.name, style: TextStyle(fontSize:20.0,),textDirection: TextDirection.ltr,),
                    Text("genre", style: TextStyle(fontSize:20.0),textDirection: TextDirection.ltr,),
                    Text("Description", style: TextStyle(fontSize:20.0),textDirection: TextDirection.ltr,),
                  ],
                ),
              ),

            ],
          ),
          Card(
            color: Colors.black12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text("Review :",style: TextStyle(fontSize: 20.0,color: Colors.white),),),
          )
        ],
      )
    );
    
  }
}
