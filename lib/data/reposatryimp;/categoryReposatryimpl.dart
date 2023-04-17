
import 'package:news/data/datasource/catgoryremotimpl.dart';
import 'package:news/domain/domain_model/Category.dart';
import 'package:news/domain/reprosatry/categorydatasourceReprositry.dart';

class   categoryReposatryimpl implements categoryauthreposary{
  Datasourcereposatryofcategory datasourcereposatry;
  categoryReposatryimpl(this.datasourcereposatry);
  Future<List<Source>?> getcategorylist(String categoryid)async {
  var sources= await datasourcereposatry.getcategorylist(categoryid);
    return sources;
  }
}
categoryauthreposary getsourcereposratryofcategory(){
  return categoryReposatryimpl(getcatgoryremotimpl());
}

