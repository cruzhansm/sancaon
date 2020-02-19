import 'package:flutter/material.dart';

class AppbarOtherPage extends StatefulWidget {
  final Widget generatePage;
  final String nameOfPage;

  AppbarOtherPage({this.generatePage, this.nameOfPage});

  @override
  _AppbarOtherPageState createState() => _AppbarOtherPageState();
}

class _AppbarOtherPageState extends State<AppbarOtherPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        //extendBodyBehindAppBar: false,
        appBar: new AppBar(
        elevation: 0.0,
        /*title: new Text(
    widget.nameOfPage,
    style: TextStyle(
        fontFamily: "Dosis",
        height: 1,
        fontSize: 50.0,
        color: Colors.white,
        fontWeight: FontWeight.bold),
        ),*/
        backgroundColor: Colors.black,
        leading: Row(
    children: <Widget>[
      new IconButton(
        icon: Icon(Icons.arrow_back,
            color: Colors.green[400], 
            size: 40.0),
        onPressed: () => {
          print("Back to previous route"),
          Navigator.pop(context)
        },
      ),
    ],
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
        ),
        ),
      body: widget.generatePage,
    )
      );
  }
}
