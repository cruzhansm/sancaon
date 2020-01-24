import 'package:flutter/material.dart';

class HomeOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Stack(
        children: <Widget>[
          new Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Image.asset(
              'assets/images/canteen.jpg',
            )
            ),
            ),
          new Container(
            alignment: Alignment(-0.75, -0.55),
            child: Text(
              "Bunzel Canteen",
              style: TextStyle(
                fontFamily: "ZhiMangXing",
                fontSize: 40.0,
                color: Colors.blue
              ),
            ),
            ),
          new Container(
            child: Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    InkWell(
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                        size: 50.0
                      ),
                      onPressed: () => print("next canteen"),
                    ),
                    ),
                  ]
                ),
              ),
            ),
        ],
      )
    );
  }
}