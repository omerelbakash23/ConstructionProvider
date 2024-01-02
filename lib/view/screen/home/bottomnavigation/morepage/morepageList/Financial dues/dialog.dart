// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/Financial%20dues/dialog2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogFinancail extends StatefulWidget {
  const DialogFinancail({super.key});

  @override
  State<DialogFinancail> createState() => _DialogFinancailState();
}

class _DialogFinancailState extends State<DialogFinancail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(width: MediaQuery.of(context).size.width*.9,height: MediaQuery.of(context).size.height*.55,
        child: ListView(children: [
                                Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  Text("Commission payment".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 20, color: Colors.black))
                                  ],),
                                ),const SizedBox(height: 30,),
                                 

                            Center(child: Text("Title dues".tr,textAlign: TextAlign.center,style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 12, color: Colors.black,fontWeight: FontWeight.normal)),),


                            Padding(
                              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.03,left: MediaQuery.of(context).size.width*.02,right: MediaQuery.of(context).size.width*.02),
                              child: Container(width: double.infinity,height: MediaQuery.of(context).size.height*.1,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xffF9F3BE)),
                              child: ListView(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                                    Text("Bank_name".tr,style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 10,
                                                              color: Colors.black))
                                    , Text("Saudi Bank".tr,style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 10,
                                                              color: Colors.black)),
                                  ],),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10,top: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                                    Text("account_number".tr,style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 10,
                                                              color: Colors.black)),const SizedBox(width: 5),
                                      Image.asset(AppImageAssets.v),const SizedBox(width: 5),
                                     Text("1254 2523 8789 5421",style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 10,
                                                              color: Colors.black)),
                                  ],),
                                )
                              ]),
                              
                              
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(right:20 ,left:20 ,top:10 ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                Text("Attach the transfer receipt".tr,style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 14,
                                                              color: Colors.black,fontWeight: FontWeight.normal)),
                                const Text("")
                              ],),
                            )

                            ,
                             InkWell(onTap: () {
                               
                             },
                               child: Padding(
                                 padding: const EdgeInsets.only(right: 20,left: 20,top: 10),
                                 child: Stack(alignment: Alignment.center,
                                        children: [
                                           Column(
                                             children: [
                                               Image.asset(AppImageAssets.uploadimage,scale: 1.4,),
                                                Text("Uplode_Image".tr,style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 10,
                                                              color: Colors.black,fontWeight: FontWeight.normal))
                                             ],
                                           ),
                                          Image.asset(
                                          AppImageAssets.borders,
                                          fit: BoxFit.cover,
                                            ),
                                          
                                      
                                         
                               
                                        ],
                                      ),
                               ),
                             ),
                              Padding(
                                padding:  EdgeInsets.only(right: 20,left: 20,top: MediaQuery.of(context).size.height*.04,bottom:MediaQuery.of(context).size.height*.04 ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                                    Get.back();
                                    Get.defaultDialog(title: "",content: const Dialogfinancial2());
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.05,top: 10,bottom: 10),
                                    child:  Text("sure".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )), SizedBox(width: MediaQuery.of(context).size.width*.05,),
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.black),backgroundColor:Colors.white),onPressed: (){
                                    Get.back();
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.05,top: 10,bottom: 10),
                                    child:  Text("Back".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              )








                                                  
      
      
                              ],),
      ),
    );
  }
}



