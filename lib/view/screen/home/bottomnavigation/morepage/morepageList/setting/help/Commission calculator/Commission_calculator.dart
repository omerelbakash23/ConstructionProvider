// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/editcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUPasProvider extends StatefulWidget {
  const SignUPasProvider({super.key});

  @override
  State<SignUPasProvider> createState() => _SignUPasProviderState();
}
Editprofilepagecontrollerimp controller =Get.put(Editprofilepagecontrollerimp());
class _SignUPasProviderState extends State<SignUPasProvider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,body: ListView(children: [
         Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20,),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       
    const Text("          "),
                       Text("Commission_calculator".tr,style: Theme.of(context)
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
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                AppImageAssets.back,
                                color: Colors.black,
                              ),
                            )),
    
                    ],
                  ),
                ),
                const SizedBox(height: 20,),


                  Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Container(width: double.infinity,height: MediaQuery.of(context).size.height*.05,decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),color: Color(0xffF9F3BE)),
            child:
             Center(
               child:  Text("العمولة المستحقة هي 10% من المبلغ المدفوع",style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 12, color: Colors.black)
             ,textAlign: TextAlign.center),
             ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Row(
              children: [
                Text("قم بإدخال المبلغ المدفوع",style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(fontSize: 14, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
            child: TextFormField(maxLines: 1,validator:(val) {
                              return validInput(val!, 5, 100, "");
                              },
            textDirection: TextDirection.ltr,keyboardType:TextInputType.text,
            decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color:  AppColors.grey)),
                hintText: "300 ريال",
                focusColor: AppColors.grey,
                fillColor:  const Color(0xffF6F6F6),
                hintStyle: const TextStyle(fontSize: 12, color:Color(0xffB2B2B2)),
                
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
                ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Row(
              children: [
                Text("قيمة العمولة",style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(fontSize: 14, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Container(height:MediaQuery.of(context).size.height*.13 ,width:MediaQuery.of(context).size.width*.2 ,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color:AppColors.colorsbutton),color: const Color(0xffF6F6F6)),child: const Center(child:Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("300 "),
                Text("ريال")
              ],
            )),),
          )


    
    
    
    
    
    
       ]),
     ),
    
    





    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
    );
  }
}