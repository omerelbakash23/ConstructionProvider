// ignore_for_file: file_names

import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/adversmentpagecontrollers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pageviewPhoto/PageviewPhoto.dart';

class CustomAnimationContainerGenral extends StatelessWidget {
  
  const CustomAnimationContainerGenral({super.key});
  @override
  Widget build(BuildContext context) {

    return GetBuilder<AdvertsMentPagecontrollerimp>(builder:(controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      
                        appbanarList.length,
                        (index) => AnimatedContainer(margin: const EdgeInsets.only(right: 8),
                              duration: const Duration(milliseconds: 100),
                              width: controller.currentpage==index ? 20 :20 ,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: controller.currentpage==index?Colors.black:Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                            ))
                  ],
                ));
  }
}