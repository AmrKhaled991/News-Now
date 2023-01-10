import 'package:flutter/material.dart';
import 'package:news/categrey/categries.dart';
import 'package:news/theming.dart';

class Mydrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var mediaq=MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Container(
          color: appthem.primarygreencolor,
          height: mediaq.height*.15,
            padding: EdgeInsets.symmetric(vertical: 45),
            child: Text('NewsApp!',style: Theme.of(context).primaryTextTheme.headline2!.copyWith(color: Colors.white,
            ),textAlign: TextAlign.center,
            ),
        ),
        SizedBox(height:10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Categries();
                },
                child: Row(
                  children: [
                    Icon(Icons.menu_rounded,color: Colors.black,),
                    SizedBox(width: 10),
                    Text('Categories',style: Theme.of(context).primaryTextTheme.headline2!.copyWith(color: Colors.black),)
                  ],),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){

                },
                child: Row(
                  children: [
                    Icon(Icons.settings_sharp,color: Colors.black,),
                    SizedBox(width: 10),
                    Text('Settings',style: Theme.of(context).primaryTextTheme.headline2!.copyWith(color: Colors.black),),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
