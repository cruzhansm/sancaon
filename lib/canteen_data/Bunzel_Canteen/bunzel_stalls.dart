import 'package:flutter/material.dart';
import 'package:sancaon/canteen_data/data.dart';

class BunzelStalls {  
  //Izza's Snack Haus
  FoodStall bunzelCS1 = new FoodStall(
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Burger Supreme",
        foodPrice: 48.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Patty (Beef)",
          "Ham",
          "Cheese",
          "Eggs",
          "Cabbage",
          "Bun (Bread)"
        ],
        foodAllergens: [
          "Eggs",
          "Cheese"
        ]
      ),
      2: new FoodItem(
        foodName: "Burger with Egg",
        foodPrice: 30.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Patty (Beef)",
          "Eggs",
          "Cabbage",
          "Bun (Bread)"
        ],
        foodAllergens: [
          "Eggs"
        ]
      ),
      3: new FoodItem(
        foodName: "Burger with Egg & Cheese",
        foodPrice: 38.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Patty (Beef)",
          "Eggs",
          "Cheese",
          "Cabbage",
          "Mayonnaise",
          "Ketchup",
          "Bun (Bread)"
        ],
        foodAllergens: [
          "Eggs",
          "Cheese",
          "Ketchup",
          "Mayonnaise"
        ]
      ),
      4: new FoodItem(
        foodName: "Jumbo Size Sandwich",
        foodPrice: 22.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Hotdog",
          "Ketchup",
          "Mayonnaise",
          "Bun (Bread)",
        ],
        foodAllergens: [
          "Ketchup",
          "Mayonnaise"
        ]
      ),
      5: new FoodItem(
        foodName: "King Size Sandwich",
        foodPrice: 27.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Hotdog",
          "Ketchup",
          "Mayonnaise",
          "Bun (Bread)",
        ],
        foodAllergens: [
          "Ketchup",
          "Mayonnaise"
        ]
      ),
    }
  );

//MK Burgeran Food Stand
  FoodStall bunzelCS2 = new FoodStall( 
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Burger Egg & Cheese",  
        hasManyOptions: true,
        manyPrices: [
          20.0,
          28.0,
          30.0,
          38.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Bun (Bread)",
          "Cheese",
          "Egg",
          "Patty (Beef)"
        ],
        foodAllergens: [
          "Cheese",
          "Beef",
          "Eggs"
        ]
      ),
      2: new FoodItem(
        foodName: "Hotdog Cheesezy King",
        hasManyOptions: true,
        manyPrices: [
          22.0,
          28.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Cheese",
          "Iodized Salt",
          "Poultry Meat",
          "Starch"
        ],
        foodAllergens: [
          "Cheese",
          "Poultry Meat"
        ]
      ),
      3: new FoodItem(
        foodName: "Jumbo Hotdog",
        hasManyOptions: true,
        manyPrices: [
          15.0,
          21.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Bread/bun",
          "Hotdog",
          "Ketchup",
          "Mayonnaise"
        ],
        foodAllergens: null
      ),
      4: new FoodItem(
        foodName: "Jumbo Long",
        hasManyOptions: true,
        manyPrices: [
          17.0,
          23.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Bread/bun",
          "Hotdog",
          "Ketchup",
          "Mayonnaise"
        ],
        foodAllergens: null
      ),
    }
  );

//Healthylicious
  FoodStall bunzelCS3 = new FoodStall(
      indexedFoodList: {
        1: new FoodItem(
        foodName: "Banana Cake",
        foodPrice: 25.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
        rating: "green",
        foodIngredients: [
          "Banana Mixture"
        ],
        foodAllergens: null
      ),
      2: new FoodItem(
        foodName: "Champorado",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious9.jpg",
        rating: "green",
        foodIngredients: [
          "Cooked Rice",
          "Tableya (Pure)",
          "Brown Sugar"
        ],
        foodAllergens: null
      ),
      3: new FoodItem(
        foodName: "Egg Pandesal",
        foodPrice: 10.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious3.jpg",
        rating: "green",
        foodIngredients: [
          "Mango Flour",
          "Scrambled Egg"
        ],
        foodAllergens: [
          "Eggs"
        ]
      ),
      4: new FoodItem(
        foodName: "Ensaymada",
        foodPrice: 31.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious8.jpg",
        rating: "green",
        foodIngredients: [
          "Wheat",
          "Flour",
          "Yema",
          "Ube Flavoring"
        ],
        foodAllergens: [
          "Ube"
        ]
      ),
      5: new FoodItem(
        foodName: "Meatroll",
        foodPrice: 25.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
        rating: "green",
        foodIngredients: [
          "Mango Flour",
          "Asado (Pork)",
          "Hard-boiled Egg"
        ],
        foodAllergens: [
          "Eggs"
        ]
      ),
      6 : new FoodItem(
        foodName: "Menudo",
        foodPrice: 45.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Carrots",
          "Potatoes",
          "Onions",
          "Garlic",
          "Tomato sauce"
        ],
        foodAllergens: [
          "Carrots",
          "Tomato Sauce"
        ]
      ),
      7 : new FoodItem(
        foodName: "Siopao",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Asado (Pork)",
          "Bola-bola (Ground pork)",
          "Chicken"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      8: new FoodItem(
        foodName: "Special Biscocho",
        foodPrice: 47.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious7.jpg",
        rating: "green",
        foodIngredients: [
          "Wheat",
          "Flour",
          "White Sugar"
        ],
        foodAllergens: null
      ),
      9: new FoodItem(
        foodName: "Steamed Rice",
        foodPrice: 40.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Rice"
        ],
        foodAllergens: null
      ),
      10: new FoodItem(
        foodName: "Tuna Mini Pizza",
        foodPrice: 25.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious4.jpg",
        rating: "green",
        foodIngredients: [
          "Cooked Tuna",
          "Flour",
          "Cheese"
        ],
        foodAllergens: [
          "Tuna",
          "Cheese"
        ]
      ),
    }
  );

