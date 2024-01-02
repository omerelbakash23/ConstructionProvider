// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Editadvertsment extends StatefulWidget {
  const Editadvertsment({super.key});

  @override
  State<Editadvertsment> createState() => _EditadvertsmentState();
}
bool val =true;

List kind =["month".tr,"year".tr];
String currentKinds =kind[0];


List kindx =["month".tr,"year".tr];
String currentKindx =kind[0];

bool waytopay1 =true;
bool waytopay2 =false;



class _EditadvertsmentState extends State<Editadvertsment> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                  "Edit the advertsMent".tr,
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
          child: Container(color: Colors.white,width: double.infinity,height: MediaQuery.of(context).size.height*.2,child:ListView(scrollDirection: Axis.horizontal,  
        children: [
                Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02),
            child: InkWell(onTap: () {},
                child: Stack(alignment: Alignment.center,
                                          children: [
                                             Column(mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Image.asset(AppImageAssets.uploadimage),
                                                  Text("Uplode_Image".tr,style: TextStyle(fontSize:8),)
                                               ],
                                             ),
                                            Image.asset(
                                            AppImageAssets.boxxes,
                                            fit: BoxFit.cover,
                                              ),
                                          ],
                                        ),
              ),
          ), 


           Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02),
            child: InkWell(onTap: () {},
                child: Stack(alignment: Alignment.center,
                                          children: [
                                             Column(mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Image.asset(AppImageAssets.uploadimage),
                                                  Text("Uplode_Image".tr,style: TextStyle(fontSize:8),)
                                               ],
                                             ),
                                            Image.asset(
                                            AppImageAssets.boxxes,
                                            fit: BoxFit.cover,
                                              ),
                                          ],
                                        ),
              ),  
          ),



           Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02),
            child: InkWell(onTap: () {},
                child: Stack(alignment: Alignment.center,
                                          children: [
                                             Column(mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Image.asset(AppImageAssets.uploadimage),
                                                  Text("Uplode_Image".tr,style: TextStyle(fontSize:8),)
                                               ],
                                             ),
                                            Image.asset(
                                            AppImageAssets.boxxes,
                                            fit: BoxFit.cover,
                                              ),
                                          ],
                                        ),
              ),
          ),





        ]),
        ),),
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
                                             Container(width: MediaQuery.of(context).size.width*.5,
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
                                                             
                                                                Radio(activeColor: AppColors.colorsbutton,value: kind[0],groupValue: currentKinds,onChanged: (value) {
                                                                 setState(() {
                                                                   currentKinds=value.toString();
                                                                 });
                                                               },),
                                                               Text(kind[0],style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                       fontSize: 15,
                                                                       color: Colors.black,
                                                                       fontWeight: FontWeight.normal),),
                                                           ],
                                                         ),
                                                           
                                                         
                                                         Column(
                                                           children: [
                                                            
                                                                Radio(activeColor: AppColors.colorsbutton,value: kind[1],groupValue: currentKinds,onChanged: (value) {
                                                                 setState(() {
                                                                   currentKinds=value.toString();
                                                                 });
                                                               },),
                                                                Text(kind[1],style: Theme.of(context).textTheme.displayLarge!.copyWith(
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
              Text("Installment", style: Theme.of(context)
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
                                             Container(width: MediaQuery.of(context).size.width*.5,
                                               child: TextFormField(
                                               textDirection: TextDirection.ltr,
                                               decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                                   hintText:"write here".tr,
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
                                                             
                                                                Radio(activeColor: AppColors.colorsbutton,value: kindx[0],groupValue: currentKindx,onChanged: (values) {
                                                                 setState(() {
                                                                   currentKindx=values.toString();
                                                                 });
                                                               },),
                                                               Text(kind[0],style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                                       fontSize: 15,
                                                                       color: Colors.black,
                                                                       fontWeight: FontWeight.normal),),
                                                           ],
                                                         ),
                                                           
                                                         
                                                         Column(
                                                           children: [
                                                            
                                                                Radio(activeColor: AppColors.colorsbutton,value: kindx[1],groupValue: currentKindx,onChanged: (values) {
                                                                 setState(() {
                                                                   currentKindx=values.toString();
                                                                 });
                                                               },),
                                                                Text(kindx[1],style: Theme.of(context).textTheme.displayLarge!.copyWith(
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
              Text("payment_methods", style: Theme.of(context)
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
                                                              
                                                                  Checkbox(hoverColor: Colors.black,activeColor: AppColors.colorsbutton,value:waytopay1 ,onChanged: (value) {
                                                                   setState(() {
                                                                     value=waytopay1;
                                                                     waytopay1=!waytopay1;
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
                                                              
                                                                  Checkbox(hoverColor: Colors.black,activeColor: AppColors.colorsbutton,value:waytopay2 ,onChanged: (value) {
                                                                   setState(() {
                                                                     value=waytopay2;
                                                                     waytopay2=!waytopay2;
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
            padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.02, left:  MediaQuery.of(context).size.width*.02, bottom: 20,top: MediaQuery.of(context).size.height*.02),
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
                            "Edit".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16, color: Colors.black),
                          ))),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            color: Colors.black, width: 1.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .07,
                          left: MediaQuery.of(context).size.width * .07,
                          top: 10,
                          bottom: 10),
                      child: Text("cancel".tr,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 16, color: Colors.black)),
                    ),
                  )
                ],
              ),
          )




           
      
      ]),
    ));
  }
}
