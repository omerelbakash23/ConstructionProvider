// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/adresscustomdown.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/branchcarer.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/customdown.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/maincarere.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakeYouadverdsment extends StatefulWidget {
  const MakeYouadverdsment({super.key});

  @override
  State<MakeYouadverdsment> createState() => _MakeYouadverdsmentState();
}
bool val =true;
List kinds =["month".tr,"year".tr];
String currentKindx =kinds[0];
bool waytopay11 =true;
bool waytopay22 =false;

class _MakeYouadverdsmentState extends State<MakeYouadverdsment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("          "),
                Text(
                  "Create an advertsment".tr,
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
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Text("Business gallery".tr,style: Theme.of(context)
                                                              .textTheme
                                                              .displayLarge!
                                                              .copyWith(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black)),



            ],),
          ),
 

        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Container(color: Colors.white,width: double.infinity,height: MediaQuery.of(context).size.height*.2,child:ListView.builder(scrollDirection: Axis.horizontal,itemCount: 3,itemBuilder:(context, index) =>   
          Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01),
            child: InkWell(onTap: () {},
                child: Stack(alignment: Alignment.center,
                                          children: [
                                             Column(mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Image.asset(AppImageAssets.uploadimage),
                                                  Text("Uplode_Image".tr,style: const TextStyle(fontSize: 10),)
                                               ],
                                             ),
                                            Image.asset(
                                            AppImageAssets.boxxes,
                                            fit: BoxFit.cover,
                                              ),
                                          ],
                                        ),
              ),
          ),)),
        ),
         Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,bottom: 10),
            child: Row(children: [
              Text("Main_section".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),

          const CutomCarer(),




           Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,bottom: 10,top: 10),
            child: Row(children: [
              Text("Subsection".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),

          const Branchcarer(),

           Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,bottom: 10,top: 10),
            child: Row(children: [
              Text("service".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),

             const Customdown1(),
          Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,bottom: 10,top: 10),
            child: Row(children: [
              Text("address".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),

           const Adresscustomdown(),

          Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,bottom: 10),
            child: Row(children: [
              Text("the description".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
         
                                       Padding(
                                         padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
                                         child: TextFormField(maxLines: 4,
                                         textDirection: TextDirection.ltr,
                                         decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                             hintText: "write here".tr,
                                                                             focusColor: AppColors.grey,
                                                                             fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                                                             hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                                       
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
            padding: const EdgeInsets.only(right: 22,left: 22,bottom: 10),
            child: Row(children: [
              Text("the price".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
         
                                       Padding(
                                         padding: const EdgeInsets.only(left: 20,right: 20),
                                         child: TextFormField(
                                         textDirection: TextDirection.ltr,
                                         decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                             hintText: "write here".tr,
                                                                             focusColor: AppColors.grey,
                                                                             fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                                                             hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                                       
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
            padding: const EdgeInsets.only(right: 22,left: 22,top:20),
            child: Row(children: [
              Text("Security".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
         
                                       Padding(
                                         padding: const EdgeInsets.only(right: 20,left: 20),
                                         child: Row(
                                           children: [
                                             SizedBox(width: MediaQuery.of(context).size.width*.5,
                                               child: TextFormField(
                                               textDirection: TextDirection.ltr,
                                               decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                                   hintText: "write here".tr,
                                                                                   focusColor: AppColors.grey,
                                                                                   fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                                                                   hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                                                                                        
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
                                             ),SizedBox(width: MediaQuery.of(context).size.width*.13,),
                                       
                                       
                                       
                                       
                                                          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                                         Column(
                                                           children: [
                                                             
                                                                Radio(activeColor: AppColors.colorsbutton,value: kinds[0],groupValue: currentKindx,onChanged: (value) {
                                                                 setState(() {
                                                                   currentKindx=value.toString();
                                                                 });
                                                               },),
                                                               Text(kinds[0],style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                       fontSize: 15,
                                                                       color: Colors.black,
                                                                       fontWeight: FontWeight.normal),),
                                                           ],
                                                         ),
                                                           
                                                         
                                                         Column(
                                                           children: [
                                                            
                                                                Radio(activeColor: AppColors.colorsbutton,value: kinds[1],groupValue: currentKindx,onChanged: (value) {
                                                                 setState(() {
                                                                   currentKindx=value.toString();
                                                                 });
                                                               },),
                                                                Text(kinds[1],style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                       fontSize: 15,
                                                                       color: Colors.black,
                                                                       fontWeight: FontWeight.normal),),
                                                           ],
                                                         ),
                                       
                                                       ],)
                                       
                                       
                                       
                                       
                                       
                                           ],
                                         ),
                                       ),
            Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,top:20),
            child: Row(children: [
              Text("Installment".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
         
                                       Padding(
                                         padding: const EdgeInsets.only(right: 20,left: 20),
                                         child: Row(
                                           children: [
                                             SizedBox(width: MediaQuery.of(context).size.width*.5,
                                               child: TextFormField(
                                               textDirection: TextDirection.ltr,
                                               decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                                   hintText: "write here".tr,
                                                                                   focusColor: AppColors.grey,
                                                                                   fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                                                                   hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                                                                                        
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
                                             ),SizedBox(width: MediaQuery.of(context).size.width*.13,),
                                       
                                       
                                       
                                       
                                                          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                                         Column(
                                                           children: [
                                                             
                                                                Radio(activeColor: AppColors.colorsbutton,value: kinds[0],groupValue: currentKindx,onChanged: (value) {
                                                                 setState(() {
                                                                   currentKindx=value.toString();
                                                                 });
                                                               },),
                                                               Text(kinds[0],style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                       fontSize: 15,
                                                                       color: Colors.black,
                                                                       fontWeight: FontWeight.normal),),
                                                           ],
                                                         ),
                                                           
                                                         
                                                         Column(
                                                           children: [
                                                            
                                                                Radio(activeColor: AppColors.colorsbutton,value: kinds[1],groupValue: currentKindx,onChanged: (value) {
                                                                 setState(() {
                                                                   currentKindx=value.toString();
                                                                 });
                                                               },),
                                                                Text(kinds[1],style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                       fontSize: 15,
                                                                       color: Colors.black,
                                                                       fontWeight: FontWeight.normal),),
                                                           ],
                                                         ),
                                       
                                                       ],)
                                       
                                       
                                       
                                       
                                       
                                           ],
                                         ),
                                       ),


                                          Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,top:20),
            child: Row(children: [
              Text("payment methods".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
               



                   Padding(
                     padding: const EdgeInsets.only(right: 10,left: 10),
                     child: Row(
                                                             children: [
                                                              
                                                                  Checkbox(hoverColor: Colors.black,activeColor: AppColors.colorsbutton,value:waytopay11 ,onChanged: (value) {
                                                                   setState(() {
                                                                     value=waytopay11;
                                                                     waytopay11=!waytopay11;
                                                                   });
                                                                 },), 
                                                                  Text("cash".tr,style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                         fontSize: 15,
                                                                         color: Colors.black,
                                                                         fontWeight: FontWeight.normal),),
                                                             ],
                                                           ),
                   ),

                      Padding(
                        padding: const EdgeInsets.only(right: 10,left: 10),
                        child: Row(
                                                             children: [
                                                              
                                                                  Checkbox(hoverColor: Colors.black,activeColor: AppColors.colorsbutton,value:waytopay22 ,onChanged: (value) {
                                                                   setState(() {
                                                                     value=waytopay22;
                                                                     waytopay22=!waytopay22;
                                                                   });
                                                                 },),
                                                                  Text("Bank transfer".tr,style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                         fontSize: 15,
                                                                         color: Colors.black,
                                                                         fontWeight: FontWeight.normal),),
                                                             ],
                                                           ),
                      ),



                                             Padding(
            padding: const EdgeInsets.only(right: 22,left: 22,top:20),
            child: Row(children: [
              Text("Time to respond to inquiries".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),const SizedBox(height: 20,),



          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: TextFormField(
                                                 textDirection: TextDirection.ltr,
                                                 decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                                     hintText: "write here".tr,
                                                                                     focusColor: AppColors.grey,
                                                                                     fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                                                                     hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                                                                                          
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
            padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.09, left:  MediaQuery.of(context).size.width*.09, bottom: 20,top: MediaQuery.of(context).size.height*.04),
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: AppColors.colorsbutton),
                      onPressed: () { Get.back();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(
                              right:
                                  MediaQuery.of(context).size.width * .1,
                              left: MediaQuery.of(context).size.width * .1,
                              top: 10,
                              bottom: 10),
                          child: Text(
                            "Create an advertsment".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16, color: Colors.black),
                          ))),
                 
                ],
              ),
          )




           
      
      ]),
    ));
  }
}