//Amboy's
  FoodStall bunzelCS4 = new FoodStall(
    indexedFoodList: {
      1 : new FoodItem(
        foodName: "Burger Steak",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Ground Pork",
          "Flour",
          "Breadcrumbs",
          "Eggs"
        ],
        foodAllergens: [
          "Eggs"
        ]
      ),
      2 : new FoodItem(
        foodName: "Chicken Finger",
        foodPrice: 40.00,
        hasManyOptions: false,
        foodImage:"assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Flour",
          "Breadcrumbs",
          "Eggs"
        ],
        foodAllergens: [
          "Eggs"
        ]
      ),
      3: new FoodItem(
        foodName: "Chicken Skin",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage:"assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys4.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken Skin",
          "Flour",
          "Spices",
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      4: new FoodItem(
        foodName: "Chicken Style Pork Steak",
        foodPrice: 40.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys2.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Ketchup",
          "Soysauce",
          "Curry Powder"
        ],
        foodAllergens: [
          "Ketchup"
        ]
      ),
      5: new FoodItem(
        foodName: "Chikcen Teriyaki",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys2.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken Wings",
          "Ginger",
          "Cornstarch",
          "Rice Wine"
        ],
        foodAllergens: [
          "Cheese"
        ]
      ),
      6: new FoodItem(
        foodName: "Pork Ginaling",
        foodPrice: 30.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys6.jpg",
        rating: "green",
        foodIngredients: [
          "Ground Pork",
          "Potato",
          "Carrots"
        ],
        foodAllergens: null
      ),
      7: new FoodItem(
        foodName: "Pork Steak",
        foodPrice: 40.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys2.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Calamansi",
          "Soysauce",
          "Spice"
        ],
        foodAllergens: null
      ),
      8 : new FoodItem(
        foodName: "Potato Balls",
        foodPrice: 22.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys2.jpg",
        rating: "green",
        foodIngredients: [
          "Potato",
          "Ham",
          "Cheese"
        ],
        foodAllergens: [
          "Cheese"
        ]
      ),
      9 : new FoodItem(
        foodName: "Sisig",
        foodPrice: 40.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys3.jpg",
        rating: "green",
        foodIngredients: [
          "Pork Face",
          "Soysauce",
          "Spices",
          "Lemon"
        ],
        foodAllergens: null
      ),
      10 : new FoodItem(
        foodName: "String Beans",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys5.jpg",
        rating: "green",
        foodIngredients: [
          "String Beans",
          "Ground Pork",
          "Soysauce",
          "Spices"
        ],
        foodAllergens: null
      ),
    }
  );

