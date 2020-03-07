import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'predef_appbar_other.dart';
import 'sliver_home.dart';

class StartUp extends StatefulWidget {

  @override
  _StartUpState createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  int tapCount = 0;

  void changeColor(int tapCount) {
    List<Color> textColors = [
      Colors.green[400],
      Colors.lightBlue[300],
      Colors.yellow[800]
    ];

    List<String> loadingTextChange = [
      'Loading assets',
      'Loading images',
      'Loading meals'
    ];

    setState(() {
      newColor = textColors[tapCount];
      loadText = loadingTextChange[tapCount];
    });
  }

  Color newColor = Colors.green[400];

  String loadText = "Loading assets";

  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      onClick: () => {
        tapCount++,
        changeColor(tapCount > 2? tapCount = 0: tapCount)
      },
      image: Image.asset('assets/images/sancaon_logo_gif.gif'),
      loaderColor: Colors.green[400],
      photoSize: 150.0,
      title: new Text(
        "Sa'nCaon",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 80.0,
          fontFamily: "Dosis",
          fontWeight: FontWeight.bold,
          color: newColor,
        ),
      ),
      navigateAfterSeconds: new AppbarOtherPage(
        generatePage: HomePage()
      ),
      loadingText: new Text(
        loadText,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Quicksand"
        )
      ),
    );
  }
}