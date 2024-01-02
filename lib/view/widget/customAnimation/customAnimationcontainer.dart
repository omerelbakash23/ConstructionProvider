// ignore_for_file: file_names

import 'package:constructionprovider1/view/screen/onbording/onbordingcontroller.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screen/onbording/onbordingmodel.dart';
class CustomAnimationContainer extends StatelessWidget {
  const CustomAnimationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnbordingControllerImp>(builder:(controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      
                        onbordingList.length,
                        (index) => AnimatedContainer(margin: const EdgeInsets.only(right: 8),
                              duration: const Duration(milliseconds: 900),
                              width: controller.currentpage==index ? 20 :5 ,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                            ))
                  ],
                ));
  }
}