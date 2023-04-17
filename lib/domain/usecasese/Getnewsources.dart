import 'package:news/data/reposatryimp;/newsuthreposatryimol.dart';
import 'package:news/domain/domain_model/News.dart';
import 'package:news/domain/reprosatry/newsuthreposatry.dart';

class Getnewssources{
  newsuthreposatry newsrepo;
  Getnewssources(this.newsrepo);
  Future<List<News>?> inoke(String sourcid,int x)async{
     var news=await newsrepo.getnews(sourcid, x);
     
    return news ;
  }
}
Getnewssources injectGetnewssources(){
  return Getnewssources(injectnewsuthreposatry());
}