// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/worktime/addtopagetime.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/worktime/givetime.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Worktimeinside extends StatefulWidget {
   const Worktimeinside({super.key});
  @override
  State<Worktimeinside> createState() => _WorktimeinsideState();
}
List weekday=[
  "Saturday".tr,
  "Sunday".tr,
  "Monday".tr,
  "Tuesday".tr,
  "Wednesday".tr,
  "Thursday".tr,
  "Friday".tr,


];

class _WorktimeinsideState extends State<Worktimeinside> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: ListView(
          children: [
            Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("          "),
                Text(
                  "Worktime".tr,
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
            
             SizedBox(height:MediaQuery.of(context).size.height*.04,),
      SizedBox(height: MediaQuery.of(context).size.height*.65,
        child: ListView.builder(itemCount: weekday.length,itemBuilder:(context, index) => 
        const Givetime()
       ),
      ),

            const SizedBox(height: 40,),




               Padding(
                                padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.03,left: MediaQuery.of(context).size.width*.03,top: MediaQuery.of(context).size.height*.02,bottom: MediaQuery.of(context).size.height*.02),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                                   Get.to(()=>const AddpageTime());
                                  }, child:  Padding(
                                    padding: const EdgeInsets.only(right: 50,left: 50,top: 10,bottom: 10),
                                    child: Text("addition".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )), SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.black),backgroundColor:Colors.white),onPressed: (){
                                    Get.back();
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.1,left: MediaQuery.of(context).size.width*.1,top: 10,bottom: 10),
                                    child:  Text("Back".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              ),

            
            
            
      
      
      
      
             
        
        ]),
      ),
    ));
  }
}
