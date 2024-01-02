// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps

import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/function/checkinternet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ConnectwithusController extends GetxController{

late TextEditingController name ;
late TextEditingController phonenumber;
late TextEditingController yourtext;
  register();
}

class ConnectwithusControllerimp extends ConnectwithusController{
    GlobalKey<FormState>formstate =GlobalKey<FormState>();
    statuesRequest ?statesrequest ;
  @override
  register() async {
    var formdata =formstate.currentState;
    if(formdata!.validate()){
      statesrequest =statuesRequest.loading;
      print("register Succesful");
      update();

   }
    else{
    print("not valid");
    }
  }
  

    var res ;
initaldata() async {
res = await checkInterNet();
}

  @override
  void onInit() {
    name =TextEditingController() ;
    phonenumber =TextEditingController();
    yourtext=TextEditingController();
    initaldata();
    super.onInit();
  }

@override
  void dispose() {
    name.dispose();
    phonenumber.dispose();
    yourtext.dispose();
    super.dispose();
  }

  }
  


