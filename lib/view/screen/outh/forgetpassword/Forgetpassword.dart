// ignore_for_file: unused_local_variable, file_names, deprecated_member_use, unused_import, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/core/constant/LogoOuth.dart';
import 'package:constructionprovider1/view/screen/outh/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgetcontroller.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/elvatedbutton.dart';
import '../../../../core/constant/textformfeild.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerimp conttroller =Get.put(ForgetPasswordControllerimp());
    return SafeArea(
      child: Scaffold(
       
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(key: conttroller.formstates,
            child: ListView(
              
              children: [
                Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(textDirection: TextDirection.ltr,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [const Text(""),
                   InkWell(child: Image.asset("assets/images/Vector.png"),onTap:(){Get.offAll(()=>const LoginScreen());}),
                 ],
               ),
             ), const LogoOuth(),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  "Return_pass".tr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 30,color: Colors.black),
                )),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Vary_Phone_body".tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,color: Colors.grey
                          ),
                    )),
                const SizedBox(
                  height: 20,
                ),   Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 0,top: 15),
                          child: Text("email_phone".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                 TextFormFieldapp(
                  hintTexts: 'enter_email_phone'.tr,
                  iconsfield: const Icon(Icons.email_outlined), controllers: conttroller.email, 
                  valid: (val){
                    return validInput(val!, 5, 100, "email");
                  }, isNumber: false,
                
                
                 ),
                 
          
                                Padding(
                   padding: const EdgeInsets.only(right: 50,left: 50,top: 20),
                   child: ElevatedButtongeneral(textbutton: "CHECK".tr, OnPressed: (){conttroller.checkemil();}, rights: 10, lefts: 10, colorbuttons: AppColors.colorsbutton),
                 ),
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
