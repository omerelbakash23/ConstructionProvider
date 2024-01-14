// ignore_for_file: unused_local_variable, file_names, deprecated_member_use, use_build_context_synchronously, unused_element, unrelated_type_equality_checks, unnecessary_string_interpolations, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/LogoOuth.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register1.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/veryfiy_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


class VeryFiyCodesignup extends StatefulWidget {
  const VeryFiyCodesignup({super.key});

  @override
  State<VeryFiyCodesignup> createState() => _VeryFiyCodesignupState();
}

class _VeryFiyCodesignupState extends State<VeryFiyCodesignup> {
  @override
  Widget build(BuildContext context) {
    signupControllerIMp controllers =Get.put(signupControllerIMp());
    VeryfiysignUPcontrollerimp controller =Get.put(VeryfiysignUPcontrollerimp());
    bool returns =true;


    VeryfiysignUPcontrollerimp conttroller =
        Get.put(VeryfiysignUPcontrollerimp());

         void repet (){
      if (conttroller.counter==0) {
        setState(() {
          returns=false;
        });
        
      }
    }
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 children: [
                   InkWell(child: Image.asset("assets/images/Vector.png"),onTap:(){Get.offAll(()=>const SignUpScreen());}),
                 ],
               ),
             ),

              const LogoOuth(),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Vary_Phone_title".tr,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30, color: Colors.black),
              )),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Vary_Phone_body".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, color: Colors.grey),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: OtpTextField(autoFocus:true,
                    textStyle: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    fieldWidth: 60,
                    borderWidth: 2,
                    showCursor: false,
                    fillColor: AppColors.grey,
                    filled: true,
                    borderColor: AppColors.grey,
                    numberOfFields: 4,
                    borderRadius: BorderRadius.circular(20),
                    focusedBorderColor: AppColors.colorsbutton,
                    keyboardType: TextInputType.number,
                    showFieldAsBox: true,
                    onSubmit: (iftrue) async  {
                   await   controllers.CheckOtp(iftrue);
                    }),
              ),
             
             Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          controllers.resendOtp();   
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("OTP has been sent")));
                        conttroller.timers();

                        });
                      },
                      child: Row(
                        children: [
                          Image.asset("assets/images/return.png"),
                          const SizedBox(
                            width: 5,
                          ),
                           Text(
                            "Resend_signup".tr,
                            style:  TextStyle(
                                fontSize:returns ? 18:22, fontWeight: returns ?FontWeight.normal:FontWeight.bold),
                          ),
                        ],
                      ),
                    ),const SizedBox(width: 10,),
                    Row(textDirection: TextDirection.rtl,
                      children: [
                        Text("Code_after".tr,style: const TextStyle(color: Colors.grey)),
                        Text(" ${controller.counter} ",style: const TextStyle(color: Colors.grey)),
                        Text("second".tr,style: const TextStyle(color: Colors.grey),),

                      ],
                    ),
                  ],
                )),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: 
                  GetBuilder<signupControllerIMp>(builder:(controller) => Center(child: Text("the code untile backend send massage at phone \n ${controllers.codes.toString()}",textAlign: TextAlign.center,))),
                ),
              
              const SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
