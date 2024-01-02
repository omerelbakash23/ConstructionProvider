// ignore_for_file: file_names
import 'package:constructionprovider1/core/constant/them.dart';
import 'package:constructionprovider1/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
    bool checked1 =false;
    bool checked2 =false;
  bool  issshow = true;


  Locale? language ;

  Myservices myservices =Get.find();
 ThemeData appThemes =themEnglish ;


  changeLang (String langCode ){
  Locale locale =Locale(langCode);
myservices.sharedPreferences.setString("lang", langCode);
Get.updateLocale(locale);

  }

@override
  void onInit() {

    String? sharedPreferlang = myservices.sharedPreferences.getString("lang");
    if(sharedPreferlang =="ar"){
    language = const Locale("ar");
    }else if (sharedPreferlang == "en")
    {
      language =const Locale("en");
    }
    else {
     language =  Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }



    showcheck1(){
   checked1 = issshow ==true ? false :true;
    checked2 = issshow ==true ? false :true;

   update();

    }


    showcheck2(){
    checked1 = issshow ==true ? false :true;
   checked2 = issshow ==true ? false :true;
   changeLang("ar");

   update();

    }



}