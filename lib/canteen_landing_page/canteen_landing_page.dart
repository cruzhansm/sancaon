import 'package:flutter/material.dart';
import 'package:sancaon/canteen_data/Bunzel_Basement/bunzelb_stalls.dart';
import 'package:sancaon/canteen_data/Bunzel_Canteen/bunzel_stalls.dart';
import 'package:sancaon/canteen_data/Cafeplus_Canteen/cafeplus_stalls.dart';
import 'package:sancaon/canteen_data/RH_Canteen/rh_stalls.dart';
import 'package:sancaon/canteen_data/SAFAD_Canteen/safad_stalls.dart';
import 'package:sancaon/canteen_data/SMED_Canteen/smed_stalls.dart';
import 'package:sancaon/canteen_data/data.dart';
import 'package:sancaon/canteen_data/final_data_canteens.dart';
import 'package:sancaon/canteen_landing_page/sorting_algo.dart';

dynamic foodItemContent(String nameOfCanteen, String sortingMethod) {
  dynamic foodItems;

  CanteenData newCanteen = new CanteenData();
  BunzelStalls bunzelStalls = new BunzelStalls();
  BunzelBStalls bunzelBStalls = new BunzelBStalls();
  SMEDStalls smedStalls = new SMEDStalls();
  RHStalls rhStalls = new RHStalls();
  SAFADStalls safadStalls = new SAFADStalls();
  CafeplusStalls cafeplusStalls = new CafeplusStalls();

  List<FoodStall> bunzelCanteenFoodStalls = [
    bunzelStalls.bunzelCS1,
    bunzelStalls.bunzelCS2,
    bunzelStalls.bunzelCS3,
    bunzelStalls.bunzelCS4,
    bunzelStalls.bunzelCS5,
    bunzelStalls.bunzelCS6,
    bunzelStalls.bunzelCS7
  ];

  List<FoodStall> bunzelBasementFoodStalls = [
    bunzelBStalls.bunzelBS1
  ];

  List<FoodStall> smedCanteenFoodStalls = [
    smedStalls.smedCS1,
    smedStalls.smedCS2,
    smedStalls.smedCS3
  ];

  List<FoodStall> rhCanteenFoodStalls = [
    rhStalls.rhCS1
  ];

  List<FoodStall> safadCanteenFoodStalls = [
    safadStalls.safadCS1,
    safadStalls.safadCS2,
    safadStalls.safadCS3,
    safadStalls.safadCS4,
    safadStalls.safadCS5,
    safadStalls.safadCS6,
    safadStalls.safadCS7,
    safadStalls.safadCS8
  ];

  List<FoodStall> cafePlusFoodStalls = [
    cafeplusStalls.cafeplusCS1
  ];

  Map<Canteen, List<FoodStall>> selectedStalls = {
    newCanteen.bunzelBasement : bunzelBasementFoodStalls,
    newCanteen.bunzelCanteen : bunzelCanteenFoodStalls,
    newCanteen.smedCanteen : smedCanteenFoodStalls,
    newCanteen.rhCanteen : rhCanteenFoodStalls,
    newCanteen.safadCanteen : safadCanteenFoodStalls,
    newCanteen.cafeplusCanteen : cafePlusFoodStalls
  };

  Map<Canteen, dynamic> stallGroupList = {
    newCanteen.bunzelBasement : bunzelBStalls,
    newCanteen.bunzelCanteen : bunzelStalls,
    newCanteen.smedCanteen : smedStalls,
    newCanteen.rhCanteen : rhStalls,
    newCanteen.safadCanteen : safadStalls,
    newCanteen.cafeplusCanteen : cafeplusStalls
  };

  Map<String, Canteen> selectedCanteen = {
    'Bunzel Basement' : newCanteen.bunzelBasement,
    'Bunzel Canteen': newCanteen.bunzelCanteen,
    'SMED Canteen': newCanteen.smedCanteen,
    'RH Canteen': newCanteen.rhCanteen,
    'SAFAD Canteen': newCanteen.safadCanteen,
    'Cafe+': newCanteen.cafeplusCanteen
  };

  int foodItemCount = 0;
  int foodStallCount = 0;
  int numberOfFoodItems;

  final int numberOfFoodStalls = selectedStalls[selectedCanteen[nameOfCanteen]].length;
  
  List<Widget> listOfFood() {
    List<Widget> foodItem = new List();
    while(foodStallCount <= numberOfFoodStalls - 1) {
      Canteen currentCanteen = selectedCanteen[nameOfCanteen];
      List<FoodStall> currentSelectedStalls = selectedStalls[currentCanteen];
      FoodStall currentStall = currentSelectedStalls[foodStallCount];

      numberOfFoodItems = stallGroupList[currentCanteen].calculateFoodItemsLength(currentStall);

      while(foodItemCount <= numberOfFoodItems-1) {
        foodItem.add(new FoodItems(
          food: currentStall.indexedFoodList[foodItemCount+1],
          stall: currentCanteen.canteenStalls[foodStallCount],
        ));
        foodItemCount++;
      }
      foodItemCount = 0;
      foodStallCount++;
    }
    return foodItem;
  }
  if(sortingMethod == "by Alphabetical"){
    foodItems = sortFoodItemsByAlphabetical(listOfFood());
  }
  else if(sortingMethod == 'by Price'){
    foodItems = sortFoodItemsByPrice(listOfFood());
  }
  else if(sortingMethod == 'by Stall'){
    foodItems = sortFoodItemsByStall(listOfFood());
  }
  else if(sortingMethod == 'by TLF Rating'){
    foodItems = sortFoodItemsByTLF(listOfFood());
  }
  return foodItems;
}

