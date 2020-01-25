import 'package:flutter/material.dart';

class HomeOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imageName = ['canteen.jpg'];
    List<String> canteenName = [
      'Bunzel Basement', 
      'Bunzel Canteen', 
      'SMED Canteen',
      'RH Canteen',
      'SAFAD Canteen',
      'Cafe+'];
    int newCanteenCount = 0;
    final int numberOfCanteens = 6;

    List<Widget> listMyWidgets() {
      List<Widget> listOfCanteens = new List();
      
      while(newCanteenCount <= numberOfCanteens-1) {
        listOfCanteens.add(new HomePage(
          nameOfImage: imageName[0], 
          nameOfCanteen: canteenName[newCanteenCount]));
        newCanteenCount++;
      }

      return listOfCanteens;
    }

    return ListView(
      children: listMyWidgets()
    );
  }
}

class HomePage extends StatefulWidget {

  final String nameOfImage;
  final String nameOfCanteen;

  HomePage({this.nameOfImage, this.nameOfCanteen});

  /*
  This function returns the padding of 20.0 if the canteen is the last canteen
  */
  double lastWidgetBotPadding(nameOfCanteen) {
    if(nameOfCanteen == 'Cafe+') {
      return 20.0;
    }
    else {
      return 0.0;
    }
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          new InkWell(
            splashColor: Colors.yellow,
            onLongPress: () => print("Long press option"), // optional feature!
            onTap: () => print("Open ${widget.nameOfCanteen}"),
            child: new Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, widget.lastWidgetBotPadding(widget.nameOfCanteen)),
              child: new ClipRRect(
                borderRadius: new BorderRadius.circular(15.0),
                  child: Image.asset('assets/images/${widget.nameOfImage}',
                ),
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(15.0),
              ),
              new Container(
                width: 500.0,
                child: new Container(
                  alignment: Alignment(-0.66,0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: 200.0,
                        minWidth: 10.0,
                      ),
                      padding: EdgeInsets.symmetric(horizontal:5.0),
                      color: Colors.white,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget> [
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                          ),
                          Text(
                            "${widget.nameOfCanteen}",
                            style: TextStyle(
                              fontFamily: "ABeeZee",
                              fontSize: 15.0,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}