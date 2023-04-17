import 'package:news/data/reposatryimp;/categoryReposatryimpl.dart';
import 'package:news/domain/domain_model/Category.dart';
import 'package:news/domain/reprosatry/categorydatasourceReprositry.dart';

class Getcategorysources{
  categoryauthreposary categoryrepo;
  Getcategorysources(this.categoryrepo);
  Future<List<Source>?> inoke(String categoryid)async{
    var category=await categoryrepo.getcategorylist(categoryid);
    return category;
  }
}
Getcategorysources injectGetcategorysources(){
  return Getcategorysources(getsourcereposratryofcategory());
}