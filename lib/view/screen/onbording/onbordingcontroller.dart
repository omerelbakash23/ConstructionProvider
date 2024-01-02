// ignore_for_file: dead_code

import 'package:constructionprovider1/core/services/services.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onbordingmodel.dart';


abstract class OnbordingController extends GetxController{
  next();
  onpagechange( int index );
}

class OnbordingControllerImp extends OnbordingController {
   late PageController pageController ;
  int currentpage =0;
  Myservices myservices =Get.find();
  @override
  next() {
    currentpage++;
    if(currentpage > onbordingList.length-1 ){
      myservices.sharedPreferences.setString("onboarding", "1");
     Get.offAll(()=> const SignUpScreen());
    }
    else{
          pageController.animateToPage(currentpage, duration: const Duration(milliseconds: 900), curve:Curves.easeInOut  );

    }
  }

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

} 