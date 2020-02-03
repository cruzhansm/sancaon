import 'package:flutter/material.dart';
import 'data.dart';

class CanteenMenu extends StatelessWidget {
  final String nameOfCanteen;
  Data newData = new Data();

  CanteenMenu({this.nameOfCanteen});

  int foodItemCount = 0;
  final int numberOfFoodItems = 10; // temp

  @override
  Widget build(BuildContext context) {
    List<Widget> listOfFood() {
      List<Widget> foodItem = new List();

      while(foodItemCount <= numberOfFoodItems-1) {
        foodItem.add(new FoodItem(
          canteenName: nameOfCanteen,
          foodName : newData.nameOfFood[foodItemCount],
          foodPrice: newData.priceOfFood[newData.nameOfFood[foodItemCount]],
        ));
        foodItemCount++;
      }
      return foodItem;
    }
    return ListView(
      children: listOfFood()
    );
  }
}

class FoodItem extends StatefulWidget {
  final String canteenName;
  final String foodName;
  final double foodPrice;

  FoodItem({this.canteenName, this.foodName, this.foodPrice});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: 
        new InkWell(
          splashColor: Colors.red,
          onTap: () => print("Open the food item page for " + widget.foodName),
          child: new Container(
            color: Colors.lightGreen,
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
            child: new Row(
              children: <Widget> [
                new Image.asset(
                  'assets/images/test.png',
                  height: 60.0,
                ),
                new Container(
                  //color: Colors.red,
                  margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [ 
                      new Text(
                      widget.foodName,
                      textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "ABeeZee"
                        ),
                      ),
                      new Text(
                        "Price: " + widget.foodPrice.toString(),
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "ABeeZee"
                        )
                      ),
                    ]
                  )
                ),
              ]
            )
          ),
        )
    );
  }
}