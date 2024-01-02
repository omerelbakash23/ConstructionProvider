// ignore_for_file: avoid_unnecessary_containers

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Editworktime extends StatefulWidget {
  const Editworktime({super.key});

  @override
  State<Editworktime> createState() => _EditworktimeState();
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

class _EditworktimeState extends State<Editworktime> {
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
            ),const SizedBox(height: 20,),
      
      
            Container(child: Column(children: [
               Row(children: [
              Text(  "Saturday".tr,  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 16, color: Colors.black),)
            ],),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){
                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
               },
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){
                                  setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });

                },
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),


            Container(child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(children: [
                             Text("Sunday".tr,  style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: Colors.black),)
                           ],),
               ),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),

            Container(child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(children: [
                             Text("Monday".tr,  style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: Colors.black),)
                           ],),
               ),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),
            
            Container(child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(children: [
                             Text("Tuesday".tr, style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: Colors.black),)
                           ],),
               ),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),
            
            Container(child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(children: [
                             Text("Wednesday".tr,  style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: Colors.black),)
                           ],),
               ),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),
            
            Container(child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(children: [
                             Text("Thursday".tr,  style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: Colors.black),)
                           ],),
               ),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),
            
            Container(child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(children: [
                             Text("Friday".tr,  style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 16, color: Colors.black),)
                           ],),
               ),
        

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
               InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح من ",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
                InkWell(onTap: (){                setState(() {
               showTimePicker(context: context, initialTime: TimeOfDay.now()) ;
                });
},
                 child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(children: [
                    Stack(alignment: Alignment.center,children: [
                      Image.asset(AppImageAssets.watch1),
                       Image.asset(AppImageAssets.watch2),
                    ],),
                    SizedBox(width:  MediaQuery.of(context).size.width*.02,),
                    Text("متاح الي",  style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)),
                     SizedBox(width: MediaQuery.of(context).size.width*.06,),
                     const Icon(Icons.keyboard_arrow_down)
                 
                   ],),
                 ),),
               )
              ],),
            )
      
            ],),),







               Padding(
                                padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02,bottom: MediaQuery.of(context).size.height*.02,top: MediaQuery.of(context).size.height*.04),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                                   
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.height*.05,left: MediaQuery.of(context).size.height*.05,top: 10,bottom: 10),
                                    child:  Text("Save".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )), SizedBox(width: MediaQuery.of(context).size.width*.02,),
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.black),backgroundColor:Colors.white),onPressed: (){
                                    Get.back();
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.height*.05,left: MediaQuery.of(context).size.height*.05,top: 10,bottom: 10),
                                    child:  Text("Back".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              ),

            
            
            
      
      
      
      
             
        
        ]),
      ),
    ));
  }
}
