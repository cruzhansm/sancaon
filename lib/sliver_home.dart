import 'package:flutter/material.dart';
import 'canteen_landing_page.dart';
import 'predef_appbar_other.dart';
import 'dart:math' as math;
import 'dart:math';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Container(
        color: Colors.white,
        //padding: EdgeInsets.all(20.0),
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
              canteenName: "Bunzel Basement",
              canteenImage: 'assets/images/canteen-pictures/canteen_bunzelbasement.jpg'
            ),
            new CanteenSliver(
              canteenName: "Bunzel Basement",
              numberOfItems: 9),
            new CanteenHeader(
              canteenName: "Bunzel Canteen",
              canteenImage: 'assets/images/canteen-pictures/canteen_bunzel.jpg'
            ),
            new CanteenSliver(
              canteenName: "Bunzel Canteen",
              numberOfItems: 12),
            new CanteenHeader(
              canteenName: "SMED Canteen",
              canteenImage: 'assets/images/canteen-pictures/canteen_smed.jpg'
            ),
            new CanteenSliver(
              canteenName: "SMED Canteen",
              numberOfItems: 12),
            new CanteenHeader(
              canteenName: "RH Canteen",
              canteenImage: 'assets/images/canteen-pictures/canteen_rh.jpg'  
            ),
            new CanteenSliver(
              canteenName: "RH Canteen",
              numberOfItems: 9,  
            ),
            new CanteenHeader(
              canteenName: "SAFAD Canteen",
              canteenImage: 'assets/images/canteen-pictures/canteen_safad.jpg'
            ),
            new CanteenSliver(
              canteenName: "SAFAD Canteen",
              numberOfItems: 12
            ),
            new CanteenHeader(
              canteenName: "Cafe+",
              canteenImage: 'assets/images/canteen-pictures/canteen_cafe+.jpg'  
            ),
            new CanteenSliver(
              canteenName: "Cafe+",
              numberOfItems: 9,
            ),
            // new SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext build, int index) {
            //       return new Container();
            //     }
            //   ),
            // )
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
                  fontWeight: FontWeight.w100,
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

  CanteenSliver({this.canteenName, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return new SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return new CanteenSliverPeek(index: index, canteenName: canteenName, foodItems : numberOfItems);
        },
        childCount: numberOfItems
      ),
    );
  }
}

dynamic previewItemsGet(String canteenName, int index, int items) {
  int i = 0;
  int j = 0;
  Random random = new Random();
  List<String> newPreviewImage = new List();
  List<int> usedNumbers = new List();
  dynamic foodList = foodItemContent(canteenName, "by Alphabetical");

  
  while(i <= foodList.length-1){
    newPreviewImage.add(foodList[i].food.foodImage);
    //debugPrint(newPreviewImage[i]);
    i++;
  }
  while(j <= items-1){
    usedNumbers.add(random.nextInt(foodList.length));
    j++;
  }

  return newPreviewImage[usedNumbers[index]];
}

class CanteenSliverPeek extends StatelessWidget { //preview items
  final int index;
  final int foodItems;
  final String canteenName;
  
  CanteenSliverPeek({this.index, this.canteenName, this.foodItems});

  @override
  Widget build(BuildContext context) {
    return index == foodItems-1 ? new InkWell(
      onTap: () => {
        debugPrint(canteenName),
        debugPrint("Notice me senpai! " + previewItemsGet(canteenName, index, foodItems)),
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => new AppbarOtherPage(
            generatePage: new CanteenMenu(
              nameOfCanteen: canteenName,
              locationOfCanteen: "Test",
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
        previewItemsGet(canteenName, index, foodItems)
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