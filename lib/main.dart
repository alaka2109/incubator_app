import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'my_card.dart';
import 'carousel_1.dart';
import 'carousel_2.dart';
import 'carousel_3.dart';
import 'carousel_4.dart';
void main(){
  runApp(
      MaterialApp(
        home: HomePage(),
  ));
}

class HomePage extends StatefulWidget{

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int index = 0;
 static String picture1 = 'assets/Call of Sea1.jpg';
 static String picture2 = 'assets/Disney Castle in Singapore.jpg';
 static String picture3 = 'assets/Flower3.jpg';
 static String picture4 = 'assets/Manali3.jpg';

  List <String> photos = [picture1, picture2, picture3, picture4];
  void navigatePage(int i){
    setState(() {
      if(photos[i] == picture1)
        {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Carousel1()));
        }
      else if(photos[i] == picture2)
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Carousel2()));
      }
      else if(photos[i] == picture3)
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Carousel3()));
      }
      else
        {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Carousel4()));
        }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
            "Hello Mentor",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Default User"),
              accountEmail: Text("default email"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text("P", style: TextStyle(color: Colors.white, fontSize: 30.0)),
                ),
                onTap: null,
              ),
              decoration: BoxDecoration(
                color: Colors.grey
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                      child: Text("View Profile"),
                      onPressed: null),
                ),
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height)/ 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Carousel(
                          boxFit: BoxFit.cover,
                          images: [
                            AssetImage(picture1),
                            AssetImage(picture2),
                            AssetImage(picture3),
                            AssetImage(picture4),
                          ],
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: Duration(milliseconds: 2000),
                          onImageTap: (index) => navigatePage(index),
                        ),
                      )
                   ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                          MyCard(
                            icon: Icon(Icons.person, size: 30.0, color: Colors.black),
                            title: Text("StartUp_1", style: TextStyle(color: Colors.black, fontSize: 20.0)),
                          ),
                        MyCard(
                          icon: Icon(Icons.person, size: 30.0, color: Colors.black),
                          title: Text("StartUp_2", style: TextStyle(color: Colors.black, fontSize: 20.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                   children: <Widget>[
                      MyCard(
                       icon: Icon(Icons.person, size: 30.0, color: Colors.black),
                        title: Text("StartUp_1", style: TextStyle(color: Colors.black, fontSize: 20.0)),
                      ),
                      MyCard(
                        icon: Icon(Icons.person, size: 30.0, color: Colors.black),
                       title: Text("StartUp_2", style: TextStyle(color: Colors.black, fontSize: 20.0)),
                     ),
                    ],
                  ),
                ),
               ),
            ],
          ),
       ),
      bottomNavigationBar:Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: (MediaQuery.of(context).size.width)/2.1,
                child: RaisedButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.message, color: Colors.black, size: 10.0),
                    label: Text("Message", style: TextStyle(color: Colors.black, fontSize: 10.0))
                ),
              ),
              ButtonTheme(
                minWidth: (MediaQuery.of(context).size.width)/2.1,
                child: RaisedButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.bookmark, color: Colors.black, size: 10.0),
                    label: Text("Bookmarks", style: TextStyle(color: Colors.black, fontSize: 10.0))
                ),
              )
            ],
          ),
      )
    );
  }
}

