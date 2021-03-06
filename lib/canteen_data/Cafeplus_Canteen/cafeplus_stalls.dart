import 'package:flutter/material.dart';
import 'package:sancaon/canteen_data/data.dart';

class CafeplusStalls {  
  //Cafe Plus Coffee Shop
  FoodStall cafeplusCS1 = new FoodStall(
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Caldereta",
        foodPrice: 69.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe5.jpg",
        rating: "green",
        foodIngredients: [
          "Carrots",
          "Green Peas",
          "Pork",
          "Potatoes"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      2: new FoodItem(
        foodName: "Triangle Cheese Sandwich",
        foodPrice: 49.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe1.jpg",
        rating: "green",
        foodIngredients: [
          "Milk Bread (Premium)",
          "Quickmelt Cheese"
        ],
        foodAllergens: [
          "Dairy/Lactose"
        ]
      ),
      3: new FoodItem(
        foodName: "Cheezy Tuna",
        foodPrice: 69.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe6.jpg",
        rating: "green",
        foodIngredients: [
          "Cheese",
          "Tuna"
        ],
        foodAllergens: [
          "Cheese"
        ]
      ),
      4: new FoodItem(
        foodName: "Chili Ground Pork",
        foodPrice: 49.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe4.jpg",
        rating: "green",
        foodIngredients: [
          "Chili",
          "Ground Pork"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      5: new FoodItem(
        foodName: "Chorizo",
        foodPrice: 49.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe8.jpg",
        rating: "green",
        foodIngredients: [
          "Ground Pork"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      6: new FoodItem(
        foodName: "Garlic Spam",
        foodPrice: 69.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe3.jpg",
        rating: "green",
        foodIngredients: [
          "Garlic",
          "Spam"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      7: new FoodItem(
        foodName: "Lasagna with Garlic Bread",
        foodPrice: 99.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe7.jpg",
        rating: "green",
        foodIngredients: [
          "Pasta",
          "Tomato Sauce"
        ],
        foodAllergens: null
      ),
      8: new FoodItem(
        foodName: "Spaghetti with Garlic Bread",
        foodPrice: 69.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe9.jpg",
        rating: "green",
        foodIngredients: [
          "Hotdog",
          "Pasta",
          "Tomato Sauce"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      9: new FoodItem(
        foodName: "Tuna Melt Sandwich",
        foodPrice: 99.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/CAFE+/cafe2.jpg",
        rating: "green",
        foodIngredients: [
          "Bread",
          "Cheese",
          "Tuna"
        ],
        foodAllergens: [
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