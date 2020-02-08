import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  final Widget generatePage;

  MainWidget({this.generatePage});

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true, // comment if you want transparent appBar!
          appBar: new AppBar(
            elevation: 0.0,
            title: new Text(
              "Sa'nCaon",
              style: TextStyle(
                  fontFamily: "Dosis",
                  height: 1,
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black,
            leading: Row(
              children: <Widget>[
                new IconButton(
                  icon: Icon(Icons.restaurant_menu,
                      color: Colors.green[400], 
                      size: 40.0),
                  onPressed: () => print("Menu was pressed"),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          body: widget.generatePage),
    );
  }
}
