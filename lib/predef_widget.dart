import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  final Widget generatePage;

  MainWidget({this.generatePage});

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey(); //Uayan (U): key for drawer opening purposes

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      extendBodyBehindAppBar: true, // comment if you want transparent appBar!
      key: _scaffoldKey,            //(U): the new key
      drawer: Drawer(                   //(U): Made a drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Sa'nCaon",
              style: TextStyle(
                fontFamily: "ABeeZee",
                fontSize: 25.0,
                color: Colors.black
                ),
              ),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () => print("Open Settings"),
            ),
            ListTile(
              title: Text('Feedback'),
              onTap: () => print("Open Feedback"),
            ),
            ListTile(
              title: Text('Help'),
              onTap: () => print("Open Help"),
            ),
            ListTile(
              title: Text('Credits Page'),
              onTap: () => print("Open Credits Page"),
            ),
          ],
        ),
      ),
      appBar: new AppBar(
        elevation: 0.0,
        title: Text(
          "Sa'nCaon",
          style: TextStyle(
            fontFamily: "ABeeZee",
            fontSize: 25.0,
            color: Colors.black
=======
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
              fontWeight: FontWeight.bold
            ),
>>>>>>> canteen-landing-page
          ),
          //centerTitle: true,
          backgroundColor: Colors.black,
          leading: Row(
            children: <Widget>[
              InkWell(
                enableFeedback: true,
                child: IconButton(
                  icon: Icon(
                    Icons.restaurant_menu,
                    color: Colors.lightGreen,
                    size: 40.0
                  ),
                  onPressed: () => print("Menu was pressed"),
                ),
<<<<<<< HEAD
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer(); //(U) made the 3 line icon open a drawer. Uses the global key
                },
              ),
            )
          ],
        mainAxisAlignment: MainAxisAlignment.start,
=======
              )
            ],
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        body: widget.generatePage
>>>>>>> canteen-landing-page
      ),
    );     
  }
}
