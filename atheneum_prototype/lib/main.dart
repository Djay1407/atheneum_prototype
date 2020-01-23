import 'package:flutter/material.dart';
import 'bookdet.dart';
import 'details.dart';
import 'search.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.black,
    debugShowCheckedModeBanner: false,
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
            tag: dir,
            child: Image.asset(
              'assets/$dir.jpg',
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
      appBar: AppBar(
        title: Text("Auto Atheneum"),
        // bottom: TabBar(               
        //       controller: controller,
        //       tabs: <Widget>[
        //         Text("1st Shelf"),
        //         Text("2nd Shelf"),
        //       ]  
        //    ),
        backgroundColor: Colors.black26,
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(children: <Widget>[
            Image(image: AssetImage("assets/books-background-images-12.jpg"),),
            Padding(
              padding: EdgeInsets.only(top: 30.0,left: 16.0),
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage("assets/images.jpg"),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 160.0,left: 16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Username", style: TextStyle(fontSize: 17.0,color: Colors.white),),
              Text("emailid@gmail.com", style: TextStyle(fontSize: 16.0,color: Colors.white,),
            )],),
            )
            ]),
             SingleChildScrollView(
                            child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.bookmark_border),
                      title: Text("Bookmarks",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text("My books",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text("Trending",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text("Latest",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    Divider(height: 2.0,),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text("Account",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.subscriptions),
                      title: Text("Subscription",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    Divider(height: 2.0,),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text("Help",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.question_answer),
                      title: Text("FAQs",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Text("About Us",style: TextStyle(fontSize: 17.0),),
                      onTap: (){},
                    ),
                  ],
                ),
             ),
            
          ],
          
        ),
      ),

      
      body:
      //  CustomScrollView(
      //   slivers: <Widget>[
          // SliverAppBar(
          //   expandedHeight: 100.0,          
          //   floating: false,            
          //   pinned: false,
          //   snap: false,
          //   //title: Text("Auto Atheneum"),
          //   flexibleSpace: FlexibleSpaceBar(        
          //     title: Text("Auto Atheneum"),
          //     background: Image.asset("assets/gbooks.jpg",fit: BoxFit.fill,),     
              
          //   ),
          //   bottom: TabBar(               
          //     controller: controller,
          //     tabs: <Widget>[
          //       Text("1st Shelf"),
          //       Text("2nd Shelf"),
          //     ]  
          //  )
          // ),
        //  SliverFillRemaining(             
        //     child: 


        Column(
          children: <Widget>[
            TabPageSelector(controller: controller,),
            Expanded(
            child: IconTheme(
              data: IconThemeData(
                size: 128.0,
                color: Colors.black38,),
                
                child: TabBarView(              
              controller: controller,
              children: <Widget>[
                Stack(
                 children: <Widget>[
                   Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("assets/shelf.jpg"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),
                    SingleChildScrollView(
                    child: Container(
                      color: Colors.transparent,
                       child: Column(
                       children: <Widget>[
                         

                        //  for(var i = 0; i <=5; i++) {
                        //     Padding(
                        //       padding: EdgeInsets.only(left: h / 29.0, top: h / 9.0),
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
              padding: EdgeInsets.only(left: h / 29.0, top: h / 12.0),
              child: Row(
                children: <Widget>[
                  gestD('Never Let me Go'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Bone Clocks'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Snow Child'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('Black Moon')
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
              child: Row(
                children: <Widget>[
                  gestD('The Graveyard Book'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('Jane Eyre'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('Pride and Prejudice '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('Romeo and Juliet '),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
              child: Row(
                children: <Widget>[
                  gestD('The Notebook '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Bourne Identity '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('Time Travelers Wife'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Da Vinci Code'),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
              child: Row(
                children: <Widget>[
                  gestD('The Girl with the Dragon Tattoo'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Hobbit '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Hunger Games '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('And Then There Were None '),
                ],
              ),
            ),
                         Padding(
              padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
              child: Row(
                children: <Widget>[
                  gestD('Angels & Demons'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('In Cold Blood '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('Rebecca '),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  gestD('The Godfather '),
                ],
              ),
            )
                       ],
                     )
            
                     )
                    ) 
                  ],
                )
                ,Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/shelf.jpg"),
                              fit: BoxFit.fill
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
                                //       padding: EdgeInsets.only(left: h / 29.0, top: h / 9.0),
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
                                  padding: EdgeInsets.only(left: h / 29.0, top: h / 12.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('The Communist Manifesto '),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('The Complete Works '),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('The Odyssey '),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('The Republic ')
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('A Life in Parts'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('A Moveable Feast'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('Born Standing Up'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('Kitchen Confidential'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('The Autobiography of Malcolm X as told by Alex Haley'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('Dracula '),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('Frankenstein'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('The Comeplete H P Lovecraft Collection'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('The Exorcist'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('The Turn of the Screw'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('A Double Life '),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('An Unwanted Guest '),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: h / 29.0, top: h / 23.0),
                                  child: Row(
                                    children: <Widget>[
                                      gestD('Bring Me Back '),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('Give Me Your Hand'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('The Good Son'),
                                      Padding(padding: EdgeInsets.all(bookSpacing)),
                                      gestD('HEART BERRIES'),
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
            )   ,
                )
                
                )
            ],
          
        ),


          // )
      //   ],
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.orange,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: <Widget>[
      //       Icon(Icons.bookmark_border,color: Colors.white,),
      //       Text("Book name",style: TextStyle(color: Colors.white,fontSize: 17.0),)
      //     ],
      //   ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         
          SearchList();
        },
        tooltip: "Search",
        child: Icon(Icons.search),
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

