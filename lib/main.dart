import 'package:flutter/material.dart';
import 'package:news/homescreen.dart';
import 'package:news/theming.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Homescreen.routname:(context) => Homescreen(),

      },
     theme: appthem.lightmode,
      initialRoute: Homescreen.routname,
    );
  }
}
