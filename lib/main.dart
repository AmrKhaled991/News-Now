import 'package:flutter/material.dart';
import 'package:news/presention/homescreen.dart';
import 'package:news/presention/news/news_details.dart';
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
        News_details.routname:(context)=> News_details(),
      },
     theme: appthem.lightmode,
      initialRoute: Homescreen.routname,
    );
  }
}
