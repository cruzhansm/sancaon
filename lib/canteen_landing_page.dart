import 'package:flutter/material.dart';
import 'data.dart';

dynamic foodItemContent(String nameOfCanteen) {
  Data newData = new Data();
  int foodItemCount = 0;

  final int numberOfFoodItems = newData.nameOfFood.length;

  Map <String, String> canteenNames = {
    'Bunzel Basement': 'BUNZEL',
    'Bunzel Canteen': 'BUNZEL',
    'SMED Canteen': 'SMED',
    'RH Canteen': 'RH',
    'SAFAD Canteen': 'SAFAD',
    'Cafe+': 'CAFE+'
  };
  
  List<Widget> listOfFood() {
    List<Widget> foodItem = new List();
    foodItem.add(new Center(
      child: new Container(
        constraints: BoxConstraints(
          minWidth: double.infinity
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(canteenNames[nameOfCanteen],
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

    while(foodItemCount <= numberOfFoodItems - 1) {
      foodItem.add(new FoodItem(
        foodName: newData.nameOfFood[foodItemCount],
        foodName2: newData.nameOfFood[foodItemCount+1],
        foodImage: newData.imageOfFood[newData.nameOfFood[foodItemCount]],
        foodImage2: newData.imageOfFood[newData.nameOfFood[foodItemCount+1]],
        foodPrice: newData.priceOfFood[newData.nameOfFood[foodItemCount]],
        foodPrice2: newData.priceOfFood[newData.nameOfFood[foodItemCount+1]],
      ));
      foodItemCount+=2;
    }
      return foodItem;
    }
  return listOfFood();
}

class CanteenMenu extends StatelessWidget {
  final String nameOfCanteen;

  CanteenMenu({this.nameOfCanteen});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: ListView(children: foodItemContent(nameOfCanteen))
      )
    );
  }
}
class FoodItem extends StatefulWidget {
  final String foodName;
  final String foodName2;
  final String foodImage;
  final String foodImage2;
  final double foodPrice;
  final double foodPrice2;

  FoodItem({this.foodName, this.foodPrice, this.foodName2, this.foodImage, this.foodImage2, this.foodPrice2});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  String _finalFoodImage;
  String _finalFoodName;
  String _finalStallName = "Placeholder sa";
  String _finalFoodPrice;
  String _finalTrafficRating = 'Placeholder napud';

  createDialog(BuildContext context) {
    return showDialog(context: context, builder: (context) {
      return new Dialog(
        //backgroundColor: Colors.red,
        child: new Container(
          constraints: BoxConstraints(
            minWidth: double.infinity,
          ),
          child: new ListView(
            children: <Widget>[
              new SizedBox(
                height: 250.0,
                child: new FittedBox(
                  fit: BoxFit.fill,
                  child: new Image.asset(
                    _finalFoodImage,
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.all(10.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      flex: 3,
                        child: new Text(
                        _finalFoodName,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: "Dosis",
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    new Icon(
                      Icons.brightness_1,
                      color: Colors.green[400]
                    ),
                    new Icon(
                      Icons.brightness_1,
                      color: Colors.green[400]
                    ),
                    new Icon(
                      Icons.brightness_1,
                      color: Colors.green[400]
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      "Stall: " + _finalStallName,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Quicksand"
                      )
                    ),
                    new Text(
                      "Price: " + _finalFoodPrice,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Quicksand"
                      )
                    ),
                    new Text(
                      "Rating: " + _finalTrafficRating,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Quicksand"
                      )
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
                child: new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.fastfood
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        'Ingredients'
                      )
                    )
                  ],
                ),
              ),
              new Divider(
                color: Colors.black,
                thickness: 2.0 
              ),
              new Container(
                margin: EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    new Text("Ingredient 1"),
                    new Text("Ingredient 2"),
                    new Text("Ingredient 3"),
                    new Text("Ingredient 4"),
                    new Text("Ingredient 5"),
                  ],
                )
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
                child: new Row(
                  children: <Widget>[
                    new Icon(
                      Icons.local_convenience_store
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: new Text(
                        'Allergens'
                      )
                    )
                  ],
                ),
              ),
              new Divider(
                color: Colors.black,
                thickness: 2.0 
              ),
              new Container(
                margin: EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    new Text("Ingredient 1"),
                    new Text("Ingredient 2"),
                    new Text("Ingredient 3"),
                    new Text("Ingredient 4"),
                    new Text("Ingredient 5"),
                  ],
                )
              ),
            ],
          ),
        )
      );
    }
    );
  }

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
                    child: new InkWell(
                      onTap: () {
                        _finalFoodImage = widget.foodImage;
                        _finalFoodName = widget.foodName;
                        _finalFoodPrice = widget.foodPrice.toString();
                        createDialog(context);
                      },
                      child: new Image.asset(
                        widget.foodImage,
                      ),
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
                      child: new InkWell(
                      onTap: () {
                        _finalFoodImage = widget.foodImage2;
                        _finalFoodName = widget.foodName2;
                        _finalFoodPrice = widget.foodPrice2.toString();
                        createDialog(context);
                      },
                      child: new Image.asset(
                        widget.foodImage2,
                      ),
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
  }
}