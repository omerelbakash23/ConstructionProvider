// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, empty_constructor_bodies, avoid_types_as_parameter_names, avoid_renaming_method_parameters, collection_methods_unrelated_type, unused_local_variable

import 'dart:convert';

import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/function/checkinternet.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/AdressesMOdel/ListAdressesModel.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';


class GetAdressServices {


static Future<List<Datum>> Getadresses()async {
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
var Adresses =response.data as Map<String,dynamic>;
if (response.statusCode==200) {
  ListAdresses listAdressesFromJson = ListAdresses.fromJson(Adresses);
 return listAdressesFromJson.data??[];
  
}else{
  return throw Exception("");
}


}

}

signupControllerIMp controller=Get.put(signupControllerIMp());


abstract class AddAdresscontroller extends GetxController{
  GetAdress();
    postAdress();
    deletadresses();
        var datas =<Datum>[].obs;
    var isloading =true.obs;
AddAdressTolist(Datum datas);
removeadressfromlist(int index);

}

class AddAdresscontrollerimp extends AddAdresscontroller{
    statuesRequest ?statesrequest ;
  

    var res ;
initaldata() async {
res = await checkInterNet();
}

 
  @override
  GetAdress()async {
  var Adress =await GetAdressServices.Getadresses();
  try {
    isloading.value=true;
    if (Adress.isNotEmpty) {
      datas.addAll(Adress);
      
    }
  } finally {
    isloading.value=false;
    
  }
  }


  @override
  AddAdressTolist(items)  {
 datas.add(items);
 update(datas);
  }
  
  @override
 removeadressfromlist(index) {
  datas.removeAt(index);
  update(datas);
  }
  
  
  @override
  Future postAdress() async {
    var headers = {
  'Accept': 'application/json',
  'Authorization': controller.Apptoken
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
  
  @override
  Future deletadresses() async {
    var headers = {
  'Accept': 'application/json',
  'Authorization': controller.Apptoken
};
var dio = Dio();
 var response = await dio.request(
  'https://sos-api.rowadtqnee.online/provider/addresses/:id',
  options: Options(
    method: 'DELETE',
    headers: headers,
  ),  
);

if (response.statusCode == 200) {
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
}
  }
 
  



  }
  


