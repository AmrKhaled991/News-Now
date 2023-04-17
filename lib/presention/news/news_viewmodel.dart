
import 'package:news/domain/Excetpion/ServarError.dart';
import 'package:news/domain/Excetpion/connectionerro.dart';
import 'package:news/domain/domain_model/News.dart';
import 'package:news/domain/usecasese/Getnewsources.dart';
import 'package:news/domain/usecasese/Utils/Basedata.dart';


abstract class news_navigator extends BaseNavigator{

}

class news_viewmodel extends BaseViewModel<news_navigator>{
  int pagenumber = 1;
  List<News> newslist = [];
  String? eroreresponse=null;
  String? sourceidwe=null;
  Getnewssources news;
news_viewmodel(this.news);
  void getnewslist(String sourceid,)async{
  eroreresponse=null;
   sourceidwe=sourceid;
    try {
      var responsenews=await news.inoke( sourceid ?? '', pagenumber);
        newslist!.addAll(responsenews as Iterable<News>);
    } on Exception catch (e) {
      if(e is ServarError) {
        throw eroreresponse = "${e.message}-zzzzzzz${e.code}";
      }else if(e is Conectionerror){
        throw eroreresponse=e.error;
      }
    }
    notifyListeners();
  }
}