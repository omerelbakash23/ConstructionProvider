// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, avoid_print, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, empty_constructor_bodies, avoid_types_as_parameter_names, avoid_renaming_method_parameters, collection_methods_unrelated_type

import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/function/checkinternet.dart';
import 'package:get/get.dart';


class adressitems
{
  String ?cityname ;
  String ?citieslocation;

  adressitems({required this.cityname ,required this.citieslocation, });
}

abstract class AddAdresscontroller extends GetxController{

 List <adressitems>Adresses = [];



AddAdressTolist(adressitems myadresses);
removeadressfromlist(int index);

}

class AddAdresscontrollerimp extends AddAdresscontroller{
    statuesRequest ?statesrequest ;
  

    var res ;
initaldata() async {
res = await checkInterNet();
}




  @override
  AddAdressTolist(myadresses)  {
 Adresses.add(myadresses);
 update(Adresses);
  }
  
  @override
 removeadressfromlist(int index) {
  Adresses.removeAt(index);
  update(Adresses);
  }
  



  }
  


