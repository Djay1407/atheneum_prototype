import 'package:flutter/material.dart';
import 'bookdet.dart';

void main() {
  runApp(MaterialApp(
      title: "Auto Atheneum",
      home: AppWrapper(),));
}

class AppWrapper extends StatefulWidget {
  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double bookSpacing = w / 25.0;
    GestureDetector GestD(String dir){
      return GestureDetector(
                      child: Hero(
                        tag: 'hero',
                        child: Image.asset(
                        dir,
                        fit: BoxFit.fill,
                        height: h / 9.0,
                      ),
                      ),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return BookPage("New book",dir);
                        }));
                      });
    }
    return Scaffold(
      appBar: null,
      body: Stack(
        children: <Widget>[
          Image(image: AssetImage("assets/shelf.jpg"),
            fit: BoxFit.fill,),
          Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 8.0),
              child: Row(
                children: <Widget>[
                  GestD('assets/images_1.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images_2.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images_3.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images_13.jpeg')
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 20.0),
              child: Row(
                children: <Widget>[
                  GestD('assets/images_14.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images_15.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images4.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images5.jpeg'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: h / 25.0, top: h / 20.0),
              child: Row(
                children: <Widget>[
                  GestD('assets/images6.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images7.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images8.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images9.jpeg'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: h / 30.0, top: h / 20.0),
              child: Row(
                children: <Widget>[
                  GestD('assets/images10.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images11.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images_14.jpeg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images_16.jpg'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: h / 28.0, top: h / 20.0),
              child: Row(
                children: <Widget>[
                  GestD('assets/images17.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images18.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images20.jpg'),
                  Padding(padding: EdgeInsets.all(bookSpacing)),
                  GestD('assets/images19.jpg'),
                ],
              ),
            )
          ],
        )]));
    
  }
}


/*class GestD extends StatelessWidget{
  double h;
    String dir;
    GestD(this.dir,this.h);
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
