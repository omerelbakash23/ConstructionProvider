// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/customdown.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/occupationsgoto.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/editcontroller.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/varyfieCode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Editprofilepage extends StatefulWidget {
  const Editprofilepage({super.key});

  @override
  State<Editprofilepage> createState() => _EditprofilepageState();
}
Editprofilepagecontrollerimp controller =Get.put(Editprofilepagecontrollerimp());
class _EditprofilepageState extends State<Editprofilepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,body: 
      ListView(children: [
         Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20,),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       
    const Text("          "),
                       Text("تعديل الملف الشخصي",style: Theme.of(context)
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
    
    
    
    
    
     InkWell(onTap: (){},
       child: Container(height: 100,width: 100,decoration: const BoxDecoration(image:DecorationImage(image: AssetImage(AppImageAssets.avatar),fit: BoxFit.contain)),
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Image.asset(AppImageAssets.centeredit),
       
         ],
       ),
       ),
     ),
    
    
      Padding(
      padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.1,left:  MediaQuery.of(context).size.width*.1,top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,textDirection: TextDirection.rtl,children: [
            Text("الأسم",style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 18, color: Colors.black),
          ),
          ],),
    
           SizedBox(width:MediaQuery.of(context).size.width*.36,),
      
      
      Row(mainAxisAlignment: MainAxisAlignment.start,textDirection: TextDirection.rtl,children: [
      Text("رقم الهاتف",style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 18, color: Colors.black),
          ),
      ],),
        ],
      ),
      ),
    const SizedBox(height: 10,),
    
    Padding(
      padding:  EdgeInsets.only(top: 20,right: MediaQuery.of(context).size.width*.05,left: MediaQuery.of(context).size.width*.1,),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl,
        children: [
          Container(width:MediaQuery.of(context).size.width*.32 ,
            child: TextFormField(validator: (val) {
                                   return validInput(val!, 5, 100, "username");
                                     }, 
                 textDirection: TextDirection.rtl,keyboardType:TextInputType.text,
                 controller: controller.firstname,
                 decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                     hintText: 'يوسف',
                     focusColor: AppColors.grey,
                     fillColor:   const Color.fromARGB(175, 235, 227, 227),
                     hintStyle: const TextStyle(fontSize: 12, color:Color.fromARGB(255, 135, 122, 122)),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: AppColors.grey)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color:  AppColors.grey)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                        borderRadius: BorderRadius.circular(20))),
                    ),
          ),
    const SizedBox(width: 60,),
    
                     Container(width:MediaQuery.of(context).size.width*.32 ,
                       child: TextFormField(validator: (val) {
                                              return validInput(val!, 5, 100, "username");
                                                }, 
                            textDirection: TextDirection.rtl,keyboardType:TextInputType.text,
                            controller: controller.secondname,
                            decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                hintText: '012123123123',
                                focusColor: AppColors.grey,
                                fillColor:   const Color.fromARGB(175, 235, 227, 227),
                                hintStyle: const TextStyle(fontSize: 12, color:Color.fromARGB(255, 135, 122, 122)),
                                     enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15),
                                   borderSide: const BorderSide(color: AppColors.grey)),
                               disabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15),
                                   borderSide: const BorderSide(color:  AppColors.grey)),
                               contentPadding:
                                   const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                               border: OutlineInputBorder(
                                   borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                                   borderRadius: BorderRadius.circular(15))),
                               ),
                     ),
        ],
      ),
    ),
    
      
      Padding(
        padding:  EdgeInsets.only(top: 20,right: MediaQuery.of(context).size.width*.1,left: MediaQuery.of(context).size.width*.1,),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,children: [
          Text("البريد الإلكتروني",style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 18, color: Colors.black),),
          const Text(""),
        ],),
      ),
    
       

       Padding(
         padding:  EdgeInsets.only(top: 20,right: MediaQuery.of(context).size.width*.1,left: MediaQuery.of(context).size.width*.1,),
         child: TextFormField(validator: (val) {
                                              return validInput(val!, 5, 100, "email");
                                                }, 
                            textDirection: TextDirection.rtl,keyboardType:TextInputType.text,
                            controller: controller.email,
                            decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                hintText: 'yousefebrahim @ example .com',
                                focusColor: AppColors.grey,
                                fillColor:   const Color.fromARGB(175, 235, 227, 227),
                                hintStyle: const TextStyle(fontSize: 12, color:Color.fromARGB(255, 135, 122, 122)),
                                     enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15),
                                   borderSide: const BorderSide(color: AppColors.grey)),
                               disabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(15),
                                   borderSide: const BorderSide(color:  AppColors.grey)),
                               contentPadding:
                                   const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                               border: OutlineInputBorder(
                                   borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                                   borderRadius: BorderRadius.circular(15))),
                               ),
       ),
    





 Padding(
        padding:  EdgeInsets.only(top: 20,right: MediaQuery.of(context).size.width*.1,left: MediaQuery.of(context).size.width*.1,),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,children: [
          Text("النوع",style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(fontSize: 18, color: Colors.black),),
          const Text(""),
        ],),
      ),
    
       
    const Customdown1(),const SizedBox(height: 20,),
    const Customdown2(),
      

  const SizedBox(height: 40,),
   Padding(
     padding: const EdgeInsets.only(right: 20,left: 20,bottom: 20),
     child: ElevatedButton(style:ElevatedButton.styleFrom(side: const BorderSide(color: AppColors.colorsbutton,width: 1.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:AppColors.colorsbutton),
                                         onPressed: (){Get.to(()=>const VeryFiyCodeChangepass());},
                                          child: Padding(
                                           padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.09,left: MediaQuery.of(context).size.width*.09,top: 10,bottom: 10),
                                           child: Text("تغيير كلمة المرور",style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              fontSize: 16,
                                                              color: Colors.black)),),
                                         ),
   )


  

      
    
    
      ],),),
    );
  }
}