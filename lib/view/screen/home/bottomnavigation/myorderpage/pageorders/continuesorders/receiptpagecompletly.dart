
// ignore_for_file: camel_case_types, deprecated_member_use, avoid_unnecessary_containers, sized_box_for_whitespace, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class receiptpagecompletly extends StatefulWidget {
  const receiptpagecompletly({super.key});

  @override
  State<receiptpagecompletly> createState() => _receiptpagecompletlyState();
}
List kind =["شهر","سنه"];
String currentKinds =kind[0];

class _receiptpagecompletlyState extends State<receiptpagecompletly> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: Padding(
        padding:  const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.ltr,
              children: [
                const Text("                      "),
                Text("Requests".tr,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 20, color: Colors.black)),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(AppImageAssets.back),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            /////

            Container(
              width: double.infinity,
              height:  MediaQuery.of(context).size.height*.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF9F3BE)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 15, left: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(AppImageAssets.person),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Name of service provider".tr,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("ياسر ابراهيم",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(AppImageAssets.kindofservise),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Type of service provider".tr,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("مؤسسة",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal))
                      ],
                    ),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(AppImageAssets.file),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("السجل التجاري",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                        
                      ],
                    ),const SizedBox(height: 20,),

                   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),child: Center(child: Image.asset(AppImageAssets.fileimage,fit: BoxFit.cover,)))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /////////////////////////////////////////

            Container(
              width: double.infinity,
              height:  MediaQuery.of(context).size.height*.17,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF9F3BE)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 15, left: 15, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(AppImageAssets.emil),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Email to the user".tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("yasserebraim@example.com",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(
                          width: 1,
                        ),
                        Text("User address :".tr,
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                                      Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:2),
                          child: Text("مكه المكرمة, شارع 80 بناية \n  10 الطابق 7",textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal)),
                        )
                      ],
                    ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /////////////////////////////////////////
            
         Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01,bottom: 10),
            child: Row(children: [
              Text("كتابة الخدمات المقدمة", style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
         
                                       Padding(
                                         padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.01,right: MediaQuery.of(context).size.width*.01,),
                                         child: TextFormField(
                                         textDirection: TextDirection.ltr,
                                         decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                             hintText: "اكتب هنا",
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
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01,top:20),
            child: Row(children: [
              Text("الضمان", style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
         
                                       Padding(
                                         padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01),
                                         child: Row(
                                           children: [
                                             Container(width: MediaQuery.of(context).size.width*.5,
                                               child: TextFormField(
                                               textDirection: TextDirection.ltr,
                                               decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                                                                   hintText: "اكتب هنا",
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
                                                                       fontWeight: FontWeight.bold),),
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
                                                                       fontWeight: FontWeight.bold),),
                                                           ],
                                                         ),
                                       
                                                       ],)

          ])),


           Padding(
            padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01,top:20,bottom: 20),
            child: Row(children: [
              Text("صورة العقد", style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),



          InkWell(onTap: () {
            
          },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),child:Stack(alignment: Alignment.center,
                                        children: [
                                           Column(
                                             children: [
                                               Image.asset(AppImageAssets.uploadimage),
                                               const Text("ارفع الصوره من هنا")
                                             ],
                                           ),
                                          Image.asset(
                                          AppImageAssets.borders,
                                          fit: BoxFit.cover,
                                            ),
                                          
                                      
                                         
            
                                        ],
                                      )),
            ),
          ),
                                       














            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: AppColors.colorsbutton),
                  onPressed: () {
                    Get.back();
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(
                        top: 10, bottom: 10, right: MediaQuery.of(context).size.width*0.08, left: MediaQuery.of(context).size.width*0.08,),
                    child: Text("Liquidation".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14, color: Colors.black)),
                  ),
                ),
                 SizedBox(
                  width: MediaQuery.of(context).size.width*0.05,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.red, width: 1.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Get.back();
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(top: 10, bottom: 10,right: MediaQuery.of(context).size.width*0.05,left: MediaQuery.of(context).size.width*0.05,),
                    child: Text("Cancelling order".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14, color: Colors.red)),
                  ),
                )
              ],
            )
                         
                         
                          ],
          
        ),
      ),
    ));
  }
}
