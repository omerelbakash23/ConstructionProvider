
import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



 abstract class AdvertsMentdetailsPagecontroller extends GetxController{
   late PageController pageControllers ;
    onpagechanges( int index );
   int currentpage =0;
     List advertsmentbanarLists =[
    AppImageAssets.imagadvertsment,
    AppImageAssets.imagadvertsment,
    AppImageAssets.imagadvertsment,

  ];

}

class AdvertsMentdetailsPagecontrollerimp extends AdvertsMentdetailsPagecontroller {

  @override
  void onInit() {
    pageControllers =PageController();
    super.onInit();
  }


     @override
  onpagechanges(int index) {
    currentpage=index;
    update();
  }





  
  }

  

