import 'package:flutter/material.dart';
import 'canteen_landing_page/canteen_landing_page.dart';
import 'predef_appbar_other.dart';
import 'dart:math' as math;
import 'dart:math';

dynamic previewItemsGet(String canteenName, int items) {
  int i = 0;
  int randNum;
  Random random = new Random();
  List<String> newPreviewImage = new List();
  List<String> sliverPeekImages = new List();
  List<int> usedNumbers = new List();
  dynamic foodList = foodItemContent(canteenName, "by Alphabetical");

  while(i <= foodList.length-1){
    newPreviewImage.add(foodList[i].food.foodImage);
    //debugPrint(newPreviewImage[i]);
    i++;
  }

  i = 0; 
  while(i <= items-1){
    randNum = random.nextInt(foodList.length);
    if(i == 0){
      usedNumbers.add(randNum);
    }
    else{
      if(usedNumbers.contains(randNum)){
        i--;
      }
      else{
        usedNumbers.add(randNum);
      }
    }
    i++;
  }

  i = 0;

  while(i <= usedNumbers.length-1){
    sliverPeekImages.add(newPreviewImage[usedNumbers[i]]);
    i++;
  }

  debugPrint("$canteenName " + usedNumbers.toString());
  debugPrint(sliverPeekImages.toString());
  return sliverPeekImages;
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Container(
        color: Colors.white,
        //padding: EdgeInsets.all(10.0),
        child: new CustomScrollView(
          slivers: <Widget>[
            new SliverPersistentHeader(
              pinned: false,
              delegate: _SliverAppBarDelegate(
                minHeight: 115.0,
                maxHeight: 115.0,
                child: new Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: new Center(
                    child: new Column(
                      children: <Widget>[
                        new Text(
                          "Asa ta kaon?",
                          style: TextStyle(
                            fontSize: 65.0,
                            fontFamily: "Dosis",
                            color: Colors.green[400]
                          ),),
                        new Text(
                          "SELECT A CANTEEN",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "Quicksand",
                            color: Colors.yellow[800],
                            height: 0.5
                          )
                        )
                      ],
                    )
                  ),
                )
              )
            ),
            new CanteenHeader(
              canteenName: "BUNZEL BASEMENT",
              canteenImage: 'assets/images/canteen-pictures/canteen_bunzelbasement2.jpg'
            ),
            new CanteenSliver(
              canteenName: "Bunzel Basement",
              numberOfItems: 6,
              sliverPeekPreview: previewItemsGet("Bunzel Basement", 9),
            ),
            new CanteenHeader(
              canteenName: "BUNZEL CANTEEN",
              canteenImage: 'assets/images/canteen-pictures/canteen_bunzel.jpg',
            ),
            new CanteenSliver(
              canteenName: "Bunzel Canteen",
              numberOfItems: 12,
              sliverPeekPreview: previewItemsGet("Bunzel Canteen", 12),
            ),
            new CanteenHeader(
              canteenName: "SMED CANTEEN",
              canteenImage: 'assets/images/canteen-pictures/canteen_smed.jpg'
            ),
            new CanteenSliver(
              canteenName: "SMED Canteen",
              numberOfItems: 12,
              sliverPeekPreview: previewItemsGet("SMED Canteen", 12),
            ),
            new CanteenHeader(
              canteenName: "RH CANTEEN",
              canteenImage: 'assets/images/canteen-pictures/canteen_rh.jpg'  
            ),
            new CanteenSliver(
              canteenName: "RH Canteen",
              numberOfItems: 9,
              sliverPeekPreview: previewItemsGet("RH Canteen", 9), 
            ),
            new CanteenHeader(
              canteenName: "SAFAD CANTEEN",
              canteenImage: 'assets/images/canteen-pictures/canteen_safad.jpg'
            ),
            new CanteenSliver(
              canteenName: "SAFAD Canteen",
              numberOfItems: 12,
              sliverPeekPreview: previewItemsGet("SAFAD Canteen", 12),
            ),
            new CanteenHeader(
              canteenName: "CAFE+",
              canteenImage: 'assets/images/canteen-pictures/canteen_cafe+.jpg'  
            ),
            new CanteenSliver(
              canteenName: "Cafe+",
              numberOfItems: 9,
              sliverPeekPreview: previewItemsGet("Cafe+", 9),
            ),
          ],
        ),
      ),
    );
  }
}

class CanteenHeader extends StatelessWidget {
  final String canteenName;
  final String canteenImage;

  CanteenHeader({this.canteenName, this.canteenImage});  

  @override
  Widget build(BuildContext context) {
    return new SliverAppBar(
      pinned: true,
      expandedHeight: 200.0,
      titleSpacing: 0.0,
      elevation: 0.0,
      flexibleSpace: new Stack(
        children: <Widget>[
          new Positioned.fill(
            child: Image.asset(canteenImage, fit: BoxFit.cover)
          ),
          new Container(
            color: Colors.black.withOpacity(0.5),
            child: new Center(
              child: new Text(
                canteenName,
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: "Quicksand",
                  color: Colors.white
                )
              ),
            )
          )
        ],
      )
    );
  }
}

class CanteenSliver extends StatelessWidget { //main widget for canteen
  final String canteenName;
  final int numberOfItems;
  final List<String> sliverPeekPreview;
  static Map<String, String> locationList= {
    "Bunzel Basement" : "Lawrence Bunzel Building",
    "Bunzel Canteen" : "Lawrence Bunzel Building",
    "SAFAD Canteen" : "School of Fine Arts and Design Building",
    "SMED Canteen" : "Science and Mathematics Complex",
    "RH Canteen" : "Robert Hoeppener Building",
    "Cafe+" : "LB Building | SAFAD Building"
  };

  CanteenSliver({this.canteenName, this.numberOfItems, this.sliverPeekPreview});

  @override
  Widget build(BuildContext context) {
    return new SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return new CanteenSliverPeek(
            index: index, 
            canteenName: canteenName,
            canteenLocation: locationList[canteenName],
            foodItems : numberOfItems,
            sliverImage: sliverPeekPreview[index]
          );
        },
        childCount: numberOfItems
      ),
    );
  }
}

class CanteenSliverPeek extends StatelessWidget { //preview items
  final int index;
  final int foodItems;
  final String canteenName;
  final String canteenLocation;
  final String sliverImage;
  
  CanteenSliverPeek({this.index, this.canteenName, this.foodItems, this.sliverImage, this.canteenLocation});

  @override
  Widget build(BuildContext context) {
    return index == foodItems-1 ? new InkWell(
      onTap: () => {
        debugPrint(canteenName),
        debugPrint("Notice me senpai! "),
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => new AppbarOtherPage(
            generatePage: new CanteenMenu(
              nameOfCanteen: canteenName,
              locationOfCanteen: canteenLocation
            )
          ))
        )
      },
      child: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.keyboard_arrow_right),
            new Text(
              "See More",
              style: TextStyle(
                fontSize: 12.0,
              )
            ),
          ],
        )
      ),
    ): new FittedBox(
      fit: BoxFit.fill,
      child: Image.asset(
        sliverImage
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  
  @override
  Widget build(
      BuildContext context, 
      double shrinkOffset, 
      bool overlapsContent) 
  {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}