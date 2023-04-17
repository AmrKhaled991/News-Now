import 'package:flutter/material.dart';
import 'package:news/presention/categrey/Mylocalcategory.dart';

import 'package:news/presention/categrey/cf.dart';

class Categries extends StatelessWidget {
  var itemscategory=Mylocalcategory.Listofcategory();
  Function changescreen;
  Categries({required this.changescreen});
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Text('Pick your category\n of interest',style: Theme.of(context).primaryTextTheme.headline2,)
            ,SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  mainAxisSpacing: 18,
                  childAspectRatio: 1
              ),
              itemCount: itemscategory.length,
                  itemBuilder:(context, index){
                return InkWell(
                    onTap: (){
                      changescreen(itemscategory[index]);
                    },
                    child: categoryfrag(categry: itemscategory[index], index: index));
                  },
              )
            )
          ],
        ),
      ),
    );
  }
}
