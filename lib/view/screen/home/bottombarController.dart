// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps

import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/advertisementpage.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massage.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/more.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/myorders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class BottomnavController extends GetxController{
int currentIndexsHome = 0;
late PageController pageController ;
  List<Widget> bodys =[
     const AdvertsMentPage(),
     const OrdersPage(),
      const Massagepage(),
     const MorePage()
  ];

  @override
  void onInit() {
    pageController=PageController(initialPage: currentIndexsHome);
    super.onInit();
  }


  

  @override
  void dispose() {
pageController.dispose();
    super.dispose();
      }


  void Gotopage(int page){
  currentIndexsHome=page;
  pageController.jumpToPage(page);
  update();
  
  }


    void Animatetotap(int page){
  currentIndexsHome=page;
  pageController.animateToPage(page,duration: const Duration(milliseconds: 300),curve: Curves.ease);
  update();
  
  }

      void Updatecurrent(int index){
  currentIndexsHome=index;
  update();
  }


  



}

  


