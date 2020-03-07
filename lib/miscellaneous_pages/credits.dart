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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 0.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text("The Developers "),
                new Icon(
                  Icons.arrow_forward,
                  size: 18.0
                )
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 50.0),
              child: new Text("")
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
            memberPosition: "Lead Developer, Team Leader"
          ),
          new Member(
            memberImage: "assets/images/credits/Danica.jpg",
            memberCell: " +639473609391",
            memberName: "Danica Marie A. Dumalagan",
            memberEmail: " ddumalagan91@gmail.com",
            memberPosition: "Assistant Team Leader"
          ),
          new Member(
            memberCell: " +639667080139",
            memberImage: "assets/images/credits/Antoine.jpg",
            memberName: "Antoine Federico P. Godinez",
            memberEmail: " godinezantoine13@gmail.com",
            memberPosition: "Documentation"
          ),
          new Member(
            memberCell: " +639266377699",
            memberImage: "assets/images/credits/Jamille.jpg",
            memberName: "Jamille Ashley Y. Malnegro",
            memberEmail: " jashbeautiful@gmail.com",
            memberPosition: "User Interface Design"
          ),
          new Member(
            memberCell: " +639222111501",
            memberImage: "assets/images/credits/Mabby.jpg",
            memberName: "Rose Mabelle C. Seares",
            memberEmail: " rosemabelleseares@gmail.com",
            memberPosition: "User Interface Design"
          ),
          new Member(
            memberCell: " +639185565745",
            memberImage: "assets/images/credits/Uayan.jpg",
            memberName: "Lorenzo Gabriel C. Uayan",
            memberEmail: " paradoxictime@gmail.com",
            memberPosition: "Documentation"
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
            color: Colors.red,
            constraints: BoxConstraints(
              minWidth: double.infinity,
            ),
            child: Center(child: new Text("Member details here!"))
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
        child: new ListView(
          children: <Widget>[
            Center(child: new Text("JAMILLE IS A TYRANT!")),
            new Text("Uayan is a derp"),
            new Text("MAAYO KAAYO")
          ],
        )
      ),
    );
  }
}