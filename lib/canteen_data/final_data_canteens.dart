import 'package:flutter/material.dart';
import 'data.dart';

class CanteenData {
  Canteen bunzelBasement = new Canteen(
    canteenName: "Bunzel Basement",
    canteenImage: new Image.asset('assets/images/canteen-pictures/canteen_bunzel.jpg'),
    canteenStalls: [
      "Rich Bros (Chicos)"
    ]
  );

  Canteen bunzelCanteen = new Canteen(
    canteenName: "Bunzel Canteen",
    canteenImage: new Image.asset('assets/images/canteen-pictures/canteen_bunzel.jpg'),
    canteenStalls: [
      "Izza's Snack Haus",
      "MK Burgeran Food Stand",
      "Healthylicious",
      "Amboy's Food Corner",
      "Santino's",
      "Franco's Tasty Treats Corner",
      "Pabugnawan Refreshment and Snack Haus",
    ]
  );

  Canteen smedCanteen = new Canteen(
    canteenName: "SMED Canteen",
    canteenImage: new Image.asset('assets/images/canteen-pictures/canteen_bunzel.jpg'),
    canteenStalls: [
      "Jolly Bubbly Food Court",
      "Kiara Loraine FoodHaus",
      "Tiktilaok"
    ]
  );

  Canteen rhCanteen = new Canteen(
  );

  Canteen safadCanteen = new Canteen(

  );

  Canteen cafepCanteen = new Canteen(

  );
}