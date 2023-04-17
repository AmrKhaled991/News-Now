import 'package:flutter/material.dart';
import 'package:news/theming.dart';

class Mydrawer extends StatelessWidget {
  static int setting=1;
  static int categ=2;
  Function drwaerfunction;
  Mydrawer({required this.drwaerfunction});
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
                  drwaerfunction(categ);
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
                  drwaerfunction(setting);
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
