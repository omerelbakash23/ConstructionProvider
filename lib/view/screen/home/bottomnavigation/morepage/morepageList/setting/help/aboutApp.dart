// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: ListView(children: [
       Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                     
const Text("          "),
                     Text("عن التطبيق",style: Theme.of(context)
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
               const Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" \n هذا النص مثال علي الكلام المكتوب في هذه المنطقة ولا \n يمثل اي محتوي حقيقي, هذا النص مثال علي الكلام المكتوب  \n  في هذا المنطقة ولا يمثل اي محتوي حقيقي, هذا النص مثال\n علي الكلام المكتوب في هذه المنطقة ولا يمثل اي محتوي \n حقيقي"),
                  SizedBox(height: 10,),
                  Text(" \n هذا النص مثال علي الكلام المكتوب في هذه المنطقة ولا \n يمثل اي محتوي حقيقي, هذا النص مثال علي الكلام المكتوب  \n  في هذا المنطقة ولا يمثل اي محتوي حقيقي, هذا النص مثال\n علي الكلام المكتوب في هذه المنطقة ولا يمثل اي محتوي \n حقيقي"),
                  SizedBox(height: 10,),
                  Text(" \n هذا النص مثال علي الكلام المكتوب في هذه المنطقة ولا \n يمثل اي محتوي حقيقي, هذا النص مثال علي الكلام المكتوب  \n  في هذا المنطقة ولا يمثل اي محتوي حقيقي, هذا النص مثال\n علي الكلام المكتوب في هذه المنطقة ولا يمثل اي محتوي \n حقيقي"),





                ],
              )
    ],),);
  }
}