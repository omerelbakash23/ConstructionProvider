// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/publicSetting/languageSetting/langDialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: ListView(children: [
       Padding(
                padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                     
const Text("          "),
                     Text("اللغه",style: Theme.of(context)
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
              ),const SizedBox(height: 50,),
  
                 
                 Padding(
                   padding: const EdgeInsets.all(30.0),
                   child: ElevatedButton(style:ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:AppColors.colorsbutton),onPressed: (){
                    Get.defaultDialog(title: "",content:LangDialog() ); }, child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Choose_lang".tr,style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    )),
                 )

             
             

    ],),);
  }
}

