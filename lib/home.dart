import 'package:flutter/material.dart';
import 'package:sancaon/canteen_landing_page.dart';

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
      'Robert Hoeppenher Building',
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
      child: new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0,widget.nameOfCanteen == 'Cafe+' ? 20.0 : 0.0),
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(15.0),
              child: new InkWell(
                enableFeedback: true,
                onLongPress: () => print("Long press option"), // optional feature!
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CanteenLandBuilder())
                  ),
                  print("Open ${widget.nameOfCanteen}")
                },
                child: new Stack(
                  children: <Widget> [
                    new Image.asset('assets/images/${widget.nameOfImage}',),
                    new Container(
                      alignment: Alignment(0,1),
                      constraints: new BoxConstraints(
                        maxWidth: 500.0,
                        maxHeight: 255.0
                      ),
                      child: new Container(
                        constraints: new BoxConstraints(
                          maxHeight: 52.0,
                          minHeight: 52.0,
                          maxWidth: 381.0,
                          minWidth: 381.0,
                        ),
                        color: Colors.black,
                        child: new Text(
                          " " + widget.nameOfCanteen,
                          style: new TextStyle(
                            fontFamily: "ABeeZee",
                            fontSize: 35.0,
                            height: 1.5,
                            color: Colors.white
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.all(15.0),
              ),
              new Container(
                width: 500.0,
                child: new Container(
                  alignment: Alignment(widget.nameOfCanteen == 'SMED Canteen' ? -0.35: 
                                       widget.nameOfCanteen == 'SAFAD Canteen' ? -0.50: 
                                       widget.nameOfCanteen == 'RH Canteen' ? -0.70: 
                                       widget.nameOfCanteen == 'Cafe+' ? -0.77 : -0.75, 0),
                  child: new ClipRRect(
                    borderRadius: new BorderRadius.circular(15.0),
                    child: new Container(
                      constraints: new BoxConstraints(
                        maxWidth: 400.0,
                        minWidth: 10.0,
                      ),
                      padding: new EdgeInsets.symmetric(horizontal:5.0),
                      color: Colors.white,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget> [
                          new Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20.0
                          ),
                          new Text(
                            "${widget.canteenLocation}",
                            style: TextStyle(
                              fontFamily: "ABeeZee",
                              fontSize: 12.0,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}