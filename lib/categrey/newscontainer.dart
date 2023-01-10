import 'package:flutter/material.dart';
import 'package:news/modal/Aimanger.dart';
import 'package:news/modal/SourceResponce.dart';
import 'package:news/modal/newsrespons.dart';
class NewsCoon extends StatelessWidget {
Source source;
NewsCoon({required this.source});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Newsrespons>(
      future:Apimanger.egetnews(source.id??'') ,
        builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          }
          if(snapshot.hasError){
            return Column(children: [
              Text(snapshot.data?.massege??''),
              ElevatedButton(onPressed: (){}, child: Text('relod'))
            ],
            );
          }
          if(snapshot.data?.status!= 'ok'){
            return Text(snapshot.data?.massege??'');
          }
          var newslist=snapshot.data?.articles ?? [];
          return ListView.builder(
            itemCount: newslist.length,
            itemBuilder: (context, index) {
              return Text(newslist[index].title??'not found',style: TextStyle(color: Colors.black),);
            });
        },

    );
  }
}
