
// ignore_for_file: file_names, deprecated_member_use, unused_local_variable, avoid_unnecessary_containers, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/LogoOuth.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/Class/statuesResult.dart';
import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/veryfiy_signup_controller.dart';
import 'package:constructionprovider1/view/screen/outh/login/LoginScreen.dart';
import 'package:constructionprovider1/view/widget/customAnimation/customanimationsign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constant/textformfeild.dart';
// ignore: unused_import
import 'RegisterController.dart';

class SignUpScreen extends GetView<signupControllerIMp> {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    signupControllerIMp controllers =Get.put(signupControllerIMp());
    VeryfiysignUPcontrollerimp controlleress=Get.put(VeryfiysignUPcontrollerimp());
      GlobalKey<FormState> formstate = GlobalKey<FormState>();


    return SafeArea(
      child: Scaffold(
    
        backgroundColor: Colors.white,
        body: GetBuilder<signupControllerIMp>(builder: (controller) =>
         controller.statesrequest==statuesRequest.loading?
         Center(child: Lottie.asset(AppImageAssets.loading,height: 200,width: 200)):
           Container(
            child: Form(key: controller.formstate,
            autovalidateMode:AutovalidateMode.onUserInteraction,
              child: Stack(
                children: [ Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Group 1.png"),const Text("")
              ],
            ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView(
                      children: [
                         const SizedBox(height: 50,),
                         const LogoOuth(),
                       
                        Center(
                            child: Text(
                          "make_new_acc".tr,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 30,color: Colors.black),
                        )),const SizedBox(height: 10,),
                         
                        const SizedBox(height: 10,),
                              Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 0,top: 10),
                          child: Text("name_creat".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                     
                         TextFormFieldapp(
                          hintTexts: 'username_Enter'.tr,
                          iconsfield: const Icon(Icons.person), 
                          controllers:controller.usernamecontroller ,
                          valid: (val) {return validInput(val!, 4, 100, "username");}, isNumber: false,
                        ),

                           Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 0,top: 10),
                          child: Text("phone_num_creat".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                     
                         TextFormFieldapp(
                          hintTexts: 'phone_num_enter'.tr,
                          iconsfield: const Icon(Icons.person), 
                          controllers:controller.phonenumbercontroller ,
                          valid: (val) {return validInput(val!, 4, 100, "phone");}, isNumber: true,
                        ),
                          Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 0,top: 15),
                          child: Text("email_phone".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                         TextFormFieldapp(valid: (val) {  return validInput(val!, 5, 100, "email");},
                          hintTexts: 'enter_email'.tr,
                          iconsfield: const Icon(Icons.email),
                          controllers: controller.emailscontroller, isNumber: false,
                        ),
                          Padding(
                          padding: const EdgeInsets.only(right: 40,left: 40,bottom: 0,top: 15),
                          child: Text("Password_1".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                        ),
                         GetBuilder<signupControllerIMp>(builder: (controller) => 
                            TextFormFieldapp(
                            hintTexts: 'Enter_password'.tr,
                            iconsfield:controller.issshowpassword==true? const Icon(Icons.visibility_off,color: Colors.black,):const Icon(Icons.visibility,color: Colors.black,),ontapicons: () => controller.showpass(),
                         
                            controllers: controller.passwordcontroller, valid: (val) {   
                              return validInput(val!, 5, 30, "password");}, isNumber: false, obscureText: controller.issshowpassword,
                                           ),
                         ),
                        
                        
                              
                         const SizedBox(height: 20,),
                         Padding(
                           padding: const EdgeInsets.only(top: 10,right: 20,left: 20),
                           child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                             Text("have_acc".tr,style: const TextStyle(color: Colors.grey),),const SizedBox(width: 5,),
                            InkWell(child:  Text("Login_text".tr,style: const TextStyle(fontWeight: FontWeight.bold),),onTap: (){Get.off(()=>const LoginScreen());},)
                           ],),
                         ),
                         const SizedBox(height: 20,),
                         const Row(mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.ltr,
                           children: [
                             CustomAnimationSignup(),
                           ],
                         ),

                          Padding(
                           padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02,top: MediaQuery.of(context).size.height*.03,bottom:MediaQuery.of(context).size.width*.02),
                           child: ElevatedButtongeneral(textbutton: "Next".tr, OnPressed: (){
                            controllers.next();
                            }, rights: 10, lefts: 10, colorbuttons: AppColors.colorsbutton),
                         ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}