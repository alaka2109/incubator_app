import 'package:flutter/material.dart';

class MyCard extends StatefulWidget{
  MyCard({this.icon, this.title});
  final Widget title;
  final Widget icon;

  @override
  MyCardState createState() => MyCardState();
}

class MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(31.0),
            child: Column(
              children: <Widget>[
                this.widget.icon,
                this.widget.title
              ],
            ),
          ),
        )
    );
  }
}