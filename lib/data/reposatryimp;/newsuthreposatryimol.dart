import 'package:news/data/datasource/remotDatasourceimpl.dart';
import 'package:news/domain/domain_model/News.dart';
import 'package:news/domain/reprosatry/newsuthreposatry.dart';

class newsuthreposatryimpl implements newsuthreposatry{
  Datasournews  datasournews;
  newsuthreposatryimpl(this.datasournews);
  Future<List<News>?> getnews(sourcid, x) {
    // TODO: implement getnews
    return datasournews.getnews(sourcid, x);
  }
}
newsuthreposatry injectnewsuthreposatry(){
  return newsuthreposatryimpl(injectDatasournews());
}