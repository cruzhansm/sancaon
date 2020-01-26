import 'package:flutter/material.dart';

class CanteenLandBuilder extends StatefulWidget {
  @override
  _CanteenLandBuilderState createState() => _CanteenLandBuilderState();
}

class _CanteenLandBuilderState extends State<CanteenLandBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      color: Colors.black,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          new Icon(
            Icons.play_arrow,
            color: Colors.white
          ),
          //children: <Widget>[
            //Image.asset(R
              // 'assets/images/canteen.jpg,',
              // height: 50.0
            //),
        ],
      ),
    );
  }
}