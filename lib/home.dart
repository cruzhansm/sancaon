import 'package:flutter/material.dart';

import 'predef_widget.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MainWidget(
      generatePage: HomeOverview(),
    );
  }
}

class HomeOverview extends StatefulWidget {
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

  @override
  _HomeOverviewState createState() => _HomeOverviewState();
}

class _HomeOverviewState extends State<HomeOverview> {
  int indexCanteen = 0;

  List<Widget> listOfNewCanteens() {
    List<Widget> addCanteen = new List();
    while(indexCanteen <= 5) {
      addCanteen.add(new NewCanteen(
        canteenName: HomeOverview.canteenName[indexCanteen],
        canteenImage: HomeOverview.imageName[indexCanteen],
      ));
      indexCanteen++;
    }
    return addCanteen;
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: listOfNewCanteens());
  }
}

class NewCanteen extends StatefulWidget {
  final String canteenName;
  final String canteenImage;

  NewCanteen({this.canteenName, this.canteenImage});

  @override
  _NewCanteenState createState() => _NewCanteenState();
}

class _NewCanteenState extends State<NewCanteen> {
  int indexCanteen = 0;

  List<String> foodImages = [
    'assets/images/canteen-menu/food1.jpg',
    'assets/images/canteen-menu/food2.jpg',
    'assets/images/canteen-menu/food3.jpg',
    'assets/images/canteen-menu/food4.jpg',
    'assets/images/canteen-menu/food5.jpg',
    'assets/images/canteen-menu/food6.jpg',
    'assets/images/canteen-menu/food7.jpg',
    'assets/images/canteen-menu/food8.jpg',
    'assets/images/canteen-menu/food9.jpg'
  ];

  List<Widget> listNewShopeeStyle() {
  List<Widget> newCanteenObj = new List();
    while(indexCanteen <= 7){
      indexCanteen == 7 ? newCanteenObj.add(new SeeMoreShopee()) : newCanteenObj.add(new ShopeeStyle(foodImage: foodImages[indexCanteen]));
      indexCanteen++;
    }
    return newCanteenObj;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),//indexCanteen == 7? EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0): 
      child: new Container(  
     
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.asset(widget.canteenImage),
              new Text(
                " " + widget.canteenName,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Dosis",
                  fontWeight: FontWeight.bold
                )
              ),
              new Text(""),
              /*new Divider(
                color: Colors.black,
                thickness: 2.0,
              ),*/
              new SizedBox(
                height: 100.0,
                width: double.infinity,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: listNewShopeeStyle()
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShopeeStyle extends StatefulWidget {
  final String foodImage;

  ShopeeStyle({this.foodImage});

  @override
  _ShopeeStyleState createState() => _ShopeeStyleState();
}

class _ShopeeStyleState extends State<ShopeeStyle> {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: 100.0,
          child: new FittedBox(
        fit: BoxFit.fill,
        child: new Container(
          child: new Image.asset(
            widget.foodImage
          ),
        )
      ),
    );
  }
}

class SeeMoreShopee extends StatefulWidget {
  @override
  _SeeMoreShopeeState createState() => _SeeMoreShopeeState();
}

class _SeeMoreShopeeState extends State<SeeMoreShopee> {
  @override
  Widget build(BuildContext context) {
    return new FittedBox(
      fit: BoxFit.fill,
      child: new Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5.0
          )
        ),
        child: new Image.asset(
          'assets/images/home/test.png'
        ),
      )
    );
  }
}