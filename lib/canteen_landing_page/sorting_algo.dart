import 'package:flutter/material.dart';

dynamic sortFoodItemsByAlphabetical(List<Widget> foodItem) {
  List<Widget> alphabeticalSort = foodItem;
  for(int i = 0; i < alphabeticalSort.length; i++){
    for(int j = i+1; j < alphabeticalSort.length; j++){
      dynamic food1 = alphabeticalSort[i];
      dynamic food2 = alphabeticalSort[j];
      dynamic temp;
      String food1Name = food1.food.foodName;
      String food2Name = food2.food.foodName;
      //debugPrint(food1Name.compareTo(food2Name).toString());
      if(food1Name.compareTo(food2Name) == 1){
        //debugPrint("Switched!");
        temp = alphabeticalSort[j];
        alphabeticalSort[j] = alphabeticalSort[i];
        alphabeticalSort[i] = temp;
      }
      //debugPrint(food1Name + " " + food2Name);
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

dynamic sortFoodItemsByTLF(List<Widget> foodItem) {
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
