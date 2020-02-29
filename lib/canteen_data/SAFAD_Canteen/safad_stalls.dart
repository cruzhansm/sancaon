import 'package:sancaon/canteen_data/data.dart';
import 'package:flutter/material.dart';

class SAFADStalls {
  //Panlasang Pinoy
  FoodStall safadCS1 = new FoodStall(
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Breaded Chicken",
        hasManyOptions: true,
        manyPrices: [
          53.00,
          65.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang4.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken breast",
          "Seasoning"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      2: new FoodItem(
        foodName: "Breaded Porkchop",
        hasManyOptions: true,
        manyPrices: [
          53.00,
          65.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang6.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Seasoning"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      3: new FoodItem(
        foodName: "Chicken Cordon Bleu",
        hasManyOptions: true,
        manyPrices: [
          56.00,
          68.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang1.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken",
          "Ham",
          "Cheese"
        ],
        foodAllergens: [
          "Chicken",
          "Pork",
          "Cheese"
        ]
      ),
      4: new FoodItem(
        foodName: "Chicken Skin",
        hasManyOptions: true,
        manyPrices: [
          53.00,
          65.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang5.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken skin",
          "Butter",
          "Seasoning"
        ],
        foodAllergens: [
          "Chicken",
          "Butter"
        ]
      ),
      5: new FoodItem(
        foodName: "Chicken Strips",
        hasManyOptions: true,
        manyPrices: [
          53.00,
          65.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang9.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      6: new FoodItem(
        foodName: "Crispy Kangkong",
        foodPrice: 30.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang3.jpg",
        rating: "green",
        foodIngredients: [
          "Kangkong",
          "Butter",
          "Seasoning"
        ],
        foodAllergens: [
          "Butter"
        ]
      ),  
      7: new FoodItem(
        foodName: "Dynamite",
        foodPrice: 28.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang8.jpg",
        rating: "green",
        foodIngredients: [
          "Ground pork",
          "Cheese",
          "Sili spada (long chili)",
          "Seasoning"
        ],
        foodAllergens: [
          "Pork",
          "Cheese"
        ]
      ),  
      8: new FoodItem(
        foodName: "Fish Fillet",
        hasManyOptions: true,
        manyPrices: [
          53.00,
          65.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Panlasang_Pinoy/panlasang2.jpg",
        rating: "green",
        foodIngredients: [
          "Fish",
          "Seasoning"
        ],
        foodAllergens: [
          "Fish"
        ]
      ),
    }
  ); // ------> stall close

  //Leylam Shawarma
  FoodStall safadCS2 = new FoodStall(
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Shawarma Noodle",
        hasManyOptions: true,
        manyPrices: [
          65.00,
          85.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Leylam_Shawarma/leylam1.jpg",
        rating: "green",
        foodIngredients: [
          "Noodle",
          "Onions",
          "Green peas",
          "Corn", 
          "Carrots",
          "Seasoning",
          "Oil",
          "Meat (Beef/Shrimp/Chicken)",
          "Teriyaki sauce"
        ],
        foodAllergens: [
          "Egg (optional)",
          "Shrimp (optional)",
          "Chicken (optional)"
        ]
      ),
      2: new FoodItem(
        foodName: "Shawarma Rice",
        hasManyOptions: true,
        manyPrices: [
          70.00,
          85.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Leylam_Shawarma/leylam2.jpg",
        rating: "green",
        foodIngredients: [
          "Oil",
          "Green peas",
          "Corn", 
          "Carrots",
          "Onions",
          "Rice",
          "Cabbage",
          "Seasoning"
        ],
        foodAllergens: [
          "Egg (optional)",
          "Shrimp (optional)",
          "Chicken (optional)"
        ]
      ),
      3: new FoodItem(
        foodName: "Shawarma Wrap",
        hasManyOptions: true,
        manyPrices: [
          65.00,
          85.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Leylam_Shawarma/leylam3.jpg",
        rating: "green",
        foodIngredients: [
          "Pita bread",
          "Tomato",
          "Onions",
          "Cabbage",
          "Cucumber",
          "Meat (Beef/Shrimp/Chicken)",
          "Sauces"
        ],
        foodAllergens: [
          "Egg (optional)",
          "Shrimp (optional)",
          "Chicken (optional)"
        ]
      ),
    }
  ); // ------> stall close

  //Patrick's Kitchen/MK Burgeran
  FoodStall safadCS3 = new FoodStall( // TODO: lacking 3 images
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Bola-Bola (Meatballs)",
        foodPrice: 10.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Patrick's_Kitchen_MK_Burgeran/patricks2.jpg",
        rating: "green",
        foodIngredients: [
          "Ground pork",
          "Carrots",
          "Potato",
          "Onion"
        ],
        foodAllergens: [
          "Egg",
          "Pork"
        ]
      ),
      2: new FoodItem(
        foodName: "Chicken Curry",
        foodPrice: 45.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken",
          "Curry powder",
          "Carrots",
          "Potatoes"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      3: new FoodItem(
        foodName: "Lumpia Shanghai",
        hasManyOptions: true,
        manyPrices: [
          7.00,
          20.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Patrick's_Kitchen_MK_Burgeran/patricks1.jpg",
        rating: "green",
        foodIngredients: [
          "Potatoes",
          "Carrots",
          "Pork",
          "Onion",
          "Spices",
          "Garlic",
          "Pepper"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      4: new FoodItem(
        foodName: "Monggos Soup",
        foodPrice: 25.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Monggos",
          "Spices",
          "Squash",
          "Malunggay"
        ],
        foodAllergens: [
          "Egg",
          "Pork"
        ]
      ),
      5: new FoodItem(
        foodName: "Pinakbet",
        foodPrice: 25.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Vegetables",
          "Shrimp"
        ],
        foodAllergens: [
          "Shrimp"
        ]
      ),
      6: new FoodItem(
        foodName: "Porkchop",
        foodPrice: 50.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Patrick's_Kitchen_MK_Burgeran/patricks3.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Flour",
          "Cornstarch",
          "Eggs"
        ],
        foodAllergens: [
          "Eggs",
          "Pork"
        ]
      ),
      7: new FoodItem(
        foodName: "Tortang Talong",
        hasManyOptions: true,
        manyPrices: [
          25.00,
          35.00
        ],
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Patrick's_Kitchen_MK_Burgeran/patricks8.jpg",
        rating: "green",
        foodIngredients: [
          "Talong (Eggplant)",
          "Egg",
          "Tomato",
          "Onions",
          "Spring onions",
          "Oil",
          "Flour",
          "Cornstarch"
        ],
        foodAllergens: [
          "Egg"
        ]
      ),
    }
  ); // ------> stall close

  //My Own Recipe (MORE)
  FoodStall safadCS4 = new FoodStall( // TODO: all imaegs
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Chorizo Chow Fun",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Chorizo (Pork)",
          "Oil",
          "Egg",
          "Salt",
          "White onions",
          "Spring onions",
          "Black pepper",
          "Seasoning"
        ],
        foodAllergens: [
          "Pork",
          "Egg"
        ]
      ),
      2: new FoodItem(
        foodName: "Mighty Mealty Sandwich",
        foodPrice: 55.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "All-purpose dressing",
          "Hotdog",
          "Ham",
          "Cheese"
        ],
        foodAllergens: [
          "Pork",
          "Cheese"
        ]
      ),
      3: new FoodItem(
        foodName: "Spam Chow Fun",
        foodPrice: 65.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Spam",
          "Oil",
          "Egg",
          "Salt",
          "White onions",
          "Spring onions",
          "Black pepper",
          "Seasoning"
        ],
        foodAllergens: [
          "Pork",
          "Egg"
        ]
      ),
      4: new FoodItem(
        foodName: "Sisig Chow Fun",
        foodPrice: 69.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Sisig (Pork)",
          "Oil",
          "Egg",
          "Salt",
          "White onions",
          "Spring onions",
          "Black pepper",
          "Seasoning"
        ],
        foodAllergens: [
          "Pork",
          "Egg"
        ]
      ),
      5: new FoodItem(
        foodName: "Tuna Sandwich",
        foodPrice: 45.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Tuna",
          "Lettuce",
          "Tomato",
          "Cucumber",
          "White onions",
          "Cheese"
        ],
        foodAllergens: [
          "Fish",
          "Cheese"
        ]
      ),
    }
  ); // ------> stall close

  //Tiktilaok
  FoodStall safadCS5 = new FoodStall( // TODO: lacking 2 images
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
      6: new FoodItem(
        foodName: "Rice to the Top",
        foodPrice: 105.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
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
      7: new FoodItem(
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
      8: new FoodItem(
        foodName: "Tiktilaok Sarap",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
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
  ); // ------> stall close

  //Hotdog on Sticks
  FoodStall safadCS6 = new FoodStall( // TODO: lacking all, only 1 image
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Baconbits",
        foodPrice: 45.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork"
        ],
        foodAllergens: null
      ),
      2: new FoodItem(
        foodName: "BBQ meal",
        foodPrice: 23.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork"
        ],
        foodAllergens: null
      ),
      3: new FoodItem(
        foodName: "BBQ on stick",
        foodPrice: 50.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork"
        ],
        foodAllergens: null
      ),
      4: new FoodItem(
        foodName: "Cheesedog with Buns",
        foodPrice: 50.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Cheese",
          "Pork"
        ],
        foodAllergens: null
      ),
      5: new FoodItem(
        foodName: "Hotdog with Buns",
        foodPrice: null,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Beef"
        ],
        foodAllergens: null
      ),
      6: new FoodItem(
        foodName: "Sisig",
        foodPrice: 50.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/Hotdog_on_Stick/hotdog2.jpg",
        rating: "green",
        foodIngredients: [
          "Pork"
        ],
        foodAllergens: null
      ),
    }
  ); // ------> stall close

  //K&K Ice Kreeme
  FoodStall safadCS7 = new FoodStall( // TODO: lacking 3 images
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Carbonara",
        foodPrice: 30.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/K&K_Ice_Kreeme/k&k2.jpg",
        rating: "green",
        foodIngredients: [
          "Evaporated milk",
          "Nestle Cream",
          "Oil",
          "Garlic",
          "Onion",
          "Magic Sarap",
          "Ham",
          "Pasta"
        ],
        foodAllergens: null
      ),
      2: new FoodItem(
        foodName: "Chickenette",
        foodPrice: 45.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/K&K_Ice_Kreeme/k&k1.jpg",
        rating: "green",
        foodIngredients: [
          "Oil",
          "Salt",
          "Chicken",
          "Magic Sarap",
          "Flour"
        ],
        foodAllergens: null
      ),
      3: new FoodItem(
        foodName: "Chopsuey",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/K&K_Ice_Kreeme/k&k5.jpg",
        rating: "green",
        foodIngredients: [
          " "
        ],
        foodAllergens: null
      ),
      4: new FoodItem(
        foodName: "Mechado",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/K&K_Ice_Kreeme/k&k3.jpg",
        rating: "green",
        foodIngredients: [
          "Potatoes",
          "Carrots",
          "Oil",
          "Garlic",
          "Onion",
          "Magic Sarap",
          "Pork",
          "Mechado sauce"
        ],
        foodAllergens: null
      ),
      5: new FoodItem(
        foodName: "Paliya Guisado",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Ampalaya",
          "Oil",
          "Garlic",
          "Onion",
          "Magic Sarap"
        ],
        foodAllergens: null
      ),
      6: new FoodItem(
        foodName: "Pork Steak",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Oil",
          "Garlic",
          "Onion",
          "Magic Sarap",
          "Soy sauce",
          "Pork"
        ],
        foodAllergens: null
      ),
      7: new FoodItem(
        foodName: "Siomai",
        foodPrice: 8.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SAFADCanteen/K&K_Ice_Kreeme/k&k6.jpg",
        rating: "green",
        foodIngredients: [
          " "
        ],
        foodAllergens: null
      ),
      8: new FoodItem(
        foodName: "Siopao",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          " "
        ],
        foodAllergens: null
      ),
    }
  ); // ------> stall close

  //Kiara Loraine Food Haus
  FoodStall safadCS8 = new FoodStall( // TODO: lacking all images
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Cornsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Corned beef",
          "Rice",
          "Egg"
        ],
        foodAllergens: null
      ),
      2: new FoodItem(
        foodName: "Hamsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Ham",
          "Rice",
          "Egg"
        ],
        foodAllergens: null
      ),
      3: new FoodItem(
        foodName: "Hotsilog",
        foodPrice: 50.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Hotdog",
          "Rice",
          "Egg"
        ],
        foodAllergens: null
      ),
      4: new FoodItem(
        foodName: "Longsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Longganisa",
          "Rice",
          "Egg"
        ],
        foodAllergens: null
      ),
      5: new FoodItem(
        foodName: "Sisigsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Sisig",
          "Rice",
          "Egg"
        ],
        foodAllergens: null
      ),
      6: new FoodItem(
        foodName: "Tunasilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Hotdog",
          "Rice",
          "Egg"
        ],
        foodAllergens: null
      ),
    }
  ); // ------> stall close
  
  int calculateFoodItemsLength(FoodStall foodStall) {
    int foodItems =  foodStall.indexedFoodList.length;
    debugPrint("This stall's number of items: " + foodItems.toString());
    return foodItems;
  }
} // ------> close SAFAD canteen