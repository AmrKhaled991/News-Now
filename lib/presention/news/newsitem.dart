import 'package:flutter/material.dart';
import 'package:news/domain/domain_model/News.dart';

import 'news_details.dart';
class Newsitem extends StatelessWidget {
News news;
Newsitem({required this.news});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.of(context).pushNamed(News_details.routname,arguments: news),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
       Container(margin: EdgeInsets.all(10),
         clipBehavior: Clip.antiAlias,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
         child: Image.network(news.urlToImage??''),
       )
       ,SizedBox(height: 10,)
       ,Text(news.author??'',textAlign: TextAlign.start,),
       SizedBox(height: 7,)
       ,Text(news.content??'',textAlign: TextAlign.center,),
       SizedBox(height: 7,)
       ,Text(news.publishedAt??'',textAlign: TextAlign.end,)
   ],
      ),
    );
  }
}
