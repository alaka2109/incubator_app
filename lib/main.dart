import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'my_card.dart';
void main(){
  runApp(
      MaterialApp(
        home: HomePage(),
  ));
}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
            "Hello Mentor hello",
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
                            AssetImage('assets/Call of Sea1.jpg'),
                            AssetImage('assets/Disney Castle in Singapore.jpg'),
                            AssetImage('assets/Flower3.jpg'),
                            AssetImage('assets/Manali3.jpg'),
                          ],
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: Duration(milliseconds: 2000),
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

