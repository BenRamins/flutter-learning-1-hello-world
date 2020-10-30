import 'package:flutter/material.dart';
import 'ui/home.dart';

// the commented-out code below is the default way to runApp, changed to new MaterialApp instead 


// void main() {
//   runApp(Home());
// }

void main() {
  runApp( new MaterialApp(
    home: ScaffoldWidget(),
  ));
}
