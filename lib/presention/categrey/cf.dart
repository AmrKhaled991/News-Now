import 'package:flutter/material.dart';
import 'package:news/presention/categrey/Mylocalcategory.dart';

class categoryfrag extends StatelessWidget {
  Mylocalcategory categry;
  int index;
  categoryfrag({required this.categry,required this.index});
  Widget build(BuildContext context) {categry.color;
    return Container(margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color:Color(categry.color??0),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
        topLeft: Radius.circular(18),
        bottomRight: Radius.circular((index%2==0)? 0:18),
        bottomLeft: Radius.circular((index%2==0)?18:0),
      )
      ),
      child: Column(
        children: [
          Image.asset(categry.photo??'0',height: 120),
          Text(categry.title??'',style: Theme.of(context).primaryTextTheme.headline1,)
        ],
      ),
    );
  }
}