//Santino's
  FoodStall bunzelCS5 = new FoodStall(
      indexedFoodList: {
        1: new FoodItem(
        foodName: "Bacon Sausage Bonanza",
        hasManyOptions: true,
        manyPrices: [
          28.0,
          120.0,
          224.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
        rating: "green",
        foodIngredients: [
          "Bacon",
          "Bread",
          "Cheese",
          "Pork",
          "Sausage",
          "Tomato Sauce"
        ],
        foodAllergens: [
          "Cheese",
          "Pork"
        ]
      ),
      2: new FoodItem(
        foodName: "Barbeque Beef Mushroom",
        hasManyOptions: true,
        manyPrices: [
          28.0,
          120.0,
          224.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
        rating: "green",
        foodIngredients: [
          "Bread",
          "Beef",
          "Cheese",
          "Mushroom",
          "Pepper",
          "Tomato Sauce"
        ],
        foodAllergens: [
          "Beef",
          "Cheese"
        ]
      ),
      3: new FoodItem(
        foodName: "Chicken Hawaiian",
        hasManyOptions: true,
        manyPrices: [
          28.0,
          120.0,
          224.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
        rating: "green",
        foodIngredients: [
          "Bread",
          "Cheese",
          "Chicken",
          "Mushroom",
          "Pineapple",
          "Tomato Sauce"
        ],
        foodAllergens: [
          "Cheese",
          "Chicken"
        ]
      ),
      4: new FoodItem(
        foodName: "Hawaiian Madness Supreme",
        hasManyOptions: true,
        manyPrices: [
          28.0,
          120.0,
          224.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
        rating: "green",
        foodIngredients: [
          "Bread",
          "Cheese",
          "Ham",
          "Pineapple",
          "Tomato Sauce"
        ],
        foodAllergens: [
          "Cheese"
        ]
      ),
      5: new FoodItem(
        foodName: "Pepperoni Sorpresa",
        hasManyOptions: true,
        manyPrices: [
          28.0,
          120.0,
          224.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
        rating: "green",
        foodIngredients: [
          "Bread",
          "Cheese",
          "Mushroom",
          "Sausage",
          "Tomato Sauce"
        ],
        foodAllergens: [
          "Cheese"
        ]
      ),
    }
  );
    
//Franco's Tasty Treats Corner
  FoodStall bunzelCS6 = new FoodStall(
      indexedFoodList: {
        1: new FoodItem(
        foodName: "Arrozacalodo",  
        hasManyOptions: true,
        manyPrices: [
          20.0,
          25.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: null
        foodAllergens: null
      ),
      2: new FoodItem(
        foodName: "Burger with drink",  
        hasManyOptions: true,
        manyPrices: [
          27.0,
          28.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: null
        foodAllergens: null
      ),
      3: new FoodItem(
        foodName: "Champurado",  
        hasManyOptions: true,
        manyPrices: [
          20.0,
          25.0
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: null
        foodAllergens: null
      ),
    }
  );
    
//Pabugnawan Refreshment and Snack Haus
  FoodStall bunzelCS7 = new FoodStall(
    indexedFoodList: {
      1: new FoodItem(
      foodName: "Banana Cake",
      foodPrice: 25.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious5.jpg",
      rating: "green",
      foodIngredients: [
        "Banana Mixture"
      ],
      foodAllergens: null
    ),
    2: new FoodItem(
      foodName: "Champorado",
      foodPrice: 20.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious9.jpg",
      rating: "green",
      foodIngredients: [
        "Cooked Rice",
        "Tableya (Pure)",
        "Brown Sugar"
      ],
      foodAllergens: null
    ),
    3: new FoodItem(
      foodName: "Egg Pandesal",
      foodPrice: 10.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious3.jpg",
      rating: "green",
      foodIngredients: [
        "Mango Flour",
        "Scrambled Egg"
      ],
      foodAllergens: [
        "Eggs"
      ]
    ),
    4: new FoodItem(
      foodName: "Ensaymada",
      foodPrice: 31.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious8.jpg",
      rating: "green",
      foodIngredients: [
        "Wheat",
        "Flour",
        "Yema",
        "Ube Flavoring"
      ],
      foodAllergens: [
        "Ube"
      ]
    ),
    5: new FoodItem(
      foodName: "Meatroll",
      foodPrice: 25.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
      rating: "green",
      foodIngredients: [
        "Mango Flour",
        "Asado (Pork)",
        "Hard-boiled Egg"
      ],
      foodAllergens: [
        "Eggs"
      ]
    ),
    6 : new FoodItem(
      foodName: "Menudo",
      foodPrice: 45.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
      rating: "green",
      foodIngredients: [
        "Pork",
        "Carrots",
        "Potatoes",
        "Onions",
        "Garlic",
        "Tomato sauce"
      ],
      foodAllergens: [
        "Carrots",
        "Tomato Sauce"
      ]
    ),
    7 : new FoodItem(
      foodName: "Siopao",
      foodPrice: 20.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
      rating: "green",
      foodIngredients: [
        "Asado (Pork)",
        "Bola-bola (Ground pork)",
        "Chicken"
      ],
      foodAllergens: [
        "Chicken"
      ]
    ),
    8: new FoodItem(
      foodName: "Special Biscocho",
      foodPrice: 47.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious7.jpg",
      rating: "green",
      foodIngredients: [
        "Wheat",
        "Flour",
        "White Sugar"
      ],
      foodAllergens: null
    ),
    9: new FoodItem(
      foodName: "Steamed Rice",
      foodPrice: 40.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
      rating: "green",
      foodIngredients: [
        "Pork",
        "Rice"
      ],
      foodAllergens: null
    ),
    10: new FoodItem(
      foodName: "Tuna Mini Pizza",
      foodPrice: 25.00,
      hasManyOptions: false,
      foodImage: "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious4.jpg",
      rating: "green",
      foodIngredients: [
        "Cooked Tuna",
        "Flour",
        "Cheese"
      ],
      foodAllergens: [
        "Tuna",
        "Cheese"
      ]
    ),
  }
);

  int calculateFoodItemsLength(FoodStall foodStall) {
    int foodItems =  foodStall.indexedFoodList.length;
    debugPrint("This stall's number of items: " + foodItems.toString());
    return foodItems;
  }
}
