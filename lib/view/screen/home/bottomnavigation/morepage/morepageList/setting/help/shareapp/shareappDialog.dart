
// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Shareappdilog extends StatelessWidget {
    Shareappdilog({super.key});
       String Appurl ="https://lkdjdcld,cldcdlmdk.com";

  @override
  
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(width:300,height: 250 ,
        child: ListView(children: [
           Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                      const Text(""),
                                      Text("مشاركة التطبيق",style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(fontSize: 20, color: Colors.black)),
                                   Container(height: 40,width: 40,decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10),color:Colors.white),child:
                                   InkWell(onTap: () {
                                     Get.back();
                                   },child: const Icon(Icons.close)),)

                                    ],),
                                Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   const SizedBox(height: 50,),


                                    Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl,children: [
                                      Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffF9F3BE)),child: Image.asset(AppImageAssets.watts),),const SizedBox(width: 25,),
                                      Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffF9F3BE)),child: Image.asset(AppImageAssets.face),),const SizedBox(width: 25,),
                                      Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffF9F3BE)),child: Image.asset(AppImageAssets.twiter),),const SizedBox(width: 25,),


                                    ],),const SizedBox(height: 20,),



                                    const Text("إنسخ الرابط من هنا"),const SizedBox(height: 15,),

                                    Container(width: 300,height: 50,decoration: BoxDecoration(color: const Color(0xffF6F6F6),borderRadius: BorderRadius.circular(20)),child:  
                                    Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [const Text(""), Text(Appurl),Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(width: 30,height: 30,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child:
                                      InkWell(onTap: (){
                                        final data =ClipboardData(text:Appurl );
                                        Clipboard.getData("$data");
                                      },child: Image.asset(AppImageAssets.copy))),
                                    )],),)
                                  ],
                                )
      
                       
      


             
             

      
      
      
                              ],),
      ),
    );
  }
}