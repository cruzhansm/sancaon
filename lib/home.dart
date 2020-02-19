import 'package:flutter/material.dart';
import 'package:sancaon/predef_appbar_other.dart';
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

dynamic canteenTemplate() {
  List<String> imageName = [
      'assets/images/home/canteen.jpg',
      'assets/images/home/canteen2.jpg',
      'assets/images/home/canteen3.jpg',
      'assets/images/home/canteen4.jpg',
      'assets/images/home/canteen5.jpg',
      'assets/images/home/canteen6.jpg'
      ];
  List<String> locationCanteen = [
    'Lawrence Bunzel Building',
    'Lawrence Bunzel Building',
    'Science and Mathematics Education Complex',
    'Robert Hoeppener Building',
    'School of Fine Arts and Design Building',
    'LB Building | SAFAD Building'
  ];

  List<String> canteenName = [
    'Bunzel Basement', 
    'Bunzel Canteen', 
    'SMED Canteen',
    'RH Canteen',
    'SAFAD Canteen',
    'Cafe+'];

  int indexCanteen = 0;

  List<Widget> listOfNewCanteens() {
    List<Widget> addCanteen = new List();
    addCanteen.add(new Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: new Column(
        children: <Widget>[
          new Text(
            "Asa ta kaon?",
            style: TextStyle(
              fontSize: 60.0,
              fontFamily: "Dosis",
              color: Colors.green[400]
            )
          ),
          new Text(
            "SELECT A CANTEEN",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: "Quicksand",
              color: Colors.yellow[800],
              height: 0.5
            )
          )
        ],
      ),
    ));

    while(indexCanteen <= 5) {
      addCanteen.add(new NewCanteen(
        canteenName: canteenName[indexCanteen],
        canteenImage: imageName[indexCanteen],
        canteenLocation: locationCanteen[indexCanteen],
      ));
      indexCanteen++;
    }
    return addCanteen;
  }
  return listOfNewCanteens();
}

class HomeOverview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: canteenTemplate());
  }
}

dynamic shopeeContent() {
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
  return listNewShopeeStyle();
}

class NewCanteen extends StatelessWidget {
  final String canteenName;
  final String canteenImage;
  final String canteenLocation;

  NewCanteen({this.canteenName, this.canteenImage, this.canteenLocation});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: new Container(  
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new SizedBox(
                height: 150.0,
                width: double.infinity,
                child: new FittedBox(
                  fit: BoxFit.fill,
                  child: new Image.asset(canteenImage)
                )
              ),
              new Container(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                color: Colors.black,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          canteenName,
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "Dosis",
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )
                        ),
                        new Text(
                          "Swipe for more samples",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white
                          ))
                      ],
                    ),
                    new RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      ),
                      onPressed: () => {
                        print("Open " + canteenName),
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => new AppbarOtherPage(
                            generatePage: new CanteenMenu(
                              nameOfCanteen: canteenName
                            ),
                          ))
                        )
                      },
                      color: Colors.lightBlue[300],
                      child: new Text("Open Canteen")
                      )
                  ],
                ),
              ),
              new SizedBox(
                height: 100.0,
                width: double.infinity,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: shopeeContent()
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
      child: Column(
        children: <Widget>[
          new FittedBox(
            fit: BoxFit.fill,
            child: new Container(
              child: new Image.asset(
                widget.foodImage
              ),
            )
          ),
        ],
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