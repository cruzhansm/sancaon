import 'package:flutter/material.dart';
import 'faq.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Center(
      child: new Container(
        constraints: BoxConstraints(
          maxWidth: 280.0,
          minWidth: 280.0
        ),
        // color: Colors.red,
        child: new Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 65.0),
            ),
            new Icon(
              Icons.help,
              size: 200.0,
              color: Colors.green[400]
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 20.0),  
              child: new Text(
                'Need some help?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold
                )
              )
            ),
            new Text(
              "Having troubles?",
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: "Quicksand"
              )
            ),
            new Text(
              "Feel free to get in touch with us!",
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: "Quicksand"
              )
            ),
            new InkWell(
              onTap: () => {
                debugPrint("_launchURL???")
              },
              child: new Container(
                margin: EdgeInsets.fromLTRB(0.0, 75.0, 0.0, 20.0),
                padding: EdgeInsets.symmetric(vertical: 5.0),
                constraints: BoxConstraints(
                  minWidth: double.infinity,
                ),
                color: Colors.grey[600],
                child: new Text(
                  'Contact Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: "Dosis",
                    color: Colors.white
                  )
                )
              ),
            ),
            new InkWell( 
              onTap: () => {
                debugPrint("Go to FAQs"),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new FaqPage(),
                  )
                )
              },
              child: new Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                constraints: BoxConstraints(
                  minWidth: double.infinity,
                ),
                color: Colors.grey[300],
                child: new Text(
                  'Frequently Asked Questions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: "Dosis",
                    color: Colors.black
                  )
                )
              )
            )
          ],
        ),
      ),
    )
    );
  }
}