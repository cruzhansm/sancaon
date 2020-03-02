import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: new Center(
        child: new ListView(
          children: <Widget> [
            new Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(
                  top:20.0, 
                  bottom: 20.0
                ),
                child: new Text(
                  'FAQ',
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0
                  )
                )
              ),
              new ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => QuestionItem(data[index]),
                itemCount: data.length,
              )
            ]
          )
          ]
        )
      )
    );
  }
}

class Question {
  Question(this.title, [this.children = const <Question>[]]);

  final String title;
  final List<Question> children;
}

final List<Question> data = <Question>[
  Question(
    "What is Sa'nCaon?",
    <Question>[
      Question(
        "   Sa’nCaon is an Android app developed in partial fulfilment of the requirements for Res03. It is a nutrition information food menu for the canteen food items found specifically in the University of San Carlos – Talamban Campus. The app allow users to access an overview of TC’s food items, which can be categorized and sorted by canteens, stalls, price, alphabetical order and more.\n",
      )
    ]
  ),
  Question(
    "Can we order/reserve using Sa'nCaon?",
    <Question>[
      Question(
        "   Unfortunately, Sa’nCaon does not have an order/ reservation feature. Plans for its implementation may be possible in the future, but as of now, food items are only to be viewed with the app.\n",
      )
    ]
  ),
  Question(
    "Can we use the app offline?",
    <Question>[
      Question(
        "   Yes, the Sa’nCaon app was designed and developed for offline use! This is so the app can be easily accessed and used anytime, anywhere throughout a student’s day. Online use is only required when accessing the feedback section of the app.\n" 
      )
    ]
  ),
  Question(
    "How sure are you that the information about each food are reliable?",
    <Question>[
      Question(
        "   The Sa’nCaon development team personally approached all the canteens found in the app and conducted a survey for each stall. If ever the data proved insufficient, the team underwent their own personal information gathering online or through ocular observation. The survey’s data straight from the stalls in addition to personal research  is what makes up the food information of the app.\n"
      )
    ]
  ),
  Question(
    "Are the food menus on this app continuously updated?",
    <Question>[
      Question(
        "   Ideally that would be preferred, but the lack of time and resources make the maintenance of the food menus difficult for the team members. With that in mind, the food menus currently present in the app were taken with clarity and made to be as error-free as possible.\n"
      )
    ]
  ),
  Question(
    "Does this app include other campuses?",
    <Question>[
      Question(
        "   The app features only the canteens and stalls of the University of San Carlos – Talamban Campus. Other campuses are not included in the app.\n"
      )
    ]
  ),
  Question(
    "Are all canteens/ food items included?",
    <Question>[
      Question(
        "   All canteens/stalls, found in the University of San Carlos – Talamban Campus, are included. However, food items were limited to only ten(10) for each stall. These food items are classified as popular meals with rice. The exclusion of non-rice meals, including snacks and drinks, was done with the available time and resources in mind.\n"
      )
    ]
  ),
  Question(
    "Can we give feedback or suggest foods we want in the canteens?",
    <Question>[
      Question(
        "   Feedback is included in the app for responses and remarks of our users directly to the development team. Suggesting foods and remarks for the canteens and stalls is not a feature of the app as it is the development team responsible for the app.\n"
      )
    ]
  )
];

class QuestionItem extends StatelessWidget {
  const QuestionItem(this.entry);

  final Question entry;

  Widget _buildTiles(Question root) {
    if (root.children.isEmpty) return ListTile(
      title: Text(
        root.title, 
        style: TextStyle(
          fontSize: 15.0,
          fontFamily: "Quicksand"
          )
        )
      );
    return Container(
      child: Theme(
        data: ThemeData(
          accentColor: Colors.green,
        ),
        child: ExpansionTile(
          backgroundColor: Colors.green[50],
          key: PageStorageKey<Question>(root),
          title: Text(
            root.title,
            style: TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold
            )
          ),
          children: root.children.map(_buildTiles).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
