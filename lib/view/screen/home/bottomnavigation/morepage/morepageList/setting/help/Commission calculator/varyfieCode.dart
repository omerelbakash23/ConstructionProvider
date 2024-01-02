// ignore_for_file: file_names, deprecated_member_use, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/LogoOuth.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/changpass.dart';
import 'package:constructionprovider1/view/screen/outh/forgetpassword/VeryfiyController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';


class VeryFiyCodeChangepass extends StatelessWidget {
  const VeryFiyCodeChangepass({super.key});

  @override
  Widget build(BuildContext context) {
 VeryfiyControllerimp conttrollers =Get.put(VeryfiyControllerimp());

    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
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
                child: OtpTextField(
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
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      Get.off(() => const ChangePasswordS());
                    }),
              ),
               GetBuilder<VeryfiyControllerimp>(
                builder: (controller) => Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        conttrollers.timers();
                      },
                      child: Row(
                        children: [
                          Image.asset("assets/images/return.png"),
                          const SizedBox(
                            width: 5,
                          ),
                           Text(
                            "Resend_signup".tr,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),const SizedBox(width: 10,),
                    Row(textDirection: TextDirection.rtl,
                      children: [
                        Text("second".tr,style: const TextStyle(color: Colors.grey),),
                        Text(" ${controller.counter} ",style: const TextStyle(color: Colors.grey)),
                         Text("Code_after".tr,style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                )),
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