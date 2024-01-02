// ignore_for_file: file_names

import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorderscontroller.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAnimationOrder extends StatelessWidget {
  const CustomAnimationOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderpageControllerimp>(builder:(controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      
                        2,
                        (index) => AnimatedContainer(margin: const EdgeInsets.only(right: 8),
                              duration: const Duration(milliseconds: 900),
                              width: controller.end==index ? 5 :35 ,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: AppColors.colorsbutton,
                                  borderRadius: BorderRadius.circular(10)),
                            ))
                  ],
                ));
  }
}