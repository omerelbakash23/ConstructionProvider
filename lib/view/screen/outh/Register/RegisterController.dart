

// ignore_for_file: file_names, implementation_imports, camel_case_types, non_constant_identifier_names, unnecessary_brace_in_string_interps, avoid_print, unused_local_variable

import 'dart:convert';
import 'dart:io';

import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/constant/string.dart';
import 'package:constructionprovider1/view/screen/home/homes.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Pledge.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register1.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register2.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/customfieldcarer.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/customfieldcity.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/customfieldsecondbranch.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/src/form_data.dart' as formdata;
import 'package:dio/src/multipart_file.dart' as multipart;
import 'package:shared_preferences/shared_preferences.dart';
abstract class signUpController extends GetxController {
  bool loadbutton =true;
  bool loadbuttons=true;
 Dio dio =Dio();
 Future CheckOtp(String codeotp);
 Future resendOtp(); 
String?codes ;
 String ?ids ;
 String ?phonecode ;

  showpass();
   bool issshowpassword = true;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  GlobalKey<FormState> formstate2 = GlobalKey<FormState>();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController emailscontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  int? entity_typescontroller;
  int? typescontroller;
  File? imagescontroller;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  statuesRequest? statesrequest;
  int currentpage = 0;
  int currentpages = 0;
  List SignupCustombutton = [
    const SignUpScreen(),
    const SignUpscreen2(),
  ];

  next();
  Future Register();
}

class signupControllerIMp extends signUpController {
  List data = [];


  @override
  void onInit() async {
    emailscontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    usernamecontroller = TextEditingController();
    phonenumbercontroller = TextEditingController();
    addresscontroller = TextEditingController();
    await Citycontroller.getcities();

    super.onInit();
  }



  @override
  showpass() {
    issshowpassword = issshowpassword == true ? false : true;
    update();
  }
  
  
  @override
  Future Register() async {
    loadbuttons =false;
      formdata.FormData formData = formdata.FormData.fromMap(
      {
      "image": imagescontroller!=null? await multipart.MultipartFile.fromFile(imagescontroller!.path):"",
      "name": usernamecontroller.text,
      "email": emailscontroller.text,
      "phone":phonenumbercontroller.text ,  
      "address":addresscontroller.text ,
      "city_id":city_idscontroller.toString(),
      "category_id":category_idcontroller.toString(),
      "sub_category_id":sub_category_idscontroller.toString(),
      "entity_type": entity_typescontroller.toString(),
      "type": typescontroller.toString(),
    }
    );
    var response = await dio.post("${baseUrl}/auth/register",
        data: formData,
        options: Options(
          validateStatus: (state){
            return state != null && state < 500;
          }
        )
        );
      var initdata= json.decode(response.data);
      print("my dataaaaa $initdata");
    if (response.statusCode == 200) {
       Get.defaultDialog(title:"",content: const Peldgedialog());
      codes=response.data["data"]["code"].toString();
      ids=response.data["data"]["id"].toString();
      phonecode=response.data["data"]["user"]['phone'].toString();
      print("code is ${codes}");
       print("ids is ${ids}");
       usernamecontroller.clear();
       phonenumbercontroller.clear();
       emailscontroller.clear();
    } 
    else {
     
      loadbuttons=false;
       Get.defaultDialog(title: "",content:  Center(child: Text(initdata['message'].toString())));
    }
  
    
  }
  
  @override
  next() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.to(() => const SignUpscreen2());
      update();
    } else {
      print("not valid try onther");
    }
  }



    @override
      Future  resendOtp() async {
 formdata.FormData formData2 = formdata.FormData.fromMap(
      {
     "phone":phonecode
    }
    );
    print("phone numer is ${phonenumbercontroller.text}");

      var response = await dio.post("${baseUrl}/auth/send-otp",
      data:formData2);
      print(response.data);
      }  






@override
  Future  CheckOtp(codeotp) async {
    
      print(" id is ${ids} at check otp");
      print(" codeotp is ${codeotp} at check otp");
       var response = await dio.post("${baseUrl}/auth/check-otp",
          data: {
      "id":ids,
      "code":codeotp
    },  
    options: Options(

            followRedirects: false,
            // will not throw errors
            validateStatus: (status) => true,
          ),
         );
         print(response.data);
      if (response.statusCode==200) {
       final SharedPreferences prefs = await _prefs;
       Get.offAll(()=>const BottomNavBarPage());
     prefs.setString("Token",response.data['data']['user']['token']);

        } 
        else 
        {
          print("basel");
           Get.defaultDialog(title: "",content: const Center(child: Text("رمز OTP خاطئ او منتهى برجاء التأكد ثم اعادة المحاولة !")));

        } 
    
    
     
   
   
}










  
  
}
