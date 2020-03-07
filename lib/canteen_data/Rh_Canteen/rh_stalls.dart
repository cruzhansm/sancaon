import 'package:sancaon/canteen_data/data.dart';

class RHStalls {  
  //Cebu 3-6-2 Canteen
  FoodStall rhCS1 = new FoodStall( // TODO: Lacking pictures
    indexedFoodList: {
      1: new FoodItem(
        foodName: "Menudo",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh11.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Potato",
          "Tomato sauce",
          "Carrots",
          "Garlic"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      2: new FoodItem(
        foodName: "Ginaling",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh10.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Potato",
          "Carrots"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      3: new FoodItem(
        foodName: "Chicken Curry",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh8.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken",
          "Chicken curry powder",
          "Pepper",
          "Potato",
          "Spring onion",
          "Carrots",
          "Egg"
        ],
        foodAllergens: [
          "Chicken",
          "Egg"
        ]
      ),
      4: new FoodItem(
        foodName: "Chopsuey",
        foodPrice: 15.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh6.jpg",
        rating: "green",
        foodIngredients: [
          "Cornstarch",
          "Magic Sarap",
          "Sayote (mirliton squash)",
          "Pechay",
          "Carrots",
          "Young corn"
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
          "Pork",
          "Egg"
        ]
      ),
      6: new FoodItem(
        foodName: "Chicken Liver",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh9.jpg",
        rating: "green",
        foodIngredients: [
          "Chicken liver",
          "Bellpepper",
          "Tomato paste"
        ],
        foodAllergens: [
          "Chicken"
        ]
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
          "Pork"
        ]
      ),
      8: new FoodItem(
        foodName: "Pork Steak",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh7.jpg",
        rating: "green",
        foodIngredients: [
          "Pork",
          "Laurel leaves",
          "Soysauce"
        ],
        foodAllergens: [
          "Pork"
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
          "Long chili"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      10: new FoodItem(
        foodName: "Pork Tocino",
        foodPrice: 35.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh5.jpg",
        rating: "green",
        foodIngredients: [
          "Ketchup",
          "Pork",
          "Sugar"
        ],
        foodAllergens: [
          "Pork"
        ]
      ),
      11: new FoodItem(
        foodName: "Ginisang Kangkong",
        foodPrice: 15.00,
        hasManyOptions: false,
        foodImage: "assets/images/canteen-menu/RHCanteen/rh12.jpg",
        rating: "green",
        foodIngredients: [
          "Kangkong (water spinach)",
          "Oil",
          "Salt"
        ],
        foodAllergens: null
      ),
    }
  );

    int calculateFoodItemsLength(FoodStall foodStall) {
    int foodItems =  foodStall.indexedFoodList.length;
    //debugPrint("This stall's number of items: " + foodItems.toString());
    return foodItems;
  }
}