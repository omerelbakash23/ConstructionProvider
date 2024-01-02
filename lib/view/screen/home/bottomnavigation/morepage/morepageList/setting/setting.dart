// ignore_for_file: file_names, must_be_immutable

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/customdownWidget.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/customwidgetHelp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
   const SettingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:Scaffold(backgroundColor: const Color.fromARGB(255, 255, 255, 255),body: ListView(children: [
                      Padding(
                  padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       
const Text("          "),
                       Text("More".tr,style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 18, color: Colors.black),),

                      InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                AppImageAssets.back,
                                color: Colors.black,
                              ),
                            )),
                      
                      
                    ],
                  ),
                ),
    

                       const CustomDownWidgetpublicsetting(),
                       const Customwidgethelp()



      
      
    ],),));
  }
}