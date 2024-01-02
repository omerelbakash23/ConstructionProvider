// ignore_for_file: dead_code, non_constant_identifier_names, unrelated_type_equality_checks


import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/advetisementpagemodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



abstract class AdvertsMentPagecontroller extends GetxController{
  onpagechange( int index );
  change();
  change1();
   change2();
  ontap();
  List  mytext =["TExtLocation".tr,"TExtLocation2".tr,"TExtLocation3".tr];
  List myfavourite =[];
  Searchabout(String value);
    List<Specailorders> searchlist = List.from(specailordersList);


}

class AdvertsMentPagecontrollerimp extends AdvertsMentPagecontroller {
   late PageController pageController ;
       bool checked0 =false;
  bool checked00 =false;
  bool checked1 =false;
    bool checked2 =false;
  bool checked3 =false;
  bool checked4 =false;
  bool  issshow = true;
  String headtitle = "LoCation".tr;
  int currentpage =0;
  bool check0 =false;
    bool check1 =false;
  bool check2 =false;
 List <bool> 
 lovecolors =[true,
 true,true,true,true,true,true,true,true,true,true,true,true,true,
 
 
 ];


  @override
  onpagechange(int index) {
    currentpage=index;
    update();
  }


  @override
  void onInit() {
    pageController =PageController();
    super.onInit();
  }
 
 @override
  change(){
   check0 =! check0 ;
   check2 =false;
   check1 =false;
   update();

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
  ontap() {
 headtitle;
update();
  }

 showcheck() {
   checked1 = issshow ==true ? false :true;
   checked2 = issshow ==true ? false :true;
   checked3 = issshow ==true ? false :true;
   checked4 = issshow ==true ? false :true;
   checked0 = issshow ==true ? false :true;
   checked00= issshow ==true ? false :true;

    update();
  }






favouriteListRemove(int val){
  myfavourite.remove(myfavourite[val]);
  update();
}


  ListRemove(int val){
  myfavourite.remove(specailordersList[val]);
  update();
}




favouriteListadd(int val){
  myfavourite.add(specailordersList[val]);
  update();
}

  



  
  @override
  Searchabout(String value) {
    searchlist = specailordersList.where((element) =>
        element.jop.toLowerCase().contains(value.toLowerCase())).toList();
        update();
  }




} 