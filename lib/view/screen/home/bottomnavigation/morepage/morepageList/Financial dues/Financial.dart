// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/Financial%20dues/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Financial extends StatefulWidget {
  const Financial({super.key});

  @override
  State<Financial> createState() => _FinancialState();
}

class _FinancialState extends State<Financial> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("          "),
                Text(
                  "Dues".tr,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 18, color: Colors.black),
                ),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(144, 158, 158, 158)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        AppImageAssets.back,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),const SizedBox(height: 20,),

          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.03,right: MediaQuery.of(context).size.width*.03),
            child: Container(width: double.infinity,height: MediaQuery.of(context).size.height*.1,decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20) ),color: Color(0xffF9F3BE)),
            child:
             Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.022),
                  child: Image.asset(AppImageAssets.what,),
                ),const SizedBox(width: 10,),
                 Text("dues_attion".tr
,textAlign: TextAlign.center,style: const TextStyle(height: 2.1),),
              ],
                       ),),
          )

          ,const SizedBox(height: 10,),


         Padding(
           padding:  EdgeInsets.only(top: 30,left: MediaQuery.of(context).size.width*.04,right: MediaQuery.of(context).size.width*.04),
           child: Center(
             child: Stack(children: [
              Center(child: Image.asset(AppImageAssets.net,scale: 1.6,)),
               Center(
                 child: Padding(
                           padding: EdgeInsets.only(right: 20,left: 20,top: MediaQuery.of(context).size.height*.05),
                           child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                             Text("The amount of commission due".tr,style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 20, color: Colors.black)),
                             Row(mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("400",style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(fontSize: 30, color: Colors.black)),const SizedBox(width: 10,),

                                Text("Rial",style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(fontSize: 25, color: Colors.black)),
                                                  
                               ],
                             )
                           ],)
                         ),
               ),



             ],),
           ),
         ),



          Padding(
           padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.03,left: MediaQuery.of(context).size.width*.03,top: 30),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text("Number of unpaid orders".tr,style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 15, color: Colors.black)),
            Container(height: MediaQuery.of(context).size.height*.042 ,width: MediaQuery.of(context).size.width*.25,decoration: BoxDecoration(color: const Color(0xffFFE8E8),borderRadius: BorderRadius.circular(10)),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("4",style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(fontSize: 15, color: Colors.red)),
                  Text("Requests".tr,style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(fontSize: 15, color: Colors.red)),
                ],
              ),
            )
           ],),
         ),
         Padding(
           padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.03,left: MediaQuery.of(context).size.width*.03,top: 30),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text("Total amount of unpaid orders".tr,style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 15, color: Colors.black)),
            Container(height: MediaQuery.of(context).size.height*.042,width: MediaQuery.of(context).size.width*.25,decoration: BoxDecoration(color: const Color(0xffFFE8E8),borderRadius: BorderRadius.circular(10)),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("4000",style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(fontSize: 15, color: Colors.red)),const SizedBox(width: 5,),
                  Text("Rial".tr,style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(fontSize: 15, color: Colors.red)),
                ],
              ),
            )
           ],),
         ),
SizedBox(height: MediaQuery.of(context).size.height*.2,),

 Padding(
     padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.05,left:  MediaQuery.of(context).size.width*.05),
     child: ElevatedButton(style:ElevatedButton.styleFrom(side: const BorderSide(color: AppColors.colorsbutton,width: 1.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:AppColors.colorsbutton),
                                         onPressed: (){Get.defaultDialog(title: "",content: const DialogFinancail());},
                                          child: Padding(
                                           padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.08,left: MediaQuery.of(context).size.width*.08,top: 10,bottom: 10),
                                           child: Text("Commission payment".tr,style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 16,
                                                              color: Colors.black)),),
                                         ),
   )



         




           
      
      ]),
    ));
  }
}
