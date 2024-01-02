// ignore_for_file: file_names, deprecated_member_use, must_be_immutable, non_constant_identifier_names, avoid_types_as_parameter_names, unused_local_variable, unused_import, deprecated_member_use_from_same_package

import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/myorders.dart';
import 'package:constructionprovider1/view/screen/outh/login/LogIn_Controller.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/view/screen/outh/forgetpassword/Forgetpassword.dart';
import 'package:constructionprovider1/core/constant/textformfeild.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/LogoOuth.dart';
import '../../../../core/constant/elvatedbutton.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  
  Widget build(BuildContext context) {
   LoginControllerIMp controller= Get.put(LoginControllerIMp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:
        Form(key: controller.formstate,
          child: Stack(
            children: [
               Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Group 1.png"),const Text("")
              ],
            ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [ 
                    const SizedBox(height: 80,),
                  const LogoOuth(),
                    Center(
                        child: Text(
                      "Login_text".tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 30,color: Colors.black),
                    )),
                    
                    const SizedBox(
                      height: 40,
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 30,left: 30,bottom: 10),
                      child: Text("email_phone".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                    ),
                     TextFormFieldapp(
                      hintTexts: 'enter_email'.tr,
                       controllers: controller.email, valid: (val) {
                        return validInput(val!, 5, 100, "email");
                        }, isNumber: false, iconsfield: const Icon(Icons.abc,color: AppColors.grey,),
                    
                    ),const SizedBox(height: 15,),

                      Padding(
                      padding: const EdgeInsets.only(right: 30,left: 30,bottom: 10),
                      child: Text("Password_1".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                    ),
                     GetBuilder<LoginControllerIMp>(builder: (controller) => 
                        TextFormFieldapp(
                        hintTexts: 'Enter_password'.tr,
                        iconsfield:controller.issshowpassword ==true? const Icon(Icons.visibility_off,color: Colors.black,):const Icon(Icons.visibility,color: Colors.black,),ontapicons: () => controller.showpass(),
                      
                        controllers: controller.password, valid: (val) {   
                          return validInput(val!, 5, 30, "password");}, isNumber: false, obscureText: controller.issshowpassword,
                                       ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                      child: Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [ 
                       Row(textDirection: TextDirection.rtl,children: [
                         GetBuilder<LoginControllerIMp>(builder: (controller) => 
                         ClipRRect(
                           child: Checkbox(activeColor: AppColors.colorsbutton,value:controller.checked , onChanged: (newcheck){
                            controller.showcheck();
                           controller.checked= newcheck!;
                                                }),
                         ),
                        ), Text("Rememberـ".tr)
                       ],)
                       ,InkWell(onTap: (){Get.offAll(()=>const ForgetPassword());},child:  Text("are_you_forget".tr,style: const TextStyle(color: Colors.black),))
                      ],),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right: 20,left: 20,top: 30),
                       child: ElevatedButtongeneral(textbutton: "Login_text".tr, OnPressed: (){
                        controller.login();
                        }, rights: 10, lefts: 10, colorbuttons:  AppColors.colorsbutton),
                     ),
                      
                     const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.only(top: 10,right: 5,left: 5),
                       child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                         Text("dont_have_acc".tr,style: const TextStyle(color: Colors.grey),),
                        InkWell(child:  Padding(
                          padding: const EdgeInsets.only(right: 3,left: 3),
                          child: Text("make_new_acc".tr,style: const TextStyle(fontWeight: FontWeight.bold),),
                        ),onTap: (){    Get.offAll(()=>const SignUpScreen());
                      },)
                       ],),
                     )
                  ],
                ),
              ),
            ],
          ),
        ),
      
    ));
  
  }
}
