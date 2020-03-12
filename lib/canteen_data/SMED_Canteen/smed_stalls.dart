import 'package:sancaon/canteen_data/data.dart';

class SMEDStalls {
  // Jolly Bubbly
  FoodStall smedCS1 = new FoodStall( 
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Hotdog Sandwich",
        foodPrice: 20.0,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Jolly_Bubbly_Food_Court/jolly2.jpg",
        rating: "green",
        foodIngredients: [
          "Buns (Bread)",
          "Hotdog",
          "Ketchup",
          "Mayonnaise"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      2: new FoodItem(
        foodName: "Siomai",
        foodPrice: 7.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Jolly_Bubbly_Food_Court/jolly4.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
    }
  );

  // Kiara Loraine
  FoodStall smedCS2 = new FoodStall(
    indexedFoodList: {
      1: new FoodItem(
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
      2: new FoodItem(
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
      3: new FoodItem(
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
      4: new FoodItem(
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
      5: new FoodItem(
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
      6: new FoodItem(
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
      7: new FoodItem(
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
      10: new FoodItem(
        foodName: "Burp Burger",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos10.jpg",
        rating: "green",
        foodIngredients: [
          "Patty (Beef)"
        ],
        foodAllergens: null
      ),
      11: new FoodItem(
        foodName: "Sweet Corn",
        hasManyOptions: true,
        manyPrices: [
          20.00,
          30.00
        ],
        foodImage: "assets/images/canteen-menu/BUNZELBasement/chicos11.jpg",
        rating: "green",
        foodIngredients: [
          "Corn",
          "Condensed Milk",
          "Cheese"
        ],
        foodAllergens: [
          "Cheese",
          "Milk"
        ]
      ),
    }
  );

  // Tiktilaok
  FoodStall smedCS3 = new FoodStall( 
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Fast Chix",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok1.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      2: new FoodItem(
        foodName: "Fast Liempo",
        foodPrice: 75.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok3.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Liempo",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      3: new FoodItem(
        foodName: "Fast OMG",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok6.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Liempo",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Pork",
          "Chicken"
        ]
      ),
      4: new FoodItem(
        foodName: "Half Chicken",
        foodPrice: 140.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok2.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      5: new FoodItem(
        foodName: "Quarter Chicken",
        foodPrice: 85.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok7.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      6: new FoodItem(
        foodName: "Sarap my Liempo",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok5.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Liempo",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      7: new FoodItem(
        foodName: "Tiktilaok Sarap",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Tiktilaok/tiktilaok4.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken sauce"
        ],
        foodAllergens: [
          "Chicken"
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