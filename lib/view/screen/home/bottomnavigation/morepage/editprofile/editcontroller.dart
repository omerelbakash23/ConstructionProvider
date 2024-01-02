// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class Editprofilepagecontroller extends GetxController{

late TextEditingController firstname ;
late TextEditingController secondname;
late TextEditingController email ;
late TextEditingController phone ;

}

class Editprofilepagecontrollerimp extends Editprofilepagecontroller{


  @override
  void onInit() {
    email =TextEditingController() ;
    phone =TextEditingController();
    firstname =TextEditingController();
    secondname =TextEditingController();

    super.onInit();
  }

@override
  void dispose() {
    email.dispose();
    firstname.dispose();
    secondname.dispose();
    phone.dispose();

    super.dispose();
  }
  bool  issshowpassword = true;
  bool checked =false;

  


  }





