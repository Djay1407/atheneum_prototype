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
      appBar: AppBar(title: Text(widget.dir),backgroundColor: Colors.black26,),
      body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/patt.jpg"),fit: BoxFit.fill)),
              child: ListView(
          
          children: <Widget>[
            SafeArea(
                        child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(7.0),
                                        child: Container(
                      child: Hero(
                      tag: widget.dir,
                      child: Image.asset('assets/${widget.dir}.jpg',
                       height: 300.0,width: 200.0,
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
                    ),
                    Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:10.0),
                              child:Text("#No. 3 Bestselling", style: TextStyle(fontSize:23.0,fontWeight: FontWeight.w900,color: Colors.green),textDirection: TextDirection.ltr,),
                          
                            ) ,
                            Padding(padding: EdgeInsets.only(top:8.0),
                            child: Text("Genre: Fantasy/Fiction/Thriller", style: TextStyle(fontSize:23.0,fontWeight: FontWeight.w900),textDirection: TextDirection.ltr,),),
                             Padding(
                              padding: EdgeInsets.only(top:10.0),
                              child:Text("Language: English", style: TextStyle(fontSize:23.0,fontWeight: FontWeight.w900,color: Colors.green),textDirection: TextDirection.ltr,),
                          
                            ) ,
                             Padding(
                              padding: EdgeInsets.only(top:10.0),
                              child:Text("Year : 2009", style: TextStyle(fontSize:23.0,fontWeight: FontWeight.w500,color: Colors.black87),textDirection: TextDirection.ltr,),
                          
                            ) ,
                            
                             ],
                        ),
                      ),
                    ),

                  ],
                ),
            ),
             Padding(padding: EdgeInsets.all(9.0),
             child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
             color: Colors.black54,
                child: Padding(padding: EdgeInsets.only(top: 7.0,left: 8.0,right: 4.0,bottom: 8.0),
                  child: Text("A man with a bullet-ridden body is found and looked after by strangers. He wakes up with a blank memory and begins a journey to learn his identity, unaware that the road ahead is full of danger.",
                  style: TextStyle(fontSize:20.0,color: Colors.white,fontStyle: FontStyle.italic),textDirection: TextDirection.ltr,),
                ),
             ),),
                         
             Padding(padding: EdgeInsets.all(15.0),
              child: TextField(                             //Description Textfield
                controller: descController,
                onChanged: (val){
                    setState(() {
                    debugPrint("changed"); });},
                decoration: InputDecoration(
                  labelText: "Add comment",
                  labelStyle: TextStyle(fontSize: 20.0),
                  hintText: "comment...", 
                  border: OutlineInputBorder(               //creates a border with corner radius 5.0
                    borderRadius: BorderRadius.circular(5.0)   
                  ) 
                ),
              ),
              ),
     
            Card(
          color: Colors.black,
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
          ],
        ),
      )
    );
    
  }
}
