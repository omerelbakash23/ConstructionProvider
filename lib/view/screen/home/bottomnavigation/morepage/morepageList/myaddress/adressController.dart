// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, empty_constructor_bodies, avoid_types_as_parameter_names, avoid_renaming_method_parameters, collection_methods_unrelated_type

import 'dart:convert';

import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/function/checkinternet.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/AdressesMOdel/ListAdressesModel.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';




signupControllerIMp controller=Get.put(signupControllerIMp());


abstract class AddAdresscontroller extends GetxController{
  GetAdress();
    postAdress();


//  List <ListAdresses>Adresses = [];

List <Datum>datas=[];


AddAdressTolist(Datum datas);
// removeadressfromlist(int index);

}

class AddAdresscontrollerimp extends AddAdresscontroller{
    statuesRequest ?statesrequest ;
  

    var res ;
initaldata() async {
res = await checkInterNet();
}




  @override
  AddAdressTolist(items)  {
 datas.add(items);
 update(datas);
  }
  
//   @override
//  removeadressfromlist(index) {
//   datas.removeAt(index);
//   update(datas);
//   }
  
  @override
   Future GetAdress() async {
var headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer 11|5Uhog019fR8DahWU8eIrTmbeYZNxDjyf53fsQL2gce17affd'
};
var dio = Dio();
var response = await dio.request(
  'https://sos-api.rowadtqnee.online/provider/addresses',
  options: Options(
    method: 'GET',
    headers: headers,
  ),
);

if (response.statusCode == 200) {
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
}
return response ;

  }
  
  @override
  Future postAdress() async {
    var headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer 11|5Uhog019fR8DahWU8eIrTmbeYZNxDjyf53fsQL2gce17affd'
};

var dio = Dio();
var response = await dio.request(
  'https://sos-api.rowadtqnee.online/provider/addresses',
  options: Options(
    method: 'POST',
    headers: headers,
  ),
  data: {
   'city_id': '1',
  'description': 'sfsdflsdflmsdlmfdlsmflsmdflldmsfsdf',
  'house_name': 'Test Name'
  },
);

if (response.statusCode == 200) {
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
}
  }
  


 


























































  }
  


