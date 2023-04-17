import 'package:flutter/material.dart';
import 'package:news/domain/domain_model/Category.dart';
import 'package:news/domain/usecasese/Getnewsources.dart';
import 'package:news/domain/usecasese/Utils/Basedata.dart';
import 'package:news/data/reposatryimp;/newsuthreposatryimol.dart';
import 'package:news/presention/news/news_viewmodel.dart';
import 'package:provider/provider.dart';

import 'newsitem.dart';

class NewsCoon extends StatefulWidget {
  Source source;

  NewsCoon({required this.source});

  @override
  State<NewsCoon> createState() => _NewsCoonState();
}

class _NewsCoonState extends BaseStat<NewsCoon,news_viewmodel> implements news_navigator {
  ScrollController scrollcontroller = ScrollController();
  bool scrollinguporbuttom = false;

  @override
  void initState() {
    super.initState();
    scrollcontroller.addListener(() {
      if (scrollcontroller.position.atEdge) {
        bool isTop = scrollcontroller.position.pixels == 0;
        if (!isTop) {
          scrollinguporbuttom = true;
          setState(() {});
        } else {}
      }
    }

    );
    viewmodel.getnewslist(widget.source.id??'');
  }

  @override
  Widget build(BuildContext context) {
    if(scrollinguporbuttom){
      viewmodel.getnewslist(widget.source.id??'');
      scrollinguporbuttom=false;
    }
    return ChangeNotifierProvider(
      create: (context) => viewmodel,
      child:  Container(child: Consumer<news_viewmodel>(
        builder: (context, news_viewmodel,__){
          if(viewmodel.eroreresponse!=null){
            return Center(
              child: Column(
                children: [
                  Text(viewmodel.eroreresponse!),
                  ElevatedButton(onPressed: (){
                    viewmodel.getnewslist(widget.source.id??'');
                  }, child:Text('reload'))
                ],
              ),
            );
          }else if(viewmodel.newslist==null){
            return Center(child: CircularProgressIndicator());
          }else{
            if(widget.source.id!=viewmodel.sourceidwe){
              scrollcontroller.jumpTo(0);
               viewmodel.newslist.clear();
              viewmodel.getnewslist(widget.source.id??'');
            }
            return ListView.builder(
                controller: scrollcontroller,
                itemCount: viewmodel.newslist.length,
                itemBuilder: (context, index) {
                  return Newsitem(news: viewmodel.newslist[index]);
                });;            }
        } ,
      ),
      ),
    );

      // Container(
      //   child: FutureBuilder<Newsrespons>(
      //     future: Apimanger.egetnews(
      //       sourceid: widget.source.id ?? '',
      //     ),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasError) {
      //         return Column(
      //           children: [
      //             Text(snapshot.data?.massege ?? ''),
      //           ],
      //         );
      //       }
      //       if (snapshot.data?.status != 'ok') {
      //         return Text(snapshot.data?.massege ?? '');
      //       }
      //       if (snapshot.hasData) {
      //         if(newslist.isEmpty){
      //           newslist.addAll(snapshot.data?.articles ?? []);
      //         }else if(snapshot.data?.articles?[0].title!=newslist[0].title){
      //           scrollcontroller.jumpTo(0);
      //           newslist.clear();
      //           newslist.addAll(snapshot.data?.articles ?? []);
      //         }
      //         return ListView.builder(
      //             controller: scrollcontroller,
      //             itemCount: newslist.length,
      //             itemBuilder: (context, index) {
      //               return Newsitem(news: newslist[index]);
      //             });
      //       } else
      //         return Center(
      //           child: CircularProgressIndicator(
      //             color: Theme.of(context).primaryColor,
      //           ),
      //         );
      //     },
      //   ),
      // ),

  }

  @override
  news_viewmodel intitvieNaigat() {
    // TODO: implement intitvieNaigat
return news_viewmodel(injectGetnewssources());
  }
}
