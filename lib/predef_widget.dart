import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainWidget extends StatefulWidget {
  final Widget generatePage;

  MainWidget({this.generatePage});

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  GlobalKey <ScaffoldState> _scaffoldKey = new GlobalKey();

  _launchURL() async {
    const url = 'https://github.com/cruzhansm/sancaon';
    if (await canLaunch(url)) {
      await launch(url);
    } 
    else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true,
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
                  onPressed: () => {
                    print("Open menu"),
                    _scaffoldKey.currentState.openDrawer()
                  }
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          key: _scaffoldKey,
          drawer: Drawer(
            child: new Container(
              color: Colors.black, 
              child: new ListView(
                children: <Widget>[
                  new DrawerHeader(
                    child: Container(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text(
                            "Sa'nCaon",
                            style: TextStyle(
                              fontSize: 60.0,
                              fontFamily: "Dosis",
                              color: Colors.green[400]
                            )
                          ),
                          new Text(
                            "Brought to you by the Sa'nCaon team",
                            style: TextStyle(
                              height: 0.5,
                              fontFamily: "Comfortaa",
                              color: Colors.white
                            )
                          ),
                          new SizedBox(
                            height: 10.0,
                          ),
                          new Expanded(
                            child: new ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: new InkWell(
                                onTap: _launchURL,
                                child: new Container(
                                  color: Colors.lightBlue[300],
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Text(
                                        "View the Source Code in GitHub  ",
                                        style: TextStyle(
                                          fontFamily: "Quicksand",
                                          fontWeight: FontWeight.bold
                                        ),),
                                      new Icon( 
                                        Icons.open_in_new,
                                        size: 20.0
                                      )
                                    ],
                                  )
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
                    )
                  ),
                  new ListTile(
                    onTap: () => print("Open Settings"),
                    leading: new Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 40.0
                    ),
                    title: new Text(
                      "Settings",
                      style: TextStyle(
                        fontFamily: "Comfortaa",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white
                      )),
                    subtitle: new Text(
                      "Change app settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Quicksand"
                      )),
                  ),
                  new ListTile(
                    onTap: () => print("Open Feedback"),
                    leading: new Icon(
                      Icons.feedback,
                      color: Colors.white,
                      size: 40.0
                    ),
                    title: new Text(
                      "Feedback",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Comfortaa",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                    subtitle: new Text(
                      "Share your thoughts with us!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Quicksand"
                      )),
                  ),
                  new ListTile(
                    onTap: () => print("Open help"),
                    leading: new Icon(
                      Icons.help,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    title: new Text(
                      "Help",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "Comfortaa",
                        fontWeight: FontWeight.bold,
                      )),
                    subtitle: new Text(
                      "Frequently Asked Questions",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Quicksand"
                      )),
                  ),
                  new ListTile(
                    onTap: () => print("Open Credits"),
                    leading: new Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40.0
                    ),
                    title: new Text(
                      "Credits",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "Comfortaa",
                        fontWeight: FontWeight.bold,
                      )),
                    subtitle: new Text(
                      "Get to know the developers",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Quicksand"
                      )),
                  )
                ],
              ),
            ),
          ),
          body: widget.generatePage
      ),
    );
  }
}
