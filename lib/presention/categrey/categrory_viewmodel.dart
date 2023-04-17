import 'package:news/domain/Excetpion/ServarError.dart';
import 'package:news/domain/Excetpion/connectionerro.dart';
import 'package:news/domain/domain_model/Category.dart';
import 'package:news/domain/usecasese/Getcategorysources.dart';
import 'package:news/domain/usecasese/Utils/Basedata.dart';
import 'package:news/domain/reprosatry/categorydatasourceReprositry.dart';

abstract class category_navigator extends BaseNavigator {}

class category_viewmodel extends BaseViewModel<category_navigator> {
  Getcategorysources categorys;

  category_viewmodel(this.categorys);

  List<Source>? sources = null;
  String? eroreresponse = null;

  void getcategorylist(String categoryid) async {
    sources = null;
    eroreresponse = null;
    try {
      var response = await categorys.inoke(categoryid ?? '');
      sources = response;
    } catch (e) {
      if (e is Conectionerror) {
        eroreresponse = e.error;
      } else if (e is ServarError) {
        eroreresponse = "${e.message}---xxxx---${e.code}";

      }
    }
    notifyListeners();
  }
}
