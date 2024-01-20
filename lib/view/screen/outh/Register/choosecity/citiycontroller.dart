// ignore_for_file: dead_code, non_constant_identifier_names, unrelated_type_equality_checks, annotate_overrides


import 'package:constructionprovider1/view/screen/outh/Register/choosecity/cityservices.dart';
import 'package:constructionprovider1/view/screen/outh/Register/choosecity/modelcitiy.dart';
import 'package:get/get.dart';



 abstract class CityControllers extends GetxController{
    getcities();
    var CitiesList =<CityModel>[].obs;
    var isloading =true.obs;
   bool check=true;




}

class Citycontrollersimp extends CityControllers {
  
  @override
    
   getcities() async {
  var cityies =await GetCityServices.getcity();
  try {
    isloading.value=false;
    if (cityies.isNotEmpty) {
      CitiesList.addAll(cityies);
      
    }
  } finally {
    isloading.value=false;
    
  }
}








} 