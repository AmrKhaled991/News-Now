
import 'dart:io';

import 'package:news/data/api/Aimanger.dart';
import 'package:news/domain/Excetpion/ServarError.dart';
import 'package:news/domain/Excetpion/connectionerro.dart';
import 'package:news/domain/domain_model/Category.dart';
import 'package:news/domain/reprosatry/categorydatasourceReprositry.dart';

class catgoryremotimpl implements Datasourcereposatryofcategory{
  Apimanger api;
  catgoryremotimpl(this.api);

  Future<List<Source>?> getcategorylist(String categoryid)async {
   try {
     var sources=await api.getsources(categoryid);
     print(sources.massege);
      if(sources.status!='ok'){
       throw ServarError(sources.massege??'',sources.code??'' );
     }
      return sources.sources!.map((source) => source.switchotp()) .toList();
   } on HttpException catch (e) {
     throw Conectionerror('internet error');
   }on IOException catch (e) {
     throw Conectionerror('internet error');
   }
  }
  }


Datasourcereposatryofcategory getcatgoryremotimpl(){
  return catgoryremotimpl(Apimanger());
}
