// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/Class/statuesResult.dart';
import '../../../../core/function/checkinternet.dart';
 import 'package:constructionprovider1/view/screen/home/homes.dart';
abstract class LoginController extends GetxController{

late TextEditingController email ;
late TextEditingController password;
  login();
}

class LoginControllerIMp extends LoginController{
    GlobalKey<FormState>formstate =GlobalKey<FormState>();
    statuesRequest ?statesrequest ;
  @override
  login() async {
    var formdata =formstate.currentState;
    if(formdata!.validate()){
      statesrequest =statuesRequest.loading;
      Get.offAll(()=>  const BottomNavBarPage());
      update();

   }
    else{
    print("not valid");
    }
  }
  

    var res ; 
initaldata()async {
res = await checkInterNet();
}

  @override
  void onInit() {
    email =TextEditingController() ;
    password =TextEditingController();
    initaldata();
    super.onInit();
  }

@override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  bool  issshowpassword = true;
  bool checked =false;

  showpass() {
    issshowpassword = issshowpassword ==true ? false :true;
    update();
  }


    showcheck() {
    checked = issshowpassword ==true ? false :true;
    update();
  }





}