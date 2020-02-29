import 'package:flutter/material.dart';
import 'package:sancaon/canteen_data/data.dart';

class BunzelStalls {
  FoodStall bunzelCS4 = new FoodStall(
    indexedFoodList: {
      1 : new FoodItem(
        foodName: "Chicken Finger",
        foodPrice: 40.00,
        foodImage:"assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/bunzel.jpg",
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
      2: new FoodItem(
        foodName: "Potato Balls",
        foodPrice: 22.00,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's Food Corner/bunzel.jpg",
        rating: "green",
        foodIngredients: [
          "Potato",
          "Ham",
          "Cheese"
        ],
        foodAllergens: [
          "Cheese"
        ]
      )
    }
  );
}