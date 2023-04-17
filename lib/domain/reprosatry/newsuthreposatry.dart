
import 'package:news/domain/domain_model/News.dart';

abstract class newsuthreposatry{
  Future<List<News>?>getnews(sourcid,x);
}

abstract class Datasournews{
  Future<List<News>?>getnews(sourcid,x);
}