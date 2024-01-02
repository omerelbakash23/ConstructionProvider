

// ignore_for_file: file_names, non_constant_identifier_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';

class MassageModel {
  final String image ;
  final String name ;
  final  String  massage ;
  final String time ;


  MassageModel (this.image,this.massage,this.name,this.time);
 
}



List <MassageModel> MassageScreen =[
  MassageModel(AppImageAssets.imagemassage, "مرحبا يا حسام انا في انتظارك اليوم بع...", "محمد ابراهيم",   "9:12" ),
  MassageModel(AppImageAssets.imagemassage4, "مرحبا يا ابراهيم انا في انتظارك اليوم بع..." ,"ابراهيم قدوس"  ,"9:12") ,
  MassageModel(AppImageAssets.imagemassage5, "مرحبا يا سمير انا في انتظارك اليوم بع..." ,"سمير شادي",     "9:12"    ),
  MassageModel(AppImageAssets.imagemassage6, "مرحبا يا ابراهيم انا في انتظارك اليوم بع..." ,"ابراعيم احمد",  "9:12" ),
  MassageModel(AppImageAssets.imagemassage7, "مرحبا يا احمد انا في انتظارك اليوم بع..." ,"احمد عماد",     "9:12" ),
    MassageModel(AppImageAssets.imagemassage, "مرحبا يا محمد انا في انتظارك اليوم بع...", "محمد ابراهيم",   "9:12" ),
  MassageModel(AppImageAssets.imagemassage4, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"ابراهيم قدوس"  ,"9:12") ,
  MassageModel(AppImageAssets.imagemassage5, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"سمير شادي",     "9:12"    ),
  MassageModel(AppImageAssets.imagemassage6, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"ابراعيم احمد",  "9:12" ),
  MassageModel(AppImageAssets.imagemassage7, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"احمد عماد",     "9:12" ),
  MassageModel(AppImageAssets.imagemassage, "مرحبا يا حسام انا في انتظارك اليوم بع...", "محمد ابراهيم",   "9:12" ),
  MassageModel(AppImageAssets.imagemassage4, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"ابراهيم قدوس"  ,"9:12") ,
  MassageModel(AppImageAssets.imagemassage5, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"سمير شادي",     "9:12"    ),
  MassageModel(AppImageAssets.imagemassage6, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"ابراعيم احمد",  "9:12" ),
  MassageModel(AppImageAssets.imagemassage7, "مرحبا يا حسام انا في انتظارك اليوم بع..." ,"احمد عماد",     "9:12" ),


];



class Massagesdetails {
  final String text ;
  final DateTime date ;
  final bool issentbyme ;
 Massagesdetails({required this.date,required this.issentbyme,required this.text});
}


List <Massagesdetails> massageDetailses =[
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 1)), issentbyme: false, text: "yesimsursadasdsadsadasdsadsadwedadsasdasdsadsadsadsadsadaasdsadsadsadsadasdsadasdasdsdasdasdasdasdasde"),
   Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 2)), issentbyme: true, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 3)), issentbyme: false, text: "yeasdasdsadsadasdsadsimsdsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 4)), issentbyme: true, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 5)), issentbyme: false, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 6)), issentbyme: true, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 7)), issentbyme: false, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 8)), issentbyme: true, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 9)), issentbyme: false, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 11)), issentbyme: true, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 12)), issentbyme: false, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 13)), issentbyme: true, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 14)), issentbyme: false, text: "yesimsure"),
  Massagesdetails(date: DateTime.now().subtract(const Duration(hours: 2,minutes: 15)), issentbyme: true, text: "yesimasdasdasdasdasdssure"),

].reversed.toList();
