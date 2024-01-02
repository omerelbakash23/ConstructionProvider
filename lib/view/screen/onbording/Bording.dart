// ignore_for_file: file_names, unused_import

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/onbording/onbordingcontroller.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:constructionprovider1/view/screen/outh/login/LoginScreen.dart';
import 'package:constructionprovider1/view/screen/outh/Register/Register1.dart';
import 'package:constructionprovider1/view/widget/customAnimation/customAnimationcontainer.dart';
import 'package:constructionprovider1/view/widget/slider/slidercustomeOnbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBording extends GetView<OnbordingController> {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    OnbordingControllerImp controller = Get.put(OnbordingControllerImp());
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                const Expanded(flex: 3, 
                child: SlidersOnbording()),
                Expanded(
                    flex: 1,
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            const CustomAnimationContainer(),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height * 0.05),
                                child: ElevatedButtongeneral(
                                    OnPressed: () {
                                      controller.next();
                                    },
                                    colorbuttons: AppColors.colorsbutton,
                                    lefts: 50,
                                    rights: 50,
                                    textbutton: "Continue_button".tr)),

                                    SizedBox(height:  MediaQuery.of(context).size.height * 0.04,),
                                    InkWell(onTap: () {Get.to(()=>const SignUpScreen());},child: Text("Skip_button".tr,style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0xff656565)),),)
                          ],
                        ),
                      ],
                    ))
              ],
            )));
  }
}
