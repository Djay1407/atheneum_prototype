import 'package:flutter/material.dart';
import 'bookdet.dart';
import 'details.dart';

void main() {
  runApp(MaterialApp(
      title: "Auto Atheneum",
      home: AppWrapper(),));
}

class AppWrapper extends StatefulWidget {
  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> with SingleTickerProviderStateMixin {
  TabController controller;        
  @override                                    
  void initState(){                             
    super.initState();
    controller = TabController(vsync: this,length: 2);   
  }
  @override
  void dispose(){                           
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double bookSpacing = w / 25.0;
    GestureDetector gestD(String dir){
      return GestureDetector(
         child: Hero(
            tag: 'hero',
            child: Image.asset(
              dir,
              fit: BoxFit.fill,
              height: h / 9.0,
            ),
          ),
           onTap: () async {
           Navigator.push(context,MaterialPageRoute(builder: (context) {
            return BookPage("New book",dir);
           }));
          }
      );
    }
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,          
            floating: true,            
            pinned: true,
            snap: true,
            //title: Text("Auto Atheneum"),
            flexibleSpace: FlexibleSpaceBar(        
              title: Text("Auto Atheneum"),
              background: Image.asset("assets/gbooks.jpg",fit: BoxFit.fill,),     
              
            ),
            bottom: TabBar(               
              controller: controller,
              tabs: <Widget>[
                Text("1st Shelf"),
                Text("2nd Shelf"),
              ]  
           )
          ),
          SliverFillRemaining(             
            child: TabBarView(              
              controller: controller,
              children: <Widget>[
                Stack(
                 children: <Widget>[
                   Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("assets/shelf.jpg"),
                          fit: BoxFit.fitWidth
                        )
                      ),
                    ),
                    SingleChildScrollView(
                    child: Container(
                      color: Colors.transparent,
                       child: Column(
                       children: <Widget>[

                         // for(var i = 0; i <=5; i++) {
                        //     Padding(
                        //       padding: EdgeInsets.only(left: h / 25.0, top: h / 9.0),
                        //       child: Row(
                        //           children: <Widget>[
                        //              for (var j = 0; j < count; j++) {
                        //                 GestD('assets/${Shelf1[i][j][0]}.jpg'),
                        //                 Padding(padding: EdgeInsets.all(bookSpacing)),
                        //             };
                        //           ], 
                        //         ),
                        //       ),
                        // },

                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 9.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/images_1.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images_2.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images_3.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images_13.jpeg')
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 16.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/images_14.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images_15.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images4.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images5.jpeg'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 16.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/images6.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images7.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images8.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images9.jpeg'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 16.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/images10.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images11.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images_14.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images_16.jpg'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 16.0),
              child: Row(
                children: <Widget>[
                  gestD('assets/images17.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images18.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images20.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('assets/images19.jpg'),
                ],
              ),
            )
                       ],
                     )
            
                     )
                    ) 
                  ],
                ) 
              ]
            )   
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.bookmark_border,color: Colors.white,),
            Text("Book name",style: TextStyle(color: Colors.white,fontSize: 20.0),)
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          filterdialog(context);
        },
        tooltip: "filter",
        child: Icon(Icons.filter_list),
      ),
    );
    
  }
}

void filterdialog(BuildContext context)
  {
   var dialog = SimpleDialog(
     title: Text("Filter",),
     
    );
    showDialog(
      context: context,
     builder: (BuildContext context)
     {
      return dialog;
     }
    );

  } 


/*class gestD extends StatelessWidget{
  double h;
    String dir;
    gestD(this.dir,this.h);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                      child: new Image.asset(
                        dir,
                        fit: BoxFit.fill,
                        height: h / 9.0,
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(new MaterialPageRoute(builder: (builder) {
                          return new BookPage(name: "New book");
                        }));
                      });
  }

}
*/
