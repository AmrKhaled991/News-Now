import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/modal/SourceResponce.dart';
import 'package:news/modal/newsrespons.dart';

class Apimanger {
//https://newsapi.org/v2/top-headlines/sources?apiKey=f83298b71951414e9f3b4cc25cdc8fbd
  static String baseurl = 'newsapi.org';
  static Future<SourceResponce> getsources() async {
    var uri = Uri.https(baseurl, '/v2/top-headlines/sources',
        {'apiKey': 'f83298b71951414e9f3b4cc25cdc8fbd'});
    try {
      var respones = await http.get(uri);
      var bodystring = respones.body;
      var json = jsonDecode(bodystring);
      var soursresponse = SourceResponce.fromJson(json);
      return soursresponse;
    } catch (e) {
      throw e;
    }
  }

  static Future<Newsrespons> egetnews(String sourceid) async {
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=f83298b71951414e9f3b4cc25cdc8fbd
    var url = Uri.https(baseurl, '/v2/everything',
        {
          'apiKey': 'f83298b71951414e9f3b4cc25cdc8fbd',
          'sources': sourceid
        });
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
