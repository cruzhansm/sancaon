import 'package:flutter/material.dart';
import 'canteen_landing_page.dart';
import 'predef_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      generatePage: HomeOverview(),
    );
  }
}

class HomeOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imageName = [
      'canteen.jpg',
      'canteen2.jpg',
      'canteen3.jpg',
      'canteen4.jpg',
      'canteen5.jpg',
      'canteen6.jpg'
      ];
    List<String> locationCanteen = [
      'Lawrence Bunzel Building',
      'Lawrence Bunzel Building',
      'Science and Mathematics Education Complex',
      'Robert Hoeppener Building',
      'School of Fine Arts and Design Building',
      'Various Locations'
    ];
    List<String> canteenName = [
      'Bunzel Basement', 
      'Bunzel Canteen', 
      'SMED Canteen',
      'RH Canteen',
      'SAFAD Canteen',
      'Cafe+'];
    int newCanteenCount = 0;
    final int numberOfCanteens = 6;

    List<Widget> listMyWidgets() {
      List<Widget> listOfCanteens = new List();

      listOfCanteens.add(new Center(
        child: new Container(
          padding: EdgeInsets.only(top: 10.0),
          child: new Column(
            children: <Widget>[
              new Text(
                "Asa ta kaon?",
                style: TextStyle(
                  fontFamily: "Dosis",
                  fontSize: 55.0,
                  color: Colors.green[400]
                )
              ),
              new Text(
                'SELECT A CANTEEN',
                style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 20.0,
                  height: 0.5,
                  color: Colors.yellow[800]
                )
              ),
            ],
          )
        )
      ));
      
      while(newCanteenCount <= numberOfCanteens-1) {
        listOfCanteens.add(new HomePage(
          nameOfImage: imageName[newCanteenCount], 
          canteenLocation: locationCanteen[newCanteenCount],
          nameOfCanteen: canteenName[newCanteenCount]));
        newCanteenCount++;
      }

      return listOfCanteens;
    }

    return ListView(
      children: listMyWidgets()
    );
  }
}

class HomePage extends StatefulWidget {
  final String nameOfImage;
  final String nameOfCanteen;
  final String canteenLocation;

  HomePage({this.nameOfImage, this.canteenLocation, this.nameOfCanteen});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Padding(
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, widget.nameOfCanteen == 'Cafe+' ? 15.0 : 0.0),
        child: new ClipRRect(
          borderRadius: new BorderRadius.circular(15.0),
          child: new InkWell(
            enableFeedback: true,
            onLongPress: () => print("Long press option"), // optional feature!
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new MainWidget(
                  generatePage: CanteenMenu(nameOfCanteen: widget.nameOfCanteen,))
                ),
              ),
              print("Open ${widget.nameOfCanteen}")
            },
            child: new Stack(
              children: <Widget> [
                new Image.asset('assets/images/home/${widget.nameOfImage}',),
                new Container(
                  constraints: new BoxConstraints(
                    maxHeight: double.infinity,
                    maxWidth: double.infinity,
                    minHeight: 250.0
                  ),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          color: Colors.green[400],
                          child: new Text(
                            "  " + widget.nameOfCanteen,
                            style: new TextStyle(
                              fontFamily: "Dosis",
                              fontSize: 35.0,
                              height: 1.25,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              new Container(
                padding: EdgeInsets.all(10.0),
                child: new ClipRRect(
                  borderRadius: new BorderRadius.circular(15.0),
                  child: new Container(
                    padding: new EdgeInsets.fromLTRB(5.0, 0.0, 10.0, 0.0),
                    color: Colors.black54,
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget> [
                        new Icon(
                          Icons.location_on,
                          color: Colors.lightBlue[300],
                          size: 20.0
                        ),
                        new Text(
                          "${widget.canteenLocation}",
                          style: TextStyle(
                            fontFamily: "Quicksand",
                            fontSize: 12.0,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}