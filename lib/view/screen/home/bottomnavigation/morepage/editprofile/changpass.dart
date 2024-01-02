// ignore_for_file: unused_local_variable, file_names, deprecated_member_use, non_constant_identifier_names, avoid_types_as_parameter_names, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/LogoOuth.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:constructionprovider1/core/constant/textformfeild.dart';
import 'package:constructionprovider1/view/screen/outh/forgetpassword/resetPasswordController.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordS extends StatelessWidget {
  const ChangePasswordS({super.key});

  @override
  Widget build(BuildContext context) {
    ResetControllerimp conttrollers =Get.put(ResetControllerimp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(key: conttrollers.formstate,
          child: Stack(
            children: [
             
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [ 
                     Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(textDirection: TextDirection.rtl,
                 children: [
                   InkWell(child: Image.asset("assets/images/Vector.png"),onTap:(){Get.back();}),
                 ],
               ),
             ),
                    const LogoOuth(),
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
                    const SizedBox(
                      height: 20,
                    ), 
                       Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 10,top: 15),
                          child: Text("Password_1".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                     GetBuilder<ResetControllerimp>(builder: (controller) => 
                        TextFormFieldapp(
                        hintTexts: 'Enter_password'.tr,
                        iconsfield:controller.issshowpassword ==true? const Icon(Icons.visibility_off,color: Colors.black,):const Icon(Icons.visibility,color: Colors.black,),ontapicons: () => controller.showpass(),
                      
                        controllers: controller.password, valid: (val) {   
                          return validInput(val!, 5, 30, "password");}, isNumber: false, obscureText: controller.issshowpassword,
                                       ),
                     ),


                     const SizedBox(height: 20,),



                        Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 10,top: 10),
                          child: Text("Password_2".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                       GetBuilder<ResetControllerimp>(builder: (controller) => 
                        TextFormFieldapp(
                        hintTexts: 'Enter_password'.tr,
                        iconsfield:controller.issshowpassword ==true? const Icon(Icons.visibility_off,color: Colors.black,):const Icon(Icons.visibility,color: Colors.black,),ontapicons: () => controller.showpass(),
                      
                        controllers: controller.repassword, valid: (val) {   
                          return validInput(val!, 5, 30, "password");}, isNumber: false, obscureText: controller.issshowpassword,
                                       ),
                     ),

                                    Padding(
                       padding: const EdgeInsets.only(right: 50,left: 50,top:10 ),
                       child: ElevatedButtongeneral(textbutton: "Change_text".tr, OnPressed: (){conttrollers.resetPassword();
                        
                       }, rights: 10, lefts: 10, colorbuttons: AppColors.colorsbutton),
                     ),
                
                
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
