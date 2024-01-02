import 'package:constructionprovider1/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Mymiddelware extends GetMiddleware {
    @override
      int?  get priority => 1 ;
      Myservices myServices =Get.find();
  @override
  RouteSettings? redirect(String? route){

    if(myServices.sharedPreferences.getString("onboarding")=="1"){
      return  const RouteSettings(name: "/signup");
    }
    return null;

  } 

}