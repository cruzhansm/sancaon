//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:flutter/material.dart';
import 'help.dart';
import 'feedback.dart';
import 'credits.dart';
import 'home.dart';

class AppbarOtherPage extends StatefulWidget {
  final Widget generatePage;

  AppbarOtherPage({this.generatePage});

  @override
  _AppbarOtherPageState createState() => _AppbarOtherPageState();
}

class _AppbarOtherPageState extends State<AppbarOtherPage> {

  Widget generatePage;
  
  createDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return new Dialog(
        child: new FeedbackPage()
      );
    });
  }

  List<Widget> newPage = [
    null,
    HelpPage(),
    Home(),
    AboutPage(),
    AboutPage()
  ];

  List<Color> newColor = [
    null,
    Colors.green[400],
    Colors.blue,
    Colors.yellow[800],
    Colors.red[600]
  ];

  int _page = 2;
  Color _selectedItemColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => {
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
            AppbarOtherPage(generatePage: Home())), (Route<dynamic> route) => false)
        },
        tooltip: "Home page",
        elevation: 2.0,
        child: new Icon(
          OMIcons.home,
          color: Colors.yellow[800]),
      ),*/
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: _selectedItemColor,
        selectedLabelStyle: TextStyle(
          fontFamily: "Dosis",
          fontWeight: FontWeight.bold
        ),
        selectedFontSize: 15.0,
        unselectedLabelStyle: TextStyle(
          fontFamily: "Dosis"
        ),
        currentIndex: _page,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(
              OMIcons.feedback,),
            title: new Text("Feedback")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(OMIcons.info),
            title: new Text("FAQs")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(OMIcons.home),
            title: new Text("Home")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(OMIcons.person),
            title: new Text("About")
          ),
          new BottomNavigationBarItem(
            icon: new Icon(OMIcons.settings),
            title: new Text("Settings")
          )
        ],
        onTap: (index) {
          setState(() {
            if(index == 0) {
              createDialog(context);
            }
            else if(index == 2){
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
               AppbarOtherPage(generatePage: Home())), (Route<dynamic> route) => false);
            }
            else {
              generatePage = newPage[index];
              _selectedItemColor = newColor[index];
              _page = index;
            }
          });
        },
      )/*new CurvedNavigationBar(
            color: Colors.black,
            backgroundColor: Colors.white,
            animationDuration: new Duration(
              milliseconds: 500
            ),
            animationCurve: Curves.easeIn,
            height: 60.0,
            items: <Widget> [
              new Icon(OMIcons.info, color: Colors.white),
              new Icon(OMIcons.feedback, color: Colors.white),
              new Icon(OMIcons.home, color: Colors.white),
              new Icon(OMIcons.person, color: Colors.white),
              new Icon(OMIcons.settings, color: Colors.white)
            ],
            onTap: (index) {
              setState(() {
                debugPrint(index.toString());
                widget.generatePage = newPage[index];
              });
            },
          ),*/
          
          /*appBar: new AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: new Column(
              children: <Widget>[
                new IconButton(
                  icon: Icon(Icons.keyboard_arrow_left,
                      color: Colors.black, 
                      size: 30.0),
                  onPressed: () => {
                    print("Back to previous route"),
                    Navigator.pop(context)
                  },
                ),
              ],
            ),
          ),/*new BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            new FABBottomItem(
              iconName: "Feedback",
              icon: OMIcons.feedback,
            ),
            new FABBottomItem(
              iconName: "FAQs",
              icon: OMIcons.info,
            ),
            new Expanded(
              child: new SizedBox(
                height: 60.0,
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 24),
                    Text(
                      "Sa'nCaon",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Dosis",
                        color: Colors.green[400]
                      )
                    ),
                  ],
                ),
              ) 
            ),
            new FABBottomItem(
              iconName: "About",
              icon: OMIcons.person
            ),
            new FABBottomItem(
              iconName: "Settings",
              icon: OMIcons.settings
            ),
          ]),
          shape: CircularNotchedRectangle(),
      ),*/*/,
      body: generatePage == null ? widget.generatePage : generatePage
    );
  }
}

/*class FABBottomItem extends StatefulWidget {
  final String iconName;
  final IconData icon;
  final Widget destination;
  Widget newPage;

  FABBottomItem({this.iconName, this.icon, this.destination, this.newPage});

  @override
  _FABBottomItemState createState() => _FABBottomItemState();
}

class _FABBottomItemState extends State<FABBottomItem> {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new SizedBox(
        height: 60.0,
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new Icon(
              widget.icon,
              size: 24.0
            ),
            new Text(
              widget.iconName,
              style: TextStyle(
                fontSize: 10.0,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold
              )
            ),
          ]
        ),
      ),
    );
  }
}*/
