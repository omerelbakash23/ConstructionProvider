// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogContinueOrder extends StatelessWidget {
   const DialogContinueOrder({super.key});
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(width: MediaQuery.of(context).size.width*.9,height: MediaQuery.of(context).size.width*.6,
        child: ListView(children: [
                                Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                    Text("Cancelling order".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 22, color: Colors.black))
                                  ],),
                                ),const SizedBox(height: 50,),
                           
                       Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("title".tr,textAlign: TextAlign.center,),
                        ],
                      ),
      
                        const SizedBox(height: 30,),

                       Padding(
                         padding: const EdgeInsets.only(right: 5,left: 5,top: 5),
                         child: Row(mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl,children: [ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor: AppColors.colorsbutton),onPressed: (){Get.back();}, child: Padding(
                           padding: const EdgeInsets.only(right: 90,left: 90,top: 5,bottom: 5),
                           child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Back".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge!
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color: Colors.black)),],),
                         ))
                         ],),
                       )
      
      
      
      
                              ],),
      ),
    );
  }
}