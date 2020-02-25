import 'package:flutter/material.dart';


class FoodItemPage extends StatelessWidget {

  createDialog(BuildContext context) {
    return showDialog(context: context, builder: (context) {
      return new SizedBox(
        width: 450.0,
        height: 100.0,
        child: new Dialog(
          backgroundColor: Colors.red,
          child: new Container(
            constraints: BoxConstraints(
              minWidth: double.infinity,
            ),
            child: new ListView(
              children: <Widget>[
                new SizedBox(
                  height: 250.0,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: new Image.asset(
                      'assets/images/home/test.png',
                    ),
                  ),
                ),
                new Center(
                  child: new Text("CONTEXT OF THE MEDIA")
                )
                ],
              ),
            )
        )
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: new GestureDetector(
            onTap: () {createDialog(context);},
          ),
        ),
      ),
    );
  }
}