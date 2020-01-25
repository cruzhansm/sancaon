import 'package:flutter/material.dart';
import 'home.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "Sa'nCaon",
          style: TextStyle(
            fontFamily: "ABeeZee",
            fontSize: 25.0,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Row(
          children: <Widget>[
            InkWell(
              enableFeedback: true,
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => print("Menu was pressed"),
              ),
            )
          ],
        mainAxisAlignment: MainAxisAlignment.start,
      ),
    ),
    body: HomeOverview()
    );      
  }
}