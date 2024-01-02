// ignore_for_file: dead_code, non_constant_identifier_names, overridden_fields

import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massageModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class MassageController extends GetxController {
late TextEditingController Quantaty ;
late TextEditingController Price ;
late TextEditingController Mymassage ;


  updatelist(String value);
  ontap();
  change();
  change1();
  change2();
  bool check0 =false;
  bool check1 =false;
  bool check2 =false;
   String headtitle = "المدينة المنورة, شارع المدينة المنورة الحي \n الخامس" ;
  List  mytext =["المدينة المنورة, شارع المدينة المنورة الحي \n الخامس قريب ","المدينة المنورة, شارع المدينة المنورة ","المدينة المنورة, شارع المدينة المنورة الحي \n الخامس  "];

  List<MassageModel> disableList = List.from(MassageScreen);
}

class MassageControllerimp extends MassageController {
  @override
  updatelist(String value) {
    disableList = MassageScreen.where((element) =>
        element.name.toLowerCase().contains(value.toLowerCase())).toList();
        update();
  }


@override
  void onInit() {
   Quantaty =TextEditingController() ;
   Price =TextEditingController();
   Mymassage =TextEditingController();
    super.onInit();

  }

  @override
  void dispose() {

    Quantaty.dispose();
    Price.dispose();
    super.dispose();
  }


  @override
  change1(){
   check1 =! check1 ;
   check0 =false;
   check2 =false;
   update();

 }
 @override
  change2(){
   check2 =! check2 ;
   check0=false;
   check1 =false;
   update();

 }


 @override
  change(){
   check0 =! check0 ;
   check2 =false;
   check1 =false;
   update();

 }



 @override
  ontap() {
 headtitle;
update();
  }















}
