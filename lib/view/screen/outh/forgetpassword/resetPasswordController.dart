// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, unused_import, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'successe_resetPassword.dart';


abstract class ResetController extends GetxController{
  GlobalKey<FormState>formstate =GlobalKey<FormState>();

late TextEditingController password ;
late TextEditingController repassword ;

resetPassword();

 }

class ResetControllerimp extends ResetController {
  
  @override
  void onInit() {
    password =TextEditingController() ;
    repassword =TextEditingController() ;

    super.onInit();
  }

    bool  issshowpassword = true;

    showpass() {
    issshowpassword = issshowpassword ==true ? false :true;
    update();
  }


@override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  
  @override
  resetPassword() {
    if(formstate.currentState!.validate()){  
     Get.to(()=>const Succssesresetpassword());

    }
    else{
    print("not valid");
    }



     
  }
  

  

}


