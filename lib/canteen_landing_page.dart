import 'package:flutter/material.dart';
import 'data.dart';

class CanteenMenu extends StatefulWidget {
  final String nameOfCanteen;

  CanteenMenu({this.nameOfCanteen});

  @override
  _CanteenMenuState createState() => _CanteenMenuState();
}

class _CanteenMenuState extends State<CanteenMenu> {
  Data newData = new Data();

  Map <String, String> canteenNames = {
    'Bunzel Basement': 'BUNZEL',
    'Bunzel Canteen': 'BUNZEL',
    'SMED Canteen': 'SMED',
    'RH Canteen': 'RH',
    'SAFAD Canteen': 'SAFAD',
    'Cafe+': 'CAFE+'
  };

  int foodItemCount = 0;

  final int numberOfFoodItems = 10;

  @override
  Widget build(BuildContext context) {
    List<Widget> listOfFood() {
      List<Widget> foodItem = new List();

      foodItem.add(new Center(
        child: new Container(
          //color: Colors.black,
          constraints: BoxConstraints(
            minWidth: double.infinity
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text(canteenNames[widget.nameOfCanteen],
                style: TextStyle(
                fontFamily: "Bebas-Neue",
                fontSize: 85.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0,
                //color: Colors.green[400]
                )
              ),
              new Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: new Text("FOOD MENU",//widget.nameOfCanteen.toUpperCase(),
                  style: TextStyle(
                  fontFamily: "Quicksand",
                  fontSize: 25.0,
                  height: 0.2,
                  //color: Colors.yellow[800]
                  )
                ),
              )
            ],
          )
        )
      ));

      while (foodItemCount <= numberOfFoodItems - 1) {
        foodItem.add(new FoodItem(
          foodName: newData.nameOfFood[foodItemCount],
          foodName2: newData.nameOfFood[foodItemCount+1],
          foodImage: newData.imageOfFood[newData.nameOfFood[foodItemCount]],
          foodImage2: newData.imageOfFood[newData.nameOfFood[foodItemCount+1]],
          foodPrice: newData.priceOfFood[newData.nameOfFood[foodItemCount]],
        ));
        foodItemCount+=2;
      }
      return foodItem;
    }

    return ListView(children: listOfFood());
  }
}

class FoodItem extends StatefulWidget {
  final String foodName;
  final String foodName2;
  final String foodImage;
  final String foodImage2;
  final double foodPrice;

  FoodItem({this.foodName, this.foodPrice, this.foodName2, this.foodImage, this.foodImage2});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: widget.foodName2 == 'Tempura with Rice' ? EdgeInsets.only(bottom: 20.0): EdgeInsets.all(0.0),
      constraints: BoxConstraints(
        minHeight: 200.0,
        maxHeight: 200.0
      ),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Expanded(
            child: new Container(
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
              child: new Column(
                children: <Widget>[
                  new Expanded(
                    flex: 13,
                      child: new Image.asset(
                      widget.foodImage,
                    ),
                  ),
                  new Expanded(
                    flex: 2,
                    child: new Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.25,
                        ),
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints(
                        minWidth: double.infinity
                      ),
                      child: new Text(
                        widget.foodName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          height: 1.5
                        )
                      )
                    ),
                  )
                ],
              ),
            )
          ),
          new Expanded(
            child: new Container(
              margin: EdgeInsets.fromLTRB(5.0, 5.0, 10.0, 5.0),
              child: new Column(
                children: <Widget>[
                  new Expanded(
                    flex: 13,
                      child: new Image.asset(
                      widget.foodImage2,
                    ),
                  ),
                  new Expanded(
                    flex: 2,
                    child: new Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.25,
                        ),
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints(
                        minWidth: double.infinity
                      ),
                      child: new Text(
                        widget.foodName2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          height: 1.5
                        )
                      )
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
    
    /*return new Container(
      //color: Colors.black,
      child: new InkWell(
        onTap: () => print("Open " + widget.foodName),
        child: new Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          color: Colors.green[400],
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Image.asset(
                'assets/images/home/test.png',
                height: 55.0,
              ),
              new Container(
                padding: EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      widget.foodName,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Comfortaa",
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )),
                    new Text(
                      "Food Stall Name",
                      style: TextStyle(
                        fontFamily: "Comfortaa",
                        color: Colors.white
                      )
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );*/
  }
}