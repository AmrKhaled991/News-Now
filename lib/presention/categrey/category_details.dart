import 'package:flutter/material.dart';
import 'package:news/domain/usecasese/Getcategorysources.dart';
import 'package:news/domain/usecasese/Utils/Basedata.dart';
import 'package:news/presention/categrey/Mylocalcategory.dart';
import 'package:news/presention/categrey/categrory_viewmodel.dart';
import 'package:news/presention/categrey/tabconta.dart';
import 'package:provider/provider.dart';

class Categoryde extends StatefulWidget {
 Mylocalcategory category;
 Categoryde({required this.category});

  @override
  State<Categoryde> createState() => _CategorydeState();
}

class _CategorydeState extends BaseStat<Categoryde,category_viewmodel>implements category_navigator {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     viewmodel.getcategorylist(widget.category.id??'');
  }
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewmodel,
      child: Container(child: Consumer<category_viewmodel>(
        builder: (context, category_viewmodel, __) {
          if (viewmodel.eroreresponse != null) {
            return Center(
              child: Column(
                children: [
                  Text(viewmodel.eroreresponse!),
                  ElevatedButton(onPressed: () {
                    viewmodel.getcategorylist(widget.category.id ?? '');
                  }, child: Text('reload'))
                ],
              ),
            );
          } else if (viewmodel.sources == null) {
            return Center(child: CircularProgressIndicator());
          } else {
            return contanTab(sourcelist: viewmodel.sources ?? []);
          }
        },
      ),
      ),
    );
  }

  @override
  category_viewmodel intitvieNaigat() {
    // TODO: implement intitvieNaigat
    return category_viewmodel(injectGetcategorysources());
  }
}
