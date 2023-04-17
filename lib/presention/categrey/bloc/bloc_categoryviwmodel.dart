// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:news/modal/SourceResponce.dart';
//
// class categoryblocviewmodel extends Cubit<WidgetState>{
//   categoryblocviewmodel():super(LoadState());
//
//   getcatergoryidaxa(String? id)async{
//     try{
//       var response=await Apimanger.getsources(id!);
//       if(response.status!='ok'){
//         emit(ErrorState(response.massege));
//       }else
//         emit(SourceState(response.sources!));
//     }catch(e){
//       emit(Showmessfaild());
//     emit(ErrorState('something went weronge'));
//     }
//
//   }
// }
//
// abstract class WidgetState{}
// class LoadState extends WidgetState{}
// class SourceState extends WidgetState{
//   List<Source> Sources=[];
//   SourceState(this.Sources);
// }
// class ErrorState extends WidgetState{
//   String? Message=null;
//   ErrorState(this.Message);
// }
// class Showmessfaild extends WidgetState{
//
// }
//
