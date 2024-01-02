
// ignore_for_file: file_names, must_be_immutable

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/outh/Language/changeLocalization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangDialog extends StatelessWidget {
   LangDialog({super.key});
LocalController controller =Get.put(LocalController());
bool checke =true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(width: 300,height: 250 ,
        child: ListView(children: [
                                Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                   Text("language".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge!
                                                        .copyWith(fontSize: 20, color: Colors.black))
                                  ],),
                                ),const SizedBox(height: 20,),
      
                           Row(textDirection: TextDirection.rtl,children: [
                           GetBuilder<LocalController>(builder: (controller) => 
                           ClipRRect(borderRadius: BorderRadius.circular(20),
                             child: Checkbox(activeColor: AppColors.colorsbutton,checkColor:AppColors.black,side: const BorderSide(color:AppColors.colorsbutton),value:controller.checked1 , onChanged: (newcheck){
                              controller.showcheck1();
                             controller.checked1= newcheck!;

                                                  }),
                           ),
                          ), Text("Arabic".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge!
                                                        .copyWith(fontSize: 18, color: Colors.black)
                          )
                         ],),  
                         
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                       
                           Row(textDirection: TextDirection.rtl,children: [
                           GetBuilder<LocalController>(builder: (controller) => 
                           ClipRRect(borderRadius: BorderRadius.circular(20),
                             child: Checkbox(activeColor: AppColors.colorsbutton,checkColor:AppColors.black,side: const BorderSide(color:AppColors.colorsbutton),value:controller.checked2 , onChanged: (newcheck){
                              controller.showcheck2();
                             controller.checked2= newcheck!;

                                                  }),
                           ),
                          ), Text("english".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge!
                                                        .copyWith(fontSize: 18, color: Colors.black)
                          )
                         ],),
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      const SizedBox(height: 30,),
      
                            Row(
                  mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl,
                  children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor:AppColors.colorsbutton ),onPressed: () {
                   if(controller.checked1)
                   {
                        controller.changeLang("ar");
                        Get.back();

                   }
                   else{
                                            controller.changeLang("en");
                                                Get.back();

                   }
                  }, child:  Padding(
      padding:   EdgeInsets.only(right:MediaQuery.of(context).size.width*.07 ,left:MediaQuery.of(context).size.width*.07  ,top: 10,bottom: 10),
      child: Text("save".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    )),
                     SizedBox(
                      width: MediaQuery.of(context).size.width*.03 ,
                    ),
                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(side: const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(15)),backgroundColor:Colors.white ),onPressed: () {Get.back();}, child:  Padding(
      padding:   EdgeInsets.only(right:MediaQuery.of(context).size.width*.07 ,left:MediaQuery.of(context).size.width*.07 ,top: 10,bottom: 10),
      child: Text("Back".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    )),
                  ],
                )
      
      
      
      
                              ],),
      ),
    );
  }
}