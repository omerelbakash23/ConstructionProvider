// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, avoid_print, unused_import, unused_local_variable, curly_braces_in_flow_control_structures, unnecessary_brace_in_string_interps, unnecessary_import, avoid_renaming_method_parameters



import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:constructionprovider1/core/constant/string.dart';
import 'package:constructionprovider1/view/screen/home/homes.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/ResendModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

signupControllerIMp controller =signupControllerIMp();
abstract class VeryfiysignUPcontroller extends GetxController{
int counter = 60 ;
late Timer timer ;
 timers();

}
 class VeryfiysignUPcontrollerimp extends VeryfiysignUPcontroller {



  
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





