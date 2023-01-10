import 'package:flutter/material.dart';
import 'package:news/modal/SourceResponce.dart';
import 'package:news/theming.dart';
class TabItam extends StatelessWidget {
  Source source;
  bool isslected ;
  TabItam({required this.source,required this.isslected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      margin:EdgeInsets.only(top: 18),
      decoration: BoxDecoration(color: isslected==true? appthem.primarygreencolor:Colors.transparent,
          border: Border.all(color: appthem.primarygreencolor),borderRadius: BorderRadius.circular(24)),
      child: Text(source.name??'',style:isslected==true? Theme.of(context).primaryTextTheme.headline1:
      Theme.of(context).primaryTextTheme.headline1!.copyWith(color: Colors.black),),
    );
  }
}
