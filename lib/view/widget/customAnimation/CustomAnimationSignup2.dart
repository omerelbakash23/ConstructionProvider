// ignore_for_file: file_names

import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAnimationSignup2 extends StatelessWidget {
  
  const CustomAnimationSignup2({super.key});
  @override
  Widget build(BuildContext context) {

    return GetBuilder<signupControllerIMp>(builder:(controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      
                        controller.SignupCustombutton.length,
                        (index) => AnimatedContainer(margin: const EdgeInsets.only(right: 8),
                              duration: const Duration(milliseconds: 100),
                              width: controller.currentpages==index ? 20 :10 ,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: controller.currentpage==index?Colors.black:Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                            ))
                  ],
                ));
  }
}