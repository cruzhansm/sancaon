import 'package:flutter/material.dart';
import 'package:sancaon/canteen_data/data.dart';

class RHStalls {  
  //Cebu 3-6-2 Canteen
  FoodStall rhCS1 = new FoodStall( // TODO: Lacking pictures
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Bicol Express",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Coconut Milk",
          "Garlic",
          "Pork"
        ],
        foodAllergens: null
      ),
      2: new FoodItem(
        foodName: "Chicken Adobo",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken",
          "Soysauce",
          "Vinegar"
        ],
        foodAllergens: [
          "Chicken",
          "Soy"
        ]
      ),
      3: new FoodItem(
        foodName: "Chicken Strips",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken",
          "Cornstarch",
          "Egg",
          "Flour"
        ],
        foodAllergens: [
          "Chicken",
          "Gluten"
        ]
      ),
      4: new FoodItem(
        foodName: "Chopsuey",
        foodPrice: 15.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Cornstarch",
          "Magic Sarap",
          "Mixed Vegetables"
        ],
        foodAllergens: null
      ),
      5: new FoodItem(
        foodName: "Fried Pork (chopped)",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh4.jpg",
        rating: "green",
        foodIngredients: [
          "Cornstarch",
          "Egg",
          "Flour",
          "Pork",
        ],
        foodAllergens: [
          "Gluten",
          "Soy"
        ]
      ),
      6: new FoodItem(
        foodName: "Lomi",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Ginisa Powder",
          "Magic Sarap",
          "Noodles"
        ],
        foodAllergens: null
      ),
      7: new FoodItem(
        foodName: "Sinugba Baboy",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh2.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Soysauce",
          "Vinegar"
        ],
        foodAllergens: [
          "Soy"
        ]
      ),
      8: new FoodItem(
        foodName: "Pork Humba",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Laurel",
          "Pork",
          "Soysauce"
        ],
        foodAllergens: [
          "Soy"
        ]
      ),
      9: new FoodItem(
        foodName: "Pork Sisig",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh3.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Soysauce",
          "Swor Pepper"
        ],
        foodAllergens: [
          "Soy"
        ]
      ),
      10: new FoodItem(
        foodName: "Pork Tocino",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Ketchup",
          "Pork",
          "Sugar"
        ],
        foodAllergens: [
          "Soy"
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