import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            constraints: BoxConstraints(
              maxWidth: 300.0,
              maxHeight: 200.0
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  constraints: BoxConstraints(
                    minHeight: 100.0
                  ),
                  color: Colors.black26,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'Send us some feedback!',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: "Quicksand",
                          fontWeight: FontWeight.bold
                        )
                      ),
                      new Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: new Text(
                          'How was your overall experience? Found a bug? Have a suggestion?',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )
                ),
                new Container(
                  constraints: BoxConstraints(
                    minHeight: 100.0
                  ),
                  color: Colors.amber[300],
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new InkWell(
                        onTap: () => print("Redirect to google forms"),
                        child: new Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                          color: Colors.green[400],
                          child: new Text(
                            'Send Feedback',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: "Dosis",
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ))
                        ),
                      ),
                      new Text(
                        "click the button and we'll take a look!",
                        style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: "Quicksand",
                        ),
                      )
                    ],
                  )
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}