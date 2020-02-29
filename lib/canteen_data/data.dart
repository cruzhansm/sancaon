import 'package:flutter/material.dart';

 class Data {
  List<String> nameOfFood = [
    "Adobo with Rice",
    "Arrozcaldo",
    "Barbeque with Rice",
    "'Burp' Burger",
    "Chopsuey",
    "Chicken with Rice",
    "Giniling with Rice",
    "Pancit with Rice",
    "Siomai with Rice",
    "Tempura with Rice"
  ];

  Map<String, double> priceOfFood = {
    "Adobo with Rice" : 45.0,
    "Arrozcaldo" : 30.0,
    "Barbeque with Rice" : 35.0,
    "'Burp' Burger" : 30.0,
    "Chopsuey" : 35.0,
    "Chicken with Rice" : 55.0,
    "Giniling with Rice" : 30.0,
    "Pancit with Rice" : 35.0,
    "Siomai with Rice" : 30.0,
    "Tempura with Rice" : 40.0
  };

  Map<String, String> imageOfFood = {
    "Adobo with Rice" : 'assets/images/canteen-menu/food1.jpg',
    "Arrozcaldo" : 'assets/images/canteen-menu/food2.jpg',
    "Barbeque with Rice" : 'assets/images/canteen-menu/food3.jpg',
    "'Burp' Burger" : 'assets/images/canteen-menu/food4.jpg',
    "Chopsuey" : 'assets/images/canteen-menu/food5.jpg',
    "Chicken with Rice" : 'assets/images/canteen-menu/food6.jpg',
    "Giniling with Rice" : 'assets/images/canteen-menu/food7.jpg',
    "Pancit with Rice" : 'assets/images/canteen-menu/food8.jpg',
    "Siomai with Rice" : 'assets/images/canteen-menu/food9.jpg',
    "Tempura with Rice" : 'assets/images/canteen-menu/food10.jpg'
  };
}

class BunzelBasement {
  List<String> bunzelStalls = [
    "Izza's Snack Haus",
    "MK Burgeran Food Stand",
    "Healthylicious",
    "Amboy's Food Corner",
    "Santino's",
    "Franco's Tasty Treats Corner",
    "Pabugnawan Refreshment and Snack Haus",
  ];
}

class Canteen {
  String canteenName;
  Image canteenImage;
  List<String> canteenStalls;

  Canteen({this.canteenName, this.canteenImage, this.canteenStalls});
}

class FoodStall {
  Map<int, FoodItem> indexedFoodList = new Map();

  FoodStall({this.indexedFoodList});
}

class FoodItem {
  String foodName;
  double foodPrice;
  String foodImage;
  String rating;
  List<String> foodIngredients = new List();
  List<String> foodAllergens = new List();

  FoodItem({this.foodName, this.foodPrice, this.foodImage, this.rating, this.foodIngredients, this.foodAllergens});
}