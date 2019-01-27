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
      body: Container(
    child: Hero(
      tag: 'hero',
      child: Image.asset(widget.dir,
       fit: BoxFit.cover),
      /* DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.dir),
            fit: BoxFit.fill
          )
        ),
      ),*/
    ),
      )
    );
    
  }
}
