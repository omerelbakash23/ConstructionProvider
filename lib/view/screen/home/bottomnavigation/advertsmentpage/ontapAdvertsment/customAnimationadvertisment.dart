// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/ontapadvetsmentcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAnimationadvertisment extends StatelessWidget {
  
  const CustomAnimationadvertisment({super.key});
  @override
  Widget build(BuildContext context) {

    return GetBuilder<AdvertsMentdetailsPagecontrollerimp>(builder:(controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      
                        controller.advertsmentbanarLists.length,
                        (index) => AnimatedContainer(margin: const EdgeInsets.only(right: 8),
                              duration: const Duration(milliseconds: 100),
                              width: controller.currentpage==index ? 20 :20 ,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: controller.currentpage==index?AppColors.colorsbutton:Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                            ))
                  ],
                ));
  }
}