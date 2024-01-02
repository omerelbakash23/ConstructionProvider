// ignore_for_file: dead_code

import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/cancelorder/canceledorder.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/continuesorders/continuesorders.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/finshedorder/finshedorder.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/neworders/newsOrders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



abstract class OrderpageController extends GetxController{
    change();
    change1();
      change2();
        bool check0 =false;
    bool check1 =false;
  bool check2 =false;


  onpagechange( int index );
}

class OrderpageControllerimp extends OrderpageController {

   late PageController pageController ;
int end =0;
int currentIndes=0;
int currentpage =0;
List pagesorders =[
  const NewsOrders(),
  const Continueorders(),
  const canceledOrders(),
  const FinshedOrders(),
];

List pagesordersnames =[
"new applications".tr,
 "Ongoing requests".tr,
"Canceled orders".tr,
"Requests finished".tr,

];


  @override
  onpagechange(int index) {
 index =currentpage;
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



} 