import 'package:flutter/material.dart';

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
  @required String foodName;
  @required String foodImage;
  @required String rating;
  @required bool hasManyOptions = false;
  @required List<String> foodIngredients = new List();
  @required List<String> foodAllergens = new List();
  List<double> manyPrices = new List();
  double foodPrice;

  FoodItem({
    this.hasManyOptions, 
    this.foodName, 
    this.foodPrice, 
    this.foodImage, 
    this.rating, 
    this.foodIngredients, 
    this.foodAllergens,
    this.manyPrices
  });
}