// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/help/shareapp/shareappDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShareApp extends StatelessWidget {
  const ShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: [
       Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                     
const Text("          "),
                     Text("تواصل معنا",style: Theme.of(context)
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
                                                    Padding(
                   padding: const EdgeInsets.all(30.0),
                   child: ElevatedButton(style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:AppColors.colorsbutton),onPressed: (){
                  Get.defaultDialog(title: "",content: Shareappdilog() ); }, child:  const Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    child: Text("مشاركة التطبيق",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                  ))

    ),]),);
  }
}