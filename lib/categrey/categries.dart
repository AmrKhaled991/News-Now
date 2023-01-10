import 'package:flutter/material.dart';
import 'package:news/categrey/categoryitem.dart';

class Categries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Text('Pick your category of interest',style: Theme.of(context).primaryTextTheme.headline2,)
            ,SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
                  itemBuilder:(context, index){
                return Text('DS');
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 18,
                    childAspectRatio: 18
                  )),
            )
          ],
        ),
      ),
    );
  }
}
