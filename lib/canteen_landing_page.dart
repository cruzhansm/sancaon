import 'package:flutter/material.dart';
import 'package:sancaon/canteen_data/Bunzel_Canteen/bunzel_stalls.dart';
import 'canteen_data/final_data_canteens.dart';
import 'canteen_data/data.dart';

dynamic foodItemContent(String nameOfCanteen) {
  CanteenData newCanteen = new CanteenData();
  BunzelStalls newStall = new BunzelStalls();

  int foodItemCount = 0;

  final int numberOfFoodItems = 10;
    
  List<Widget> listOfFood() {
    List<Widget> foodItem = new List();
    foodItem.add(new Container(
      margin: EdgeInsets.only(left: 25.0),
      child: new Row(
        children: <Widget> [
          new Expanded(
            flex: 3,
            child: new Text(
              "Alphabetic"
            ),
          ),
          new Expanded(
            flex: 1,
            child: new InkWell(
              onTap: () => debugPrint("sorting"),
              enableFeedback: true,
              child: new Icon(
                Icons.sort
              ),
            )
          )
        ]
      ),
    ));
    while(foodItemCount <= numberOfFoodItems - 1) {
      foodItem.add(new FoodItems(
        food: newStall.bunzelCS4.indexedFoodList[foodItemCount+1],
        stall: newCanteen.bunzelCanteen
        /*foodImage: 'assets/images/canteen-menu/food1.jpg',//newData.imageOfFood[newData.nameOfFood[foodItemCount]],
        foodPrice: 0.0,//newData.priceOfFood[newData.nameOfFood[foodItemCount]],
        stallName: newCanteen.bunzelCanteen.canteenStalls[0]*/   
      ));
      foodItemCount++;
    }
      return foodItem;
    }
  return listOfFood();
}

class CanteenMenu extends StatelessWidget {
  final String nameOfCanteen;
  final String locationOfCanteen;

  static Map<String, String> canteenImages = {
    'Bunzel Basement': 'assets/images/home/canteen.jpg',
    'Bunzel Canteen': 'assets/images/canteen-pictures/canteen_bunzel.jpg',
    'SMED Canteen': 'assets/images/home/canteen3.jpg',
    'RH Canteen': 'assets/images/home/canteen4.jpg',
    'SAFAD Canteen': 'assets/images/home/canteen5.jpg',
    'Cafe+': 'assets/images/home/canteen6.jpg'
  };

  CanteenMenu({this.nameOfCanteen, this.locationOfCanteen});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new SafeArea(
        child: new Stack(
          children: <Widget>[
            new SizedBox(
              width: double.infinity,
              child: new Image.asset(
                canteenImages[nameOfCanteen]
              )
            ),
            new Container(
              color: Colors.black.withOpacity(0.5),
              height: MediaQuery.of(context).size.height - 100.0
            ),
            new IconButton(
              onPressed: () => {
                Navigator.of(context).pop(context)
              },
              icon: new Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
                size: 30.0
              )
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(25.0, 155.0, 0.0, 0.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    nameOfCanteen,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Dosis",
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),
                  new Text(
                    locationOfCanteen,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white
                    )
                  )
                ],
              )
            ),
            new Container(
              margin: EdgeInsets.only(top:220),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: new ListView(
                padding: EdgeInsets.only(top: 15.0),
                children: foodItemContent(nameOfCanteen)
              )
            )
          ]
        ),
      )
    );
  }
}

class FoodItems extends StatelessWidget {
  final FoodItem food;
  final Canteen stall;
  /*final double foodPrice;
  final String foodImage;
  final String stallName;*/
  
  FoodItems({this.food, this.stall});

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
                    food.foodImage,
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
                        food.foodName,
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
                      "Stall: " + stall.canteenStalls[4],
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Quicksand"
                      )
                    ),
                    new Text(
                      "Price: " + food.foodPrice.toString(),
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Quicksand"
                      )
                    ),
                    new Text(
                      "Rating: ",//+ _finalTrafficRating,
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
                    new Text(food.foodIngredients[0]),
                    new Text(food.foodIngredients[1]),
                    new Text(food.foodIngredients[2]),
                    new Text(food.foodIngredients[3])
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
                    new Text(food.foodAllergens[0])
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
      margin: EdgeInsets.symmetric(vertical: 2.5, horizontal: 20.0),
      child: new InkWell(
        onTap: () => {
          createDialog(context)
        },
        child: new Card(
          elevation: 8.0,
          color: Colors.grey[100],
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                child: new SizedBox(
                  height: 75.0,
                  width: 75.0,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: new Image.asset(
                      food.foodImage
                    )
                  )
                ),
              ),
              new Expanded(
                child: new Container(
                  margin: EdgeInsets.all(10.0),
                  child: new Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      new Text(
                        food.foodName,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      new Text(
                        stall.canteenStalls[4]
                      ),
                      new Text(
                        "Price: " + food.foodPrice.toString(),
                        style: TextStyle(
                          color: Colors.red
                        )
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

// T0DO: LOOPING OF FOODITEM


/*class CanteenMenu extends StatelessWidget {
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
}*/