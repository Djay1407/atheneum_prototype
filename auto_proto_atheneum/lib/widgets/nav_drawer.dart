import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    var scrsz =MediaQuery.of(context).size;
    return Drawer(
    elevation: 5.0,
    child: Container(
       decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,            
                colors: [Colors.grey[900],Colors.grey[800]],
              )
            ),
      child: ListView(
        children: <Widget>[
          Container(
            height: scrsz.height/5,
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 32.0,
                    child: Icon(Icons.person,color:Colors.white,size:35.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("User Name",style: TextStyle(color: Colors.white,fontSize: 17.0),),
                      Text("User ID",style: TextStyle(color: Colors.white,fontSize: 13.0),),
                    ],

                  )
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:17.0,top: 20.0,right: 15.0),
            child: ListTile(trailing: Icon(Icons.menu,color: Colors.white,),title: Text("NAV_MENU",style:TextStyle(color:Colors.white)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:17.0,right: 15.0),
            child: ListTile(trailing: Icon(Icons.menu,color: Colors.white,),title: Text("NAV_MENU",style:TextStyle(color:Colors.white)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:17.0,right: 15.0),
            child: ListTile(trailing: Icon(Icons.menu,color: Colors.white,),title: Text("NAV_MENU",style:TextStyle(color:Colors.white)),),
          ),
          SizedBox(height: scrsz.height/5,),
          Padding(
            padding: const EdgeInsets.only(left:17.0,right: 15.0),
            child: ListTile(trailing: Icon(Icons.menu,color: Colors.white,),title: Text("NAV_MENU",style:TextStyle(color:Colors.white)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:17.0,right: 15.0),
            child: ListTile(trailing: Icon(Icons.menu,color: Colors.white,),title: Text("NAV_MENU",style:TextStyle(color:Colors.white)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:17.0,right: 15.0),
            child: ListTile(trailing: Icon(Icons.menu,color: Colors.white,),title: Text("NAV_MENU",style:TextStyle(color:Colors.white)),),
          ),
        ],
      ),
      
    ),
    );
  }
}