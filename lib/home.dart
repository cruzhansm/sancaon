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


    List<Widget> listMyWidgets() {
      List<Widget> list = new List();
      
      while(newCanteenCount <= 5) {
        list.add(new HomePage(
          nameOfImage: imageName[0], 
          nameOfCanteen: canteenName[newCanteenCount]));
        newCanteenCount++;
      }

      return list;
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

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(15.0),
                child: Image.asset('assets/images/${widget.nameOfImage}',
              )
            ),
          ),
          new ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: new Container(
              color: Colors.black,
              child: Text(
                "${widget.nameOfCanteen}",
                style: TextStyle(
                  fontFamily: "ABeeZee",
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}