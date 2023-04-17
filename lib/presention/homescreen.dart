import 'package:flutter/material.dart';

import 'package:news/presention/categrey/Mylocalcategory.dart';
import 'package:news/presention/categrey/category_details.dart';
import 'package:news/presention/categrey/categries.dart';
import 'package:news/presention/drawer.dart';
import 'package:news/presention/news/news_searsh.dart';
import 'package:news/presention/settings.dart';


class Homescreen extends StatefulWidget {
static String routname="home";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover),color:Colors.white),
      child: Scaffold(
       backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'News!',style: Theme.of(context).primaryTextTheme.headline1,
          ),
          actions: [
            InkWell(onTap: (){
              showSearch(context: context, delegate: NewsSearsh());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.search_rounded,color: Colors.white,size: 25,),
            )
            )
          ],
        ),
        drawer: Drawer(
          child: Mydrawer(drwaerfunction: drowerchanges),
        ),
        body:selcteddrower==1?Settings(): slectedcategory==null?
          Categries(changescreen: changscreen):
        Categoryde(category: slectedcategory!),
      ),
    );
  }

    Mylocalcategory? slectedcategory=null;
   void changscreen(Mylocalcategory category) {
    slectedcategory=category;
    setState(() {

    });
   }
   var selcteddrower=Mydrawer.categ;
   void drowerchanges(int ax){
     selcteddrower=ax;
     slectedcategory=null;
     Navigator.of(context).pop();
     setState(() {
     });
   }

}
