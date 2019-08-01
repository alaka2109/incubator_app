import 'package:flutter/material.dart';
import 'main.dart';
class Carousel3 extends StatefulWidget{
  @override
  Carousel3State createState() => Carousel3State();
}

class Carousel3State extends State<Carousel3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon:Icon(Icons.arrow_back,
              size: 30.0, color: Colors.white),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => HomePage()
              )
          ),
        ),
        title: Text("Carousel 3",
            style: TextStyle(color: Colors.white, fontSize: 20.0)
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text(
                "Article Heading",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Container(
                height: (MediaQuery.of(context).size.height)/2,
                child: Image.asset("assets/Flower3.jpg")
            ),
            Text(
                "Main Text",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0
                )
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ButtonTheme(
              minWidth: (MediaQuery.of(context).size.width)/2,
              child: RaisedButton.icon(
                  icon: Icon(Icons.share, size: 30.0,),
                  label: Text("Share", style: TextStyle(color: Colors.black, fontSize: 20.0),),
                  onPressed: null
              ),
            )
          ],
        ),
      ),
    );
  }
}