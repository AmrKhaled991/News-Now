import 'package:flutter/material.dart';
import 'package:news/categrey/newscontainer.dart';
import 'package:news/categrey/tabitma.dart';
import 'package:news/modal/SourceResponce.dart';

class contanTab extends StatefulWidget {
List<Source> sourcelist;

 contanTab({required this.sourcelist});

  @override
  State<contanTab> createState() => _contanTabState();
}

class _contanTabState extends State<contanTab> {
int selctedindex=0;

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcelist.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
          onTap: (value) {
    selctedindex=value;
    setState(() {
    });
          },
          indicatorColor:Colors.transparent ,
          tabs: widget.sourcelist.map((source) =>
              TabItam(source: source, isslected:selctedindex==widget.sourcelist.indexOf(source) )).toList(),
    ),
          Expanded(child:  NewsCoon(source: widget.sourcelist[selctedindex]))
          ,
        ],
      ),
    );
  }
}
