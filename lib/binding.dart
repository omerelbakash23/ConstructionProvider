import 'package:constructionprovider1/core/Class/crud.dart';
import 'package:get/get.dart';

import 'view/screen/outh/Register/RegisterController.dart';


class Mybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>signupControllerIMp(),fenix: true);
    Get.put(Curd()) ;
    
  }

}