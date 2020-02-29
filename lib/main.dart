import 'package:flutter/material.dart';
//import 'startup.dart';
import 'predef_appbar_other.dart';
import 'sliver_home.dart';

void main() => runApp(MaterialApp(
  home: AppbarOtherPage(generatePage: HomePage())
));