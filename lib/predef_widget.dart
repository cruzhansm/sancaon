import 'package:flutter/material.dart';
import 'test.dart';

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
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          extendBodyBehindAppBar: true, // comment if you want transparent appBar!
          appBar: new AppBar(
            elevation: 0.0,
            title: Text(
              "Sa'nCaon",
              style: TextStyle(
                fontFamily: "ABeeZee",
                height: 1.8,
                fontSize: 35.0,
                color: Colors.black
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.lightBlue,
              tabs: <Widget>[
                new IconButton( // convert to LOOP
                  icon: new Image.asset(
                    'assets/images/test.png',
                  ),
                  onPressed: () => print("go to home"),
                ),
                new IconButton(
                  icon: Icon(
                    Icons.help,
                    color: Colors.lightGreen,
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => new Test())),
                    print("go to help")
                  },
                ),new IconButton(
                  icon: Icon(
                    Icons.feedback,
                    color: Colors.lightGreen,
                  ),
                  onPressed: () => print("go to feedback"),
                ),new IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Colors.lightGreen,
                  ),
                  onPressed: () => print("go to credits"),
                ),new IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.lightGreen,
                  ),
                  onPressed: () => print("go to settings"),
                ),
              ],
            ),
            /*leading: Row(
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
            ),*/
          ),
          body: widget.generatePage
        ),
      ),
    );     
  }
}
