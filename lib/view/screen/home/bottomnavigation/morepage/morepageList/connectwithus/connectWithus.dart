// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/connectwithus/connectcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ConnectWithUS extends StatelessWidget {
   ConnectWithUS({super.key});
ConnectwithusControllerimp controller =Get.put(ConnectwithusControllerimp());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:Scaffold(body: ListView(children: [
                      Padding(
                  padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       
const Text("          "),
                       Text("Connect with us".tr,style: Theme.of(context)
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
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                AppImageAssets.back,
                                color: Colors.black,
                              ),
                            )),
                      
                      
                    ],
                  ),
                ),const SizedBox(height:10),
                Image.asset(AppImageAssets.Logoouthimage),

        // ignore: prefer_const_constructors
        Padding(
          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.02,right:  MediaQuery.of(context).size.width*.02),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children:  [
          
                Padding(
                       padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.02,left:  MediaQuery.of(context).size.width*.02,bottom: 10),
                       child: Text("name_creat".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                     ),
                      
               TextFormField(validator: (val) {
                            return validInput(val!, 5, 100, "email");
                            }, 
          textDirection: TextDirection.ltr,keyboardType:TextInputType.text,
          controller: controller.phonenumber,
          decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color:  AppColors.grey)),
              hintText:  "Write your name here".tr,
              focusColor: AppColors.grey,
              fillColor:   const Color.fromARGB(175, 235, 227, 227),
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
              ),
          const SizedBox(height: 20,),
                     
        
        
                Padding(
                       padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.02,left:  MediaQuery.of(context).size.width*.02,bottom: 10),
                       child: Text("phone_num_creat".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                     ),
                     
        
        
                      TextFormField(validator: (val) {
                            return validInput(val!, 5, 100, "email");
                            },
          textDirection: TextDirection.ltr,keyboardType:const TextInputType.numberWithOptions(decimal:true ),
          controller: controller.phonenumber,
          decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color:  AppColors.grey)),
              hintText:  "Write your number here".tr,
              focusColor: AppColors.grey,
              fillColor:  const Color.fromARGB(175, 235, 227, 227),
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
              ),
                      const SizedBox(height: 20,),
        
        
        
                        Padding(
                       padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.02,left:  MediaQuery.of(context).size.width*.02,bottom: 10),
                       child: Text("message".tr,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                     ),
        
        
        
          TextFormField(maxLines: 5,validator:(val) {
                            return validInput(val!, 5, 100, "");
                            },
          textDirection: TextDirection.ltr,keyboardType:TextInputType.text,
          controller: controller.phonenumber,
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
              ),

              SizedBox(height: MediaQuery.of(context).size.height*.03,),
                   

            Padding(
              padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.05,left:  MediaQuery.of(context).size.width*.05),
              child: Center(child: ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),child: Padding(
                padding:  EdgeInsets.only(right:MediaQuery.of(context).size.width*.19 ,left:MediaQuery.of(context).size.width*.19  ),
                // ignore: prefer_const_constructors
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text("send".tr,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ), onPressed: (){
              }, )),
            ),

           
          ],),
        )
      
    ],),));
  }
}