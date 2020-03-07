import 'package:sancaon/canteen_data/data.dart';

class BunzelBStalls {
  FoodStall bunzelBS1 = new FoodStall(
    indexedFoodList: {
      1 : new FoodItem(
        foodName: "Chicken Fillet",
        foodPrice: 45.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos2.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken",
          "Bread crumbs",
          "Egg"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      2 : new FoodItem(
        foodName: "Cornsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos1.jpg",
        rating: "yellow",
        foodIngredients: [
          "Beef",
          "Eggs",
          "Salt"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      3 : new FoodItem(
        foodName: "Tapsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos9.jpg",
        rating: "red",
        foodIngredients: [
          "Pork",
          "Egg",
          "Rice"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      4 : new FoodItem(
        foodName: "Longsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos7.jpg",
        rating: "yellow",
        foodIngredients: [
          "Longganisa",
          "Egg",
          "Rice"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      5 : new FoodItem(
        foodName: "Pork Chop",
        foodPrice: 50.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos3.jpg",
        rating: "red",
        foodIngredients: [
          "Pork",
          "Bread crumbs",
          "Egg",
          "Rice"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      6 : new FoodItem(
        foodName: "Sigsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos5.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Eggs",
          "Rice"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      7 : new FoodItem(
        foodName: "Steamed Rice with Siomai",
        foodPrice: 40.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos4.jpg",
        rating: "red",
        foodIngredients: [
          "Pork",
          "Green peas",
          "Rice"
        ],
        foodAllergens: null
      ),
      8: new FoodItem(
        foodName: "Tocisilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos8.jpg",
        rating: "yellow",
        foodIngredients: [
          "Tocino",
          "Egg",
          "Rice"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
      9: new FoodItem(
        foodName: "Baconsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos6.jpg",
        rating: "red",
        foodIngredients: [
          "Bacon",
          "Egg",
          "Rice"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
    }
  );

  int calculateFoodItemsLength(FoodStall foodStall) {
    int foodItems =  foodStall.indexedFoodList.length;
    //debugPrint("This stall's number of items: " + foodItems.toString());
    return foodItems;
  }
}