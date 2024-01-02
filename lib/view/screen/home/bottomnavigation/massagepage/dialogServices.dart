// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogServisec extends StatelessWidget {
  const DialogServisec({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height:  MediaQuery.of(context).size.height*.40,width: MediaQuery.of(context).size.width,
        child: ListView(children: [
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
            Padding(
                        padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                        child: Row(
                          textDirection: TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                             
                          
                            
                             Text("Report".tr,style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(fontSize: 18, color: Colors.black),),
                                 const Text("   ")
                          ],
                        ),
                  ),  const SizedBox(height: 20 ,),
        
        
        

                                     Padding(
                                       padding: const EdgeInsets.only(right: 20,left: 20),
                                       child: Row(
                                         children: [
                                           Text("Reason for reporting".tr,style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .copyWith(fontSize: 14, color: Colors.black,fontWeight: FontWeight.normal),),
                                         ],
                                       ),
                                     ),const SizedBox(height: 20,),
                                     
                                     
                                     
                                     TextField(cursorColor: Colors.black,maxLines: 3,
                                     decoration: InputDecoration(hintText: "write here".tr,fillColor: Colors.grey,focusColor: Colors.grey,
                                       border: OutlineInputBorder(borderSide:const BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    contentPadding: const EdgeInsets.all(12),
                                    ),
                              ),
                                              

                  const SizedBox(height: 20,),
                   Padding(
                                padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01,top: MediaQuery.of(context).size.height*.03),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                                                                      Get.back();

                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.07,left: MediaQuery.of(context).size.width*.07,top: 10,bottom: 10),
                                    child:  Text("Report".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )),const SizedBox(width: 15,),
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.black),backgroundColor:Colors.white),onPressed: (){
                                    Get.back();
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.07,left: MediaQuery.of(context).size.width*.07,top: 10,bottom: 10),
                                    child:  Text("Back".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              )

                  
                        ],
                      ),
                    ],),
      ),
    );
  }
}