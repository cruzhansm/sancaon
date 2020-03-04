import 'package:sancaon/canteen_data/data.dart';

class SMEDStalls {
  // Jolly Bubbly
  FoodStall smedCS1 = new FoodStall( // TODO: lacking images (all except hotdog sandwich) 
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
  FoodStall smedCS2 = new FoodStall( // TODO: lacking images (all)
    indexedFoodList: {
      1 : new FoodItem(
        foodName: "Burp Burger",
        foodPrice: 20.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Patty (Beef)"
        ],
        foodAllergens: null
      ),
      2 : new FoodItem(
        foodName: "Siomai",
        hasManyOptions: true,
        manyPrices: [
          7.00,
          20.00
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork"
        ],
        foodAllergens: null
      ),
      3 : new FoodItem(
        foodName: "Sisigsilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork"
        ],
        foodAllergens: null
      ),
      4 : new FoodItem(
        foodName: "Sweet Corn",
        hasManyOptions: true,
        manyPrices: [
          20.00,
          30.00
        ],
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
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
      5 : new FoodItem(
        foodName: "Tocilog",
        foodPrice: 60.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/BunzelCanteen/Amboy's_Food_Corner/amboys1.jpg",
        rating: "green",
        foodIngredients: [
          "Pork Tocino"
        ],
        foodAllergens: null
      ),
    }
  );

  // Tiktilaok
  FoodStall smedCS3 = new FoodStall( // half chicken, rice to the top, tiktilaok sarap (NO IMAGES)
    indexedFoodList: {
      1 : new FoodItem(
        foodName: "Fast Chix",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Tiktilaok/tiktilaok1.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      2 : new FoodItem(
        foodName: "Fast Liempo",
        foodPrice: 75.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Tiktilaok/tiktilaok3.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Liempo",
          "Honey",
          "Garlic",
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      3 : new FoodItem(
        foodName: "Fast - OMG",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Tiktilaok/tiktilaok6.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Liempo",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Pork",
          "Chicken"
        ]
      ),
      4 : new FoodItem(
        foodName: "Half Chicken",
        foodPrice: 140.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Tiktilaok/tiktilaok2.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      5 : new FoodItem(
        foodName: "Quarter Chicken",
        foodPrice: 85.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Tiktilaok/tiktilaok4.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Chicken",
          "Honey",
          "Garlic",
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      6 : new FoodItem(
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
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Chicken"
        ]
      ),
      7 : new FoodItem(
        foodName: "Sarap my Liempo",
        foodPrice: 100.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/SMEDCanteen/Tiktilaok/tiktilaok5.jpg",
        rating: "green",
        foodIngredients: [
          "Spices",
          "Liempo",
          "Honey",
          "Garlic",
          "Chicken Sauce"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      8 : new FoodItem(
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
          "Chicken Sauce"
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