import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: "Sa'nCaon",
      home: new Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Center(
                  child: Text("SMED",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w900)))),
          body: Material(
              // whole screen
              // child: Center(
                  child: Container(
                      alignment: Alignment.topCenter,
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/burger.jpg'),
                        Row(children: <Widget>[
                          Expanded(
                            child: Text(
                            "'BURP' BURGER",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40.0,
                                fontFamily: 'NotoSans',
                                fontWeight: FontWeight.w900),
                          )),
                          Image.asset('assets/images/leaf.png')
                        ]),
                        Container(
                            child: Text(
                          "Stall: Angel's",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.w300), //double
                        )),
                        Text(
                          "Price: P30.00",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.w300), //double
                        ),
                        Text(
                          "Traffic Light Rating: Green",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Noto Sans',
                              fontWeight: FontWeight.w300), //double
                        )
                      ]))))));
  // runApp
}
