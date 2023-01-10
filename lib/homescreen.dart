import 'package:flutter/material.dart';
import 'package:news/categrey/category_details.dart';
import 'package:news/categrey/categries.dart';
import 'package:news/drawer.dart';

class Homescreen extends StatelessWidget {
static String routname="home";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover)),
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            'Sports!',style: Theme.of(context).primaryTextTheme.headline1,
          ),
        ),
        drawer: Drawer(
          child: Mydrawer(),
        ),
        body: Categoryde(),
      ),
    );
  }
}