class CanteenMenu extends StatefulWidget {
  final String nameOfCanteen;
  final String locationOfCanteen;

  static Map<String, String> canteenImages = {
    'Bunzel Basement': 'assets/images/canteen-pictures/canteen_bunzelbasement2.jpg',
    'Bunzel Canteen': 'assets/images/canteen-pictures/canteen_bunzel.jpg',
    'SMED Canteen': 'assets/images/canteen-pictures/canteen_smed.jpg',
    'RH Canteen': 'assets/images/canteen-pictures/canteen_rh.jpg',
    'SAFAD Canteen': 'assets/images/canteen-pictures/canteen_safad.jpg',
    'Cafe+': 'assets/images/canteen-pictures/canteen_cafe+.jpg'
  };

  CanteenMenu({this.nameOfCanteen, this.locationOfCanteen});

  @override
  _CanteenMenuState createState() => _CanteenMenuState();
}

class _CanteenMenuState extends State<CanteenMenu> {
  String sortingMethod = "by Alphabetical";
  dynamic dropdownValue;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new SafeArea(
        child: new Stack(
          children: <Widget>[
            new SizedBox(
              height: 260.0,
              width: double.infinity,
              child: new FittedBox(
                fit: BoxFit.fill,
                child: new Image.asset(
                  CanteenMenu.canteenImages[widget.nameOfCanteen]
                ),
              )
            ),
            new Container(
              color: Colors.black.withOpacity(0.5),
              height: 240.0
            ),
            new Container(
              margin: EdgeInsets.only(top: 10.0),
              child: new FlatButton(
                onPressed: () => Navigator.pop(context),
                shape: CircleBorder(),
                color: Colors.yellow[200],
                child: new Icon(
                  Icons.arrow_back, 
                  color: Colors.black,
                  size: 24.0  
                )
              ),
            ),
            new Container(
              margin: EdgeInsets.only(top: 220.0),
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              height: 70.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: new Container(
                margin: EdgeInsets.only(bottom: 25.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: new DropdownButton(
                        value: dropdownValue,
                        underline: new Container(
                          color: Colors.black,
                          height: 2
                        ),
                        icon: new Icon(
                          Icons.sort,
                          color: Colors.black),
                        hint: new Text(
                          "Sort",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Quicksand",
                            color: Colors.black
                          )
                        ),
                        items: [
                          new DropdownMenuItem(
                            child: new Text("Alphabetical"),
                            value: "by Alphabetical"
                          ),
                          new DropdownMenuItem(
                            child: new Text("Price"),
                            value: "by Price"
                          ),
                          new DropdownMenuItem(
                            child: new Text("Stall"),
                            value: "by Stall"
                          ),
                          new DropdownMenuItem(
                            child: new Text("TLF Rating"),
                            value: "by TLF Rating"
                          )
                        ], 
                        onChanged: (dropdownValue) => {
                          setState(() {
                            sortingMethod = dropdownValue; 
                          }),
                          debugPrint(sortingMethod)
                        }
                      ),
                    ),
                    new Text(
                      sortingMethod,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Quicksand",
                        //fontWeight: FontWeight.bold
                      )
                    ),
                  ],
                ),
              )
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(25.0, 150.0, 0.0, 0.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    widget.nameOfCanteen,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Dosis",
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),
                  new Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
                    child: new Text(
                      widget.locationOfCanteen,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Quicksand",
                        color: Colors.black
                      )
                    ),
                  )
                ],
              )
            ),
            new Container(
              margin: EdgeInsets.only(top: 265.0),
              color: Colors.white,
              child: new ListView(
                padding: EdgeInsets.only(top: 5.0),
                children: foodItemContent(widget.nameOfCanteen, sortingMethod)
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
  final String stall;

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
              new Stack(
                children: <Widget>[
                  // new SizedBox(
                  //   height: 200.0,
                  //   child: new FittedBox(
                  //     fit: BoxFit.fill,
                  //     child: new Image.asset(
                  //       food.foodImage,
                  //     ),
                  //   ),
                  // ),
                  new Image.asset(food.foodImage),
                  new Container(
                    margin: EdgeInsets.all(10.0),
                    child: new InkWell(
                      onTap: () => {
                        Navigator.pop(context)
                      },
                      child: new Icon(
                        Icons.close, 
                        color: Colors.white,
                        size: 24.0  
                      )
                    ),
                  ),
                ],
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
                child: new Text(
                  food.foodName,
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    //decoration: TextDecoration.underline,
                    fontSize: 36.0,
                    fontFamily: "Acme",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
                child: new Text(
                  stall,
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                    color: Colors.black45
                  )
                )
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 5.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      color: Colors.green[400],
                      child: new Text(
                        "₱" + food.foodPrice.toString(),
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        )
                      )
                    ),
                    new Container(
                      child: new Column(
                        children: <Widget>[
                          new Text(
                            "Traffic Light Food Rating",
                            style: TextStyle(
                              fontFamily: "Quicksand"
                            ),
                          ),
                          food.rating == 'green' ? new Row(
                            children: <Widget>[
                              new Icon(Icons.brightness_1, color: Colors.green),
                              new Icon(Icons.brightness_1, color: Colors.green),
                              new Icon(Icons.brightness_1, color: Colors.green)
                            ],
                          ) :food.rating == 'yellow' ? new Row(
                            children: <Widget>[
                              new Icon(Icons.brightness_1, color: Colors.yellow),
                              new Icon(Icons.brightness_1, color: Colors.yellow),
                              new Icon(Icons.brightness_1, color: Colors.yellow)
                            ],
                          ) : new Row(
                            children: <Widget>[
                              new Icon(Icons.brightness_1, color: Colors.red),
                              new Icon(Icons.brightness_1, color: Colors.red),
                              new Icon(Icons.brightness_1, color: Colors.red)
                            ],
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
                child: new Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: new Text(
                    'Ingredients'
                  )
                ),
              ),
              new Container(
                margin: EdgeInsets.symmetric(horizontal : 10.0),
                child: new Divider(
                  color: Colors.black,
                  thickness: 0.2
                ),
              ),
              new Container(
                margin: EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    new Text(food.foodIngredients[0]),
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
                    food.foodAllergens == null ? new Text("No allergens") : new Text(food.foodAllergens[0])
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 8.0,
          color: Colors.pink[50],
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                child: new ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
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
                          fontFamily: "Acme",
                        )
                      ),
                      new Text(
                        stall,
                        style: TextStyle(
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                        )),
                      food.hasManyOptions == true ? new Row(
                        children: listOfPrices(food)
                      ) : new Row(
                        children: <Widget>[
                          new Text(
                            "Price: ",
                            style: TextStyle(
                              fontFamily: "Quicksand",
                              color: Colors.black45
                            )
                          ),
                          new Text(
                            "₱" + food.foodPrice.toString(),
                            style: TextStyle(
                              fontFamily: "Quicksand",
                              color: Colors.blue
                            ),
                          )
                        ],
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

dynamic listOfPrices(FoodItem food) {
  int priceCounter = 0;

  List<Widget> priceList() {
    List<Widget> foodPrices = new List();
    foodPrices.add(new Text(
        "Prices: ",
        style: TextStyle(
          fontFamily: "Quicksand",
          color: Colors.black45
        )
      ));

    while(priceCounter <= food.manyPrices.length-1) {
      foodPrices.add(new Text(
        priceCounter == food.manyPrices.length-1 ? "₱" +  food.manyPrices[priceCounter].toString() : "₱" + food.manyPrices[priceCounter].toString() + ", ",
        style: TextStyle(
          fontFamily: "Quicksand",
          color: Colors.blue,
        )
      ));
      priceCounter++;
    }
    return foodPrices;
  }
  return priceList();
}