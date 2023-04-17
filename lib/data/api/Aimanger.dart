import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/data/modal/SourceResponce.dart';
import 'package:news/data/modal/newsrespons.dart';


class Apimanger {
//https://newsapi.org/v2/top-headlines/sources?apiKey=f83298b71951414e9f3b4cc25cdc8fbd
  static String baseurl = 'newsapi.org';
   Future<SourceResponce> getsources(String categoryid) async {
    var uri = Uri.https(baseurl, '/v2/top-headlines/sources',
        {'apiKey': 'f83298b71951414e9f3b4cc25cdc8fbd',
        'category':categoryid,
        });
    try {
      var respones = await http.get(uri);
      var bodystring = respones.body;//string
      var json = jsonDecode(bodystring);
      var soursresponse = SourceResponce.fromJson(json);
      return soursresponse;
    } catch (e) {
        throw e;
    }
  }

   Future<Newsrespons> egetnews({String? sourceid,String? keywords,int? page }) async {
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=f83298b71951414e9f3b4cc25cdc8fbd
    var url = Uri.https(baseurl, '/v2/everything',
        {
          'apiKey': 'f83298b71951414e9f3b4cc25cdc8fbd',
          'sources': sourceid,
          'q': keywords,
          'page': '$page',
          'pageSize': '10',
        }
        );
    try {
      var respones = await http .get(url);
      var bodystring = respones.body;
      var json = jsonDecode(bodystring);
      var NEWSresponse = Newsrespons.fromJson(json);
      return NEWSresponse;
    } catch (e) {
      throw e;
    }
  }

}
