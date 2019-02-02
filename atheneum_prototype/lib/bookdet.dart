import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  final name,dir;
  BookPage(this.name,this.dir);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {

  int _rating = 0;

void rate(int rating) {
  //Other actions based on rating such as api calls.
  setState(() {
    _rating = rating;
  });
}
TextEditingController descController = TextEditingController();

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
        color: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
        child: Column(
                 children: <Widget>[ 
                   Text("Rating",style: TextStyle(fontSize: 20.0,color: Colors.white),),
                   
                   Padding(
            padding: EdgeInsets.all(5.0),
                    child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new GestureDetector(
                  child: new Icon(
                    Icons.star,
                    color: _rating >= 1 ? Colors.orange : Colors.grey,
                  ),
                  onTap: () => rate(1),
                ),
                new GestureDetector(
                  child: new Icon(
                    Icons.star,
                    color: _rating >= 2 ? Colors.orange : Colors.grey,
                  ),
                  onTap: () => rate(2),
                ),
                new GestureDetector(
                  child: new Icon(
                    Icons.star,
                    color: _rating >= 3 ? Colors.orange : Colors.grey,
                  ),
                  onTap: () => rate(3),
                ),
                new GestureDetector(
                  child: new Icon(
                    Icons.star,
                    color: _rating >= 4 ? Colors.orange : Colors.grey,
                  ),
                  onTap: () => rate(4),
                ),
                new GestureDetector(
                  child: new Icon(
                    Icons.star,
                    color: _rating >= 5 ? Colors.orange : Colors.grey,
                  ),
                  onTap: () => rate(5),
                )
              ],
            ),
          ),
                  ] ),
      ),
      Padding(padding: EdgeInsets.all(15.0),
            child: TextField(                             //Description Textfield
              controller: descController,
              onChanged: (val){
                  setState(() {
                  debugPrint("changed"); });},
              decoration: InputDecoration(
                labelText: "Add comment",
                hintText: "comment...", 
                border: OutlineInputBorder(               //creates a border with corner radius 5.0
                  borderRadius: BorderRadius.circular(5.0)   
                ) 
              ),
            ),
            ),
        ],
      )
    );
    
  }
}
