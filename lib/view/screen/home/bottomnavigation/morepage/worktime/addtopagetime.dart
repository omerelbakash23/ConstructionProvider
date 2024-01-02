// ignore_for_file: sort_child_properties_last

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/worktime/editworktime.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddpageTime extends StatefulWidget {
   const AddpageTime({super.key});
  @override
  State<AddpageTime> createState() => _AddpageTimeState();
}
bool val =true;
List weekday=[
  "Saturday".tr,
  "Sunday".tr,
  "Monday".tr,
  "Tuesday".tr,
  "Wednesday".tr,
  "Thursday".tr,
  "Friday".tr,


];

class _AddpageTimeState extends State<AddpageTime> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
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
            ),const SizedBox(height: 20,),
      
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Column(children: [
                Text("My condition".tr,style: Theme.of(context)
                                                                .textTheme
                                                                .displayLarge!
                                                                .copyWith(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.black)),
  Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   val? Text("available now".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(fontWeight: FontWeight.normal,fontSize: 14, color:val ? const Color(0xff46C83B): Colors.grey)):              
                     Text("Not available now".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(fontWeight: FontWeight.normal,fontSize: 14, color:val ? const Color(0xff46C83B): Colors.grey)),
                 ],
               )              ],),
      
      
      
      AnimatedToggleSwitch<bool>.dual(
                current: val,
                first: false,
                second: true,
                spacing: 1.0,
                style:  ToggleStyle(backgroundColor: val ? const Color(0xff46C83B):Colors.grey,
                  borderColor: val ?const Color(0xff46C83B):Colors.grey
                  
                ),
                borderWidth: 4.0,
                height: 30,
                onChanged: (b) => setState(() => val = b),
                styleBuilder: (b) =>
                    ToggleStyle(indicatorColor: b ? Colors.white : Colors.white),
              
              ),
            ],),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
              child: Row(children: [
                Text("Worktime".tr, style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: Colors.black,fontWeight: FontWeight.bold))
              ],),
            ),const SizedBox(height: 10,),
           
      
             SizedBox(width: double.infinity,height: MediaQuery.of(context).size.height*.5,
               child: ListView.builder(itemCount: 7,itemBuilder:(context, index) =>  
               Padding(
                 padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                 child: Container(width: double.infinity,height: MediaQuery.of(context).size.height*.07,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color(0xffF6F6F6)),child: 
                 Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: Container(width: 40,height: 40,child: Image.asset(AppImageAssets.clock),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffF9F3BE)),),
                ),
                 Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text(weekday[index]),
                   const Text("متاح من 10:00صباحا حتي 10:00 مساءا"),


                ],)
                
                
                
                ],),),
               ))
             ),
      
      
       Padding(
            padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.09, left:  MediaQuery.of(context).size.width*.09, bottom: 20,top: MediaQuery.of(context).size.height*.04),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.colorsbutton,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  Get.to(()=>const Editworktime());
                     },
                child: Padding(
                  padding: const EdgeInsets.all(8.0), 
                  child: Text(
                    "Adjust your working hours".tr,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, color: Colors.black),
                  ),
                )),
          )

             
        
        ]),
      ),
    ));
  }
}
