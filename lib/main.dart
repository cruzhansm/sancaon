import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomeOverview(),
  ));

class HomeOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => print("Pressed the button"),
            alignment: Alignment(-90, 0),
          )
        ],
        title: Text("Sa'nCaon"),
        backgroundColor: Colors.blue,
        centerTitle: true
      ),
      body: new CreateNewCanteen(),
      );
  }
}

class CreateNewCanteen extends StatefulWidget {
  @override
  _CreateNewCanteenState createState() => _CreateNewCanteenState();
}

class _CreateNewCanteenState extends State<CreateNewCanteen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'canteen name here?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontFamily: "Consolas",
            )
          ),
          Center(
            child: Image.asset('assets/images/canteen.jpg',
            height: 300.0,
            width: 410.0,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey
            ),
            alignment: Alignment(0,0),
            onPressed: () => print("Next canteen"),
            splashColor: Colors.red,
          )
        ],
      ),
    );
  }
}