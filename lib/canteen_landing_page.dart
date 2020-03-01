import 'package:flutter/material.dart';
import 'canteen_data/SAFAD_Canteen/safad_stalls.dart';
import 'canteen_data/Cafeplus_Canteen/cafeplus_stalls.dart';
import 'canteen_data/Bunzel_Basement/bunzelb_stalls.dart';
import 'canteen_data/Bunzel_Canteen/bunzel_stalls.dart';
import 'canteen_data/RH_Canteen/rh_stalls.dart';
import 'canteen_data/SMED_Canteen/smed_stalls.dart';
import 'canteen_data/final_data_canteens.dart';
import 'canteen_data/data.dart';

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

dynamic sortFoodItemsByAlphabetical(List<Widget> foodItem) {
  List<Widget> alphabeticalSort = foodItem;
  for(int i = 0; i < alphabeticalSort.length; i++){
    for(int j = i+1; j < alphabeticalSort.length; j++){
      dynamic food1 = alphabeticalSort[i];
      dynamic food2 = alphabeticalSort[j];
      dynamic temp;
      String food1Name = food1.food.foodName;
      String food2Name = food2.food.foodName;
      debugPrint(food1Name.compareTo(food2Name).toString());
      if(food1Name.compareTo(food2Name) == 1){
        debugPrint("Switched!");
        temp = alphabeticalSort[j];
        alphabeticalSort[j] = alphabeticalSort[i];
        alphabeticalSort[i] = temp;
      }
      debugPrint(food1Name + " " + food2Name);
    }
  }
  return alphabeticalSort;
}

dynamic sortFoodItemsByPrice(List<Widget> foodItem) {
  List<Widget> priceSort = foodItem;
  for(int i = 0; i < priceSort.length; i++){
    for(int j = i+1; j < priceSort.length; j++){
      dynamic food1 = priceSort[i];
      dynamic food2 = priceSort[j];
      dynamic temp;
      double food1Price = food1.food.foodPrice == null? food1.food.manyPrices[0] : food1.food.foodPrice;
      String food1Name = food1.food.foodName;
      double food2Price = food2.food.foodPrice == null? food2.food.manyPrices[0] : food2.food.foodPrice;
      String food2Name = food2.food.foodName;
      debugPrint(food1Name + ": " + food1Price.toString() + " " + food2Name + ": " + food2Price.toString());
      if(food1Price > food2Price){
        temp = priceSort[j];
        priceSort[j] = priceSort[i];
        priceSort[i] = temp;
      }
    }
  }
  return priceSort;
}

dynamic sortFoodItemsByStall(List<Widget> foodItem) {
  List<Widget> stallSort = foodItem;
  for(int i = 0; i < stallSort.length; i++){
    for(int j = i+1; j < stallSort.length; j++){
      dynamic food1 = stallSort[i];
      dynamic food2 = stallSort[j];
      dynamic temp;
      String food1Stall = food1.stall;
      String food2Stall = food2.stall;
      debugPrint(food1Stall.compareTo(food2Stall).toString());
      if(food1Stall.compareTo(food2Stall) == 1){
        debugPrint("Switched!");
        temp = stallSort[j];
        stallSort[j] = stallSort[i];
        stallSort[i] = temp;
      }
    }
  }
  return stallSort;
}

dynamic sortFoodItemsByTLF(List<Widget> foodItem) { // TODO: Special sorting for tlf
  List<Widget> tlfSort = foodItem;
  for(int i = 0; i < tlfSort.length; i++){
    for(int j = i+1; j < tlfSort.length; j++){
      dynamic food1 = tlfSort[i];
      dynamic food2 = tlfSort[j];
      dynamic temp;
      String food1Rating = food1.food.rating;
      String food2Rating = food2.food.rating;
      Map<String, int> foodRating = {
        "green" : 1,
        "yellow" : 2,
        "red" : 3
      };

      debugPrint(foodRating[food1Rating].toString() + " " + foodRating[food2Rating].toString());
      if(foodRating[food1Rating] > foodRating[food2Rating]){
        debugPrint("Switched!");
        temp = tlfSort[j];
        tlfSort[j] = tlfSort[i];
        tlfSort[i] = temp;
      }
      debugPrint(foodRating[food1Rating].toString() + " " + foodRating[food1Rating].toString());
    }
  }
  return tlfSort;
}

class CanteenMenu extends StatefulWidget {
  final String nameOfCanteen;
  final String locationOfCanteen;

  static Map<String, String> canteenImages = {
    'Bunzel Basement': 'assets/images/canteen-pictures/canteen_bunzelbasement.jpg',
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
              width: double.infinity,
              child: new Image.asset(
                CanteenMenu.canteenImages[widget.nameOfCanteen]
              )
            ),
            new Container(
              color: Colors.black.withOpacity(0.5),
              height: 240.0
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
                    widget.nameOfCanteen,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Dosis",
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),
                  new Text(
                    widget.locationOfCanteen,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white
                    )
                  )
                ],
              )
            ),
            new Container(
              margin: EdgeInsets.only(top: 220.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    sortingMethod,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Quicksand"
                    )
                  ),
                  new DropdownButton(
                    value: dropdownValue,
                    underline: new Container(
                      color: Colors.deepPurpleAccent,
                      height: 2
                    ),
                    icon: new Icon(Icons.sort),
                    hint: new Text(
                      "Sort",
                      style: TextStyle(
                        color: Colors.black
                      )),
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
                  )
                ],
              )
            ),
            new Container(
              margin: EdgeInsets.only(top: 270.0),
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
                      "Stall: " + stall,
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
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold
                        )
                      ),
                      new Text(stall),
                      food.hasManyOptions == true ? new Row(
                        children: listOfPrices(food)
                      ) : new Text(
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

dynamic listOfPrices(FoodItem food) {
  int priceCounter = 0;

  List<Widget> priceList() {
    List<Widget> foodPrices = new List();
    foodPrices.add(new Text(
        "Prices: ",
        style: TextStyle(
          color: Colors.red
        )
      ));

    while(priceCounter <= food.manyPrices.length-1) {
      foodPrices.add(new Text(
        priceCounter == food.manyPrices.length-1 ? food.manyPrices[priceCounter].toString() : food.manyPrices[priceCounter].toString() + ", ",
        style: TextStyle(
          color: Colors.red,
        )
      ));
      priceCounter++;
    }
    return foodPrices;
  }
  return priceList();
}