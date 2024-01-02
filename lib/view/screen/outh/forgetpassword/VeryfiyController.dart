
// ignore_for_file: file_names, non_constant_identifier_names, unnecessary_overrides, avoid_print

import 'dart:async';

import 'package:get/get.dart';


abstract class VeryfiyController extends GetxController{

  late String Verfiycodes;
  int counter = 60 ;
late Timer timer ;


checkCode();
timers();
 }

class VeryfiyControllerimp extends VeryfiyController {
  
@override
  void onInit() {
    super.onInit();
  }

  
  
  @override
  checkCode() {
  }



  @override
  timers() {
    counter =60;
    timer=Timer.periodic(const Duration(milliseconds: 750),(timer){
      if (counter>0) {
        counter--;
        update();

    }

    });

  }
  

  

}