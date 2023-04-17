
import 'package:news/domain/domain_model/Category.dart';

abstract class categoryauthreposary{
  Future<List<Source>?>getcategorylist(String categoryid);
}

abstract class Datasourcereposatryofcategory{
  Future<List<Source>?>getcategorylist(String categoryid);
}
