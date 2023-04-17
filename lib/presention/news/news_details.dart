import 'package:flutter/material.dart';
import 'package:news/data/modal/newsrespons.dart';
import 'package:news/domain/domain_model/News.dart';
import 'package:url_launcher/url_launcher.dart';

class News_details extends StatelessWidget {
  static String routname = 'details';

  Widget build(BuildContext context) {
    var news = ModalRoute
        .of(context)!
        .settings
        .arguments as News;
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title ?? '', style: Theme
            .of(context)
            .primaryTextTheme
            .headline1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(margin: EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
            child: Image.network(news.urlToImage ?? ''),
          )
          ,
          SizedBox(height: 10,)
          ,
          Text(news.author ?? '', textAlign: TextAlign.start,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: 7,)
          ,
          Text(news.content ?? '', textAlign: TextAlign.center,),
          SizedBox(height: 7,)
          ,
          Text(news.publishedAt ?? '', textAlign: TextAlign.end,)
          ,
          SizedBox(height: 10,)
          ,
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text('CONTENT',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          )
          ,
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(news.content ?? '', textAlign: TextAlign.start,),
          ),
          SizedBox(height: 10,),
          TextButton.icon(
            onPressed: () {
              onpressed(news.url);
            },
            label: Text(
              'Viw full article', style: TextStyle(color: Colors.black),),
            icon: Icon(Icons.arrow_right, color: Colors.black,),
            style: ButtonStyle(alignment: Alignment.bottomRight),
          )
        ],
      ),
    );
  }

  void onpressed(String? url) async {
    if (url == null) {
      return;
    }
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

}