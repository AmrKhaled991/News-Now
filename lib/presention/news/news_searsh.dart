import 'package:flutter/material.dart';
import 'package:news/data/api/Aimanger.dart';

import 'newsitem.dart';

class NewsSearsh extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: (){
          showResults(context);
        },
        icon: Icon(Icons.search_rounded,color: Colors.black,size: 25,));
  }

  Widget? buildLeading(BuildContext context) {
    InkWell(
        onTap: (){
          Navigator.of(context).pop();
        },
        child: Icon(Icons.clear,color: Colors.black,size: 25,));
  }
  @override
  Widget buildResults(BuildContext context) {
    return Text('haha');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: Text('suggition',textAlign: TextAlign.center)
    );
  }


}
