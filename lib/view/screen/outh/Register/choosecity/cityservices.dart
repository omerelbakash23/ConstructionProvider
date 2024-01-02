
// ignore_for_file: unnecessary_string_interpolations, avoid_print, unused_local_variable



import 'package:constructionprovider1/core/constant/string.dart';
import 'package:constructionprovider1/view/screen/outh/Register/choosecity/modelcitiy.dart';
import 'package:dio/dio.dart';

Dio dio=Dio();
class GetCityServices {

static Future<List<CityModel>> getcity()async {
var response= await dio.get('$baseUrl/cities');
var city =response.data as Map<String,dynamic>;
if (response.statusCode==200) {
  GetCitiesModel citiesfromjson = GetCitiesModel.fromJson(city);
 return citiesfromjson.data??[];
  
}else{
  return throw Exception("");
}
}


}