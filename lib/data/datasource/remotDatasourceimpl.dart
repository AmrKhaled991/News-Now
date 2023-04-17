import 'dart:io';

import 'package:news/data/api/Aimanger.dart';
import 'package:news/domain/Excetpion/ServarError.dart';
import 'package:news/domain/Excetpion/connectionerro.dart';
import 'package:news/domain/domain_model/News.dart';
import 'package:news/domain/reprosatry/newsuthreposatry.dart';

class remotDatasourceimpl implements Datasournews{
Apimanger api;
remotDatasourceimpl(this.api);

  @override
  Future<List<News>?> getnews(sourcid, x) async{
    try {
      var res=await api.egetnews(sourceid: sourcid ?? '', page: ++x);
      if(res.status!='ok'){
        throw ServarError(res.massege!,res.code! );
      }
      return res.articles!.map((news) => news.switchotp()).toList();
    } on HttpException catch (e) {
      throw Conectionerror('internet error');
     }on IOException catch (e) {
      throw Conectionerror('internet error');
     }
  }
}
Datasournews injectDatasournews(){
  return remotDatasourceimpl(Apimanger());
}
