import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'home.dart';

class StartUp extends StatefulWidget {
  @override
  _StartUp createState() => new _StartUp();
}

class _StartUp extends State<StartUp> {
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 9,
        backgroundColor: Colors.white,
        image: Image.asset('assets/images/sancaon_logo_gif.gif'),
        loaderColor: Colors.green,
        photoSize: 150.0,
        navigateAfterSeconds: Home()
        );
  }
}


