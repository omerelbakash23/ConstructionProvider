// ignore_for_file: file_names, deprecated_member_use, unused_import

import 'package:constructionprovider1/view/screen/onbording/onbordingcontroller.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screen/onbording/onbordingmodel.dart';

class SlidersOnbording extends GetView<OnbordingControllerImp> {
  const SlidersOnbording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(controller:controller.pageController,onPageChanged: (value) => controller.onpagechange(value),
                      itemCount: onbordingList.length,
                      itemBuilder: (context, index) => SingleChildScrollView(
                        child: Column(children: [
                               SizedBox(
                                height: MediaQuery.of(context).size.height*.10,
                              ),
                              Image.asset(
                                onbordingList[index].image!,
                                fit: BoxFit.fill,
                                height: Get.width/1.7,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 10,right: 10),
                                 child: Text(
                                  onbordingList[index].title!,
                                  style:const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    wordSpacing: 4,color:AppColors.black),
                                                             ),
                               ), const SizedBox(
                                height: 50,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 10,left: 10),
                                child: Text(
                                  onbordingList[index].body!,
                                  textAlign: TextAlign.center,
                                  style:const TextStyle(
                                  color: AppColors.black,
                                  height: 1.9,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  wordSpacing: 4,
                                ), ),
                              )
                              ,
                              
                            ]),
                      )
                          
                          );
  }
}