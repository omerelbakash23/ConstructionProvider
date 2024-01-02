// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print

import 'package:constructionprovider1/view/screen/outh/forgetpassword/veryfiyCodes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



abstract class ForgetPasswordController extends GetxController{

late TextEditingController email ;
  GlobalKey<FormState>formstates =GlobalKey<FormState>();

checkemil();

 }

class ForgetPasswordControllerimp extends ForgetPasswordController {
  
  @override
  void onInit() {
    email =TextEditingController() ;
    super.onInit();
  }

@override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  
  
  
  @override
  checkemil() {
    var formdata =formstates.currentState;
    if(formdata!.validate()){
      Get.offAll(()=>const VeryFiyCodePage());
    }
    else{
    print("not valid");
    }
  }
  

  

}