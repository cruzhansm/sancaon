import 'package:flutter/material.dart';
import 'predef_appbar_other.dart';
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

class HomeOverview extends StatefulWidget {
  @override
  _HomeOverviewState createState() => _HomeOverviewState();
}

class _HomeOverviewState extends State<HomeOverview> {
  static List<String> imageName = [
      'assets/images/home/canteen.jpg',
      'assets/images/home/canteen2.jpg',
      'assets/images/home/canteen3.jpg',
      'assets/images/home/canteen4.jpg',
      'assets/images/home/canteen5.jpg',
      'assets/images/home/canteen6.jpg'
      ];
  static List<String> locationCanteen = [
    'Lawrence Bunzel Building',
    'Lawrence Bunzel Building',
    'Science and Mathematics Education Complex',
    'Robert Hoeppener Building',
    'School of Fine Arts and Design Building',
    'LB Building | SAFAD Building'
  ];
  static List<String> canteenName = [
    'Bunzel Basement', 
    'Bunzel Canteen', 
    'SMED Canteen',
    'RH Canteen',
    'SAFAD Canteen',
    'Cafe+'];

  String newCanteen = canteenName[0];
  String newCanteenImage = imageName[0];
  int indexCanteen = 0;

  void changeCanteens(int index) {
    setState(() {
      newCanteen = canteenName[index];
      newCanteenImage = imageName[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
            constraints: BoxConstraints(
              maxHeight: double.infinity
            ),
            //color: Colors.black,
            child: new Column(
              children: <Widget>[
                new Container(
          //color: Colors.yellow,
          constraints: BoxConstraints(
            minHeight: 200.0,
            maxHeight: 200.0,
            minWidth: 1200.0,
            maxWidth: 1200.0
          ),
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new InkWell(
                onTap: () => {
                  indexCanteen = 0,
                  print("Open " + canteenName[0]),
                  changeCanteens(indexCanteen)
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  //color: Colors.red,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Container(
                      color: Colors.yellow,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                              flex: 9,
                              child: new Image.asset(
                                imageName[0]),
                          ),
                          new Container(
                            //color: Colors.green,
                            child: new Text(
                              " " + canteenName[0],
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Dosis",
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
              new InkWell(
                onTap: () => {
                  indexCanteen = 1,
                  print("Open " + canteenName[indexCanteen]),
                  changeCanteens(indexCanteen)
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  //color: Colors.red,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Container(
                      color: Colors.yellow,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                              flex: 9,
                              child: new Image.asset(
                                imageName[1]),
                          ),
                          new Container(
                            //color: Colors.green,
                            child: new Text(
                              " " + canteenName[1],
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Dosis",
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
              new InkWell(
                onTap: () => {
                  indexCanteen = 2,
                  print("Open " + canteenName[indexCanteen]),
                  changeCanteens(indexCanteen)
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  //color: Colors.red,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Container(
                      color: Colors.yellow,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                              flex: 9,
                              child: new Image.asset(
                                imageName[2]),
                          ),
                          new Container(
                            //color: Colors.green,
                            child: new Text(
                              " " + canteenName[2],
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Dosis",
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
              new InkWell(
                onTap: () => {
                  indexCanteen = 3,
                  print("Open " + canteenName[indexCanteen]),
                  changeCanteens(indexCanteen)
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  //color: Colors.red,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Container(
                      color: Colors.yellow,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                              flex: 9,
                              child: new Image.asset(
                                imageName[3]),
                          ),
                          new Container(
                            //color: Colors.green,
                            child: new Text(
                              " " + canteenName[3],
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Dosis",
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
              new InkWell(
                onTap: () => {
                  indexCanteen = 4,
                  print("Open " + canteenName[indexCanteen]),
                  changeCanteens(indexCanteen)
                },
                child: new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                  //color: Colors.red,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Container(
                      color: Colors.yellow,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                              flex: 9,
                              child: new Image.asset(
                                imageName[4]),
                          ),
                          new Container(
                            //color: Colors.green,
                            child: new Text(
                              " " + canteenName[4],
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Dosis",
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              ),
              new InkWell(
                onTap: () => {
                  indexCanteen = 5,
                  print("Open " + canteenName[indexCanteen]),
                  changeCanteens(indexCanteen)
                },
                child: new Container(
                  margin: EdgeInsets.all(10.0),
                  //color: Colors.red,
                  child: new ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: new Container(
                      color: Colors.yellow,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Expanded(
                              flex: 9,
                              child: new Image.asset(
                                imageName[5]),
                          ),
                          new Container(
                            //color: Colors.green,
                            child: new Text(
                              " " + canteenName[5],
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: "Dosis",
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        ),
                new Container(
        margin: EdgeInsets.all(10.0),
        /*constraints: BoxConstraints(
          minWidth: double.infinity,
          minHeight: 480.0,
          maxHeight: 480.0
        ),*/
        //color: Colors.red,
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: new Container(
            color: Colors.red[300],
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: new Image.asset(imageName[0]),
                ),
                new Text(
                  "  " + newCanteen,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Dosis",
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                    color: Colors.black,
                  )
                ),
                new Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
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
                            locationCanteen[indexCanteen],
                            style: TextStyle(
                              fontFamily: "Quicksand",
                              fontSize: 12.0,
                              color: Colors.white
                            )
                          )
                        ]
                      )
                    )
                  )
                ),
                new Divider(
                  color: Colors.black
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                  color: Colors.black,
                  constraints: BoxConstraints(
                    minHeight: 100.0,
                    minWidth: double.infinity
                  ),
                  child: new Text(
                    "Description here",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white
                    ))
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new InkWell(
                      onTap: () => {
                        print("Open " + canteenName[indexCanteen] + " Menu"),
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => new AppbarOtherPage(
                            generatePage: new CanteenMenu(
                              nameOfCanteen: canteenName[indexCanteen],
                            ),
                            nameOfPage: "Food Menu"
                            )
                          )
                        )
                      },
                      child: new Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 10.0),
                        color: Colors.lightBlue[300],
                        child: new Text(
                          'Open canteen menu',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.bold
                          )
                        )
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        )
                )
              ],
            ),
          ),
      ]
    );
  }
}

/*class HomePage extends StatefulWidget {
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
    return InkWell(
      onTap: () => {
        print("Open " + widget.nameOfCanteen),
      },
      child: new Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, widget.nameOfCanteen == 'Cafe+' ? 10.0: 0.0, 10.0),
        //color: Colors.red,
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: new Container(
            color: Colors.yellow,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                    flex: 9,
                    child: new Image.asset(
                      widget.nameOfImage),
                ),
                new Container(
                  //color: Colors.green,
                  child: new Text(
                    " " + widget.nameOfCanteen,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Dosis",
                      fontWeight: FontWeight.bold
                    )
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
    /*return new Container(
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, widget.nameOfCanteen == 'Cafe+' ? 15.0 : 0.0),
        child: new ClipRRect(
          borderRadius: new BorderRadius.circular(15.0),
          child: new InkWell(
            enableFeedback: true,
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new AppbarOtherPage(
                  generatePage: CanteenMenu(nameOfCanteen: widget.nameOfCanteen,),
                  nameOfPage: "Food Menu")
                ),
              ),
              print("Open ${widget.nameOfCanteen}")
            },
            child: new Column(
              children: <Widget>[
                new Stack(
                  children: <Widget> [
                  new Image.asset('assets/images/home/${widget.nameOfImage}',),
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
                new Row(
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
              ],
            ),
          ),
        ),
      ),
    );*/
  }
}*/