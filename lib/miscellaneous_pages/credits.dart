import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {

  final pageController = new PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return new PageView(
      controller: pageController,
      children: <Widget>[
        new AboutApp(),
        new MemberInfo(),
        new LegalNotice(),
      ],
    );
  }
}

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            color: Colors.yellow[200],
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/images/sancaon_logo_png.png',
                  height: 50,
                  width: 50,
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0.0, 15.0, 40.0, 10.0),  
                  child: new Text(
                    'About the App',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold
                    )
                  )
                ),
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
              child: new Text(
                "Sa'nCaon for Android is the product of \nGr. 12 STEM - T1 Students of the \nUniversity of San Carlos - Senior High School. \nThis food menu application for the Talamban Campus Stalls was made in partial fulfillments of Res03.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: "Quicksand")
              )
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 10.0),
              child: new Text(
                "For non-commercial use. This application is meant for research purposes only.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: "Quicksand")
              )
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              child: new Text(
                "Source Code: https://github.com/cruzhansm/sancaon \n\nThis application uses Flutter and Dart, which we do not own.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: "Quicksand")
              )
          ),
          new Icon(
              Icons.fastfood,
              size: 150.0,
              color: Colors.green[400]
            ),
         new Expanded(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 10.0),
                   child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new FlatButton(
                        onPressed: () {},
                        //color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.black,
                            width: 0.5
                          ),
                        ),
                        child: new Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Column(
                              children: <Widget>[
                                new Text(
                                  "Swipe right",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  )
                                ),
                                new Text(
                                  "More About the Team",
                                  style: TextStyle(
                                    fontSize: 8.0
                                  ),
                                )
                              ],
                            ),
                            new Icon(
                              Icons.keyboard_arrow_right,
                              size: 20.0
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MemberInfo extends StatefulWidget {
  @override
  _MemberInfoState createState() => _MemberInfoState();
}

class _MemberInfoState extends State<MemberInfo> {

  final memberPageController = new PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new PageView(
        controller: memberPageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Image.asset("assets/images/credits/Serious.jpg"),
              new Image.asset("assets/images/credits/Candid.jpg")
            ],
          ),
          new Member(
            memberImage: "assets/images/credits/Hans.jpg",
            memberCell: " +639473609391",
            memberName: "Hans Maco V. Cruz",
            memberEmail: " cruzhansm@gmail.com",
            memberPosition: "Lead Developer, Team Leader",
            memberDetail:"    Hans Cruz is the lead developer of the Sa'nCaon app. He is in-charge of the coding and the research it is for. Experienced with many languages of code, this is his first major work involving Flutter and Dart.",
          ),
          new Member(
            memberImage: "assets/images/credits/Danica.jpg",
            memberCell: " +639473609391",
            memberName: "Danica Marie A. Dumalagan",
            memberEmail: " ddumalagan91@gmail.com",
            memberPosition: "Assistant Team Leader",
            memberDetail: "   Danica Dumalagan is the assistant leader of the Sa'nCaon app. She manages the team on a shared responsibility of the leader, whenever he is not available. Her home has been the base of operations many times throughout the research.",
          ),
          new Member(
            memberCell: " +639667080139",
            memberImage: "assets/images/credits/Antoine.jpg",
            memberName: "Antoine Federico P. Godinez",
            memberEmail: " godinezantoine13@gmail.com",
            memberPosition: "Documentation",
            memberDetail: "   Antoine Godinez is the lead documenter of the team. He keeps track of the budgetary expenses used for research purposes and takes part in gathering the data for the Sa'nCaon app.",
          ),
          new Member(
            memberCell: " +639266377699",
            memberImage: "assets/images/credits/Jamille.jpg",
            memberName: "Jamille Ashley Y. Malnegro",
            memberEmail: " jashbeautiful@gmail.com",
            memberPosition: "User Interface Design",
            memberDetail: "   Jamille Malnegro is in-charge of the UI design, with her best handiwork clearly seen as the logo of the Sa'nCaon app. Her aesthetic choices and stylistic talent ascribes her the architect of Sa'nCaon.",
          ),
          new Member(
            memberCell: " +639222111501",
            memberImage: "assets/images/credits/Mabby.jpg",
            memberName: "Rose Mabelle C. Seares",
            memberEmail: " rosemabelleseares@gmail.com",
            memberPosition: "User Interface Design",
            memberDetail: "   Rose Mabelle Seares is also part of the UI design, and has influenced the choices and colors of the Sa'nCaon app. She is also a student-athlete and is planning to take up accountancy for college.",
          ),
          new Member(
            memberCell: " +639185565745",
            memberImage: "assets/images/credits/Uayan.jpg",
            memberName: "Lorenzo Gabriel C. Uayan",
            memberEmail: " paradoxictime@gmail.com",
            memberPosition: "Documentation",
            memberDetail: "   Lorenzo Uayan is also a documentator under the Sa'nCaon team. He participates in data gathering and encoding tasks.",
          ),
        ],
        
      ),
    );
  }
}

class Member extends StatefulWidget {

  final String memberCell;
  final String memberName;
  final String memberEmail;
  final String memberPosition;
  final String memberDetail;
  final String memberImage;

  Member({this.memberCell, this.memberName, this.memberEmail, this.memberPosition, this.memberDetail, this.memberImage});

  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
          child: new Image.asset(
            widget.memberImage,
            width: 200.0,
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: new Container(
                margin: EdgeInsets.only(bottom: 5.0),
                padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 2.0),
                color: Colors.green[400],
                child: new Text(
                  widget.memberName,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: "Quicksand"
                  )
                ),
              ),
            ),
          ],
        ),
        new Text(
          widget.memberPosition,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Bebas-Neue"
          )
        ),
        new Container(
          margin: EdgeInsets.only(bottom: 15.0)
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: new Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Contact Number",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.lightBlue[300]
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      shape: BoxShape.rectangle,
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.phone_android,
                          size: 20.0
                        ),
                        new Text(
                          widget.memberCell,
                          style: TextStyle(
                            fontFamily: "Quicksand"
                          )
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: new Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Quicksand",
                      fontWeight: FontWeight.bold
                    )
                  ),
                  new Container(
                    decoration: new BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.lightBlue[300]
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      shape: BoxShape.rectangle
                    ),
                    padding: EdgeInsets.all(5.0),
                    child: new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.email,
                          size: 20.0
                        ),
                        new Text(
                          widget.memberEmail,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: "Quicksand"
                          )
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          ],
        ),
        new Expanded(
          child: new Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            color: Colors.grey[300],
            constraints: BoxConstraints(
              minWidth: double.infinity,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Center(
                child: new Text(
                  widget.memberDetail,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold
                  )
                )
              ),
            )
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new FlatButton(
              onPressed: () {},
              //color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 0.5
                ),
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Icon(
                    Icons.keyboard_arrow_left,
                    size: 20.0
                  ),
                  new Column(
                    children: <Widget>[
                      new Text(
                        "Swipe left",
                        style: TextStyle(
                          fontSize: 10.0,
                        )),
                      new Text(
                        "About the app",
                        style: TextStyle(
                          fontSize: 8.0,
                        ))
                    ],
                  ),
                ],
              )
            ),
            new FlatButton(
              onPressed: () {},
              //color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 0.5
                ),
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Text(
                        "Swipe right",
                        style: TextStyle(
                          fontSize: 10.0,
                        )),
                      new Text(
                        "Legal Notices",
                        style: TextStyle(
                          fontSize: 8.0
                        ))
                    ],
                  ),
                  new Icon(
                    Icons.keyboard_arrow_right,
                    size: 20.0
                  ),
                ],
              )
            ),
          ],
        ),
        new SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}

class LegalNotice extends StatefulWidget {
  @override
  _LegalNoticeState createState() => _LegalNoticeState();
}

class _LegalNoticeState extends State<LegalNotice> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.yellow[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 00.0, 10.0),  
                    child: new Text(
                      'Legal Notices',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.bold
                      )
                     )
                  ),
                ],
              ),
            ),
            new ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                  child: new Text(
                  "Licenses: \nThe Sa'nCaon app is not licensed for commercial use and is meant for research purposes only.\n\nSources:\nThe sources to this application can be retrieved at the respository of https://github.com/cruzhansm/sancaon \n\nLibraries: \nThe Sa'nCaon application uses Android, Flutter, Dart and more external libraries that make extensive use of the following persons' or companies' code: \n\nAndroid Open Source Project \n\nFlutter...",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: "Quicksand")
                  ),
                )
              ],
            ),
            new Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new FlatButton(
                          onPressed: () {},
                          //color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                              color: Colors.black,
                              width: 0.5
                            ),
                          ),
                          child: new Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Icon(
                                Icons.keyboard_arrow_left,
                                size: 20.0
                              ),
                              new Column(
                                children: <Widget>[
                                  new Text(
                                    "Swipe left",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                    )),
                                  new Text(
                                    "More About the Team",
                                    style: TextStyle(
                                      fontSize: 8.0,
                                    ))
                                ],
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}