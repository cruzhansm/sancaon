import 'package:flutter/material.dart';
import 'canteen_landing_page.dart';
import 'predef_appbar_other.dart';
import 'dart:math' as math;

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
              floating: true,
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
              canteenImage: 'assets/images/canteen-pictures/canteen_bunzel.jpg'
            ),
            new CanteenSliver(canteenName: "Bunzel Basement"),
            new CanteenHeader(
              canteenName: "Bunzel Canteen",
              canteenImage: 'assets/images/canteen-pictures/canteen_bunzel.jpg'
            ),
            new CanteenSliver(canteenName: "Bunzel Canteen"),
            new CanteenHeader(
              canteenName: "SMED Canteen",
              canteenImage: 'assets/images/home/canteen3.jpg'
            ),
            new CanteenSliver(canteenName: "SMED Canteen"),
            new CanteenHeader(
              canteenName: "RH Canteen",
              canteenImage: 'assets/images/home/canteen4.jpg'  
            ),
            new CanteenSliver(canteenName: "RH Canteen"),
            new CanteenHeader(
              canteenName: "SAFAD Canteen",
              canteenImage: 'assets/images/canteen-pictures/canteen_safad.jpg'  
            ),
            new CanteenSliver(canteenName: "SAFAD Canteen"),
            new CanteenHeader(
              canteenName: "Cafe+",
              canteenImage: 'assets/images/home/canteen6.jpg'  
            ),
            new CanteenSliver(canteenName: "Cafe+"),
            /*new SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext build, int index) {
                  return new SizedBox(
                    height: 50.0
                  );
                }
              ),
            )*/
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
            child: Image.asset(canteenImage, fit: BoxFit.fitWidth)
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

  CanteenSliver({this.canteenName});

  @override
  Widget build(BuildContext context) {
    return new SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return new CanteenSliverPeek(index: index, canteenName: canteenName);
        },
        childCount: 12
      ),
    );
  }
}

class CanteenSliverPeek extends StatelessWidget { //preview items
  final int index;
  final canteenName;
  
  CanteenSliverPeek({this.index, this.canteenName});

  static List<dynamic> previewList = [
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
    "assets/images/canteen-menu/BunzelCanteen/Healthylicious/healthylicious1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return index == 11 ? new InkWell(
      onTap: () => {
        debugPrint(canteenName),
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
    ): Image.asset(
      previewList[index]
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