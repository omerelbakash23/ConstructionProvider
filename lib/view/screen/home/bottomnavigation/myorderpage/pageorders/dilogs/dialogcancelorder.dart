// ignore_for_file: deprecated_member_use, must_be_immutable, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogCancledOrder extends StatelessWidget {
   const DialogCancledOrder({super.key});
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(width: MediaQuery.of(context).size.width*.9,height: MediaQuery.of(context).size.height*.35,
        child: ListView(children: [
                                Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                    Text("إلغاء الطلب",style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 22, color: Colors.black))
                                  ],),
                                ),const SizedBox(height: 20,),
                           
                         Row(
                          children: [
                            Text("اكتب سبب الإلغاء من فضلك",style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: Colors.black)),
                          ],
                        ),
                        const SizedBox(height: 20,),

                           TextFormField(maxLines: 3,
          textDirection: TextDirection.ltr,keyboardType:TextInputType.text,
          
          decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color:  AppColors.grey)),
              hintText: "write here".tr,
              focusColor: AppColors.grey,
              fillColor:  const  Color.fromARGB(175, 235, 227, 227),
              hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
              
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: AppColors.grey)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color:  AppColors.grey)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                  borderRadius: BorderRadius.circular(30))),
              ),const SizedBox(height: 20,),
      

                       Row(mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl,children: [ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor: AppColors.colorsbutton),onPressed: (){Get.back();}, child: 
                       Row(mainAxisAlignment: MainAxisAlignment.center,children: [Padding(
                         padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.07,left: MediaQuery.of(context).size.width*.07,top: 5,bottom: 5),
                         child: Text("إرسال",style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 16,
                                                          color: Colors.black)),
                       ),],))
                       ,const SizedBox(width:10),
                                     ElevatedButton(style:ElevatedButton.styleFrom(side: const BorderSide(color: Colors.black,width: 1.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:Colors.white),onPressed: (){Get.back();}, child: Padding(
                                       padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.07,left: MediaQuery.of(context).size.width*.07,top: 5,bottom: 5),
                                       child: Text("Back".tr,style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 16,
                                                          color: Colors.black)),),
                                     )
                       ],)
      
      
      
      
                              ],),
      ),
    );
  }
}