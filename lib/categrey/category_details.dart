import 'package:flutter/material.dart';
import 'package:news/categrey/tabconta.dart';
import 'package:news/modal/Aimanger.dart';
import 'package:news/modal/SourceResponce.dart';

class Categoryde extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponce>(
    future: Apimanger.getsources(),
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
      var sourceslist=snapshot.data?.sources ?? [];
      return contanTab(sourcelist: sourceslist);
      },

      );

  }
}
