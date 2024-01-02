// ignore_for_file: file_names, must_be_immutable

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/ServicesRequest/ServicesrequestCustomDown.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Servicerequest extends StatelessWidget {
   Servicerequest({super.key});
MassageControllerimp controller =Get.put(MassageControllerimp());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(height: MediaQuery.of(context).size.height*.93,width:  MediaQuery.of(context).size.width,
                  child: ListView(children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
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
                          Text("طلب الخدمة",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 20, color: Colors.black)),
                          const Text("                "),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        const Text(""),
                        Text("الخدمات",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomDownServicesrequest(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        const Text(""),
                        Text("اختر العنوان",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .9,
                      height: MediaQuery.of(context).size.height * .25,
                      child: Column(
                        children: [
                             GetBuilder<MassageControllerimp>(
                            builder: (controller) => InkWell(
                              onTap: () {
                                controller.change();
                                controller.headtitle = controller.mytext[0];
                                controller.update();
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: controller.check0
                                        ? const Color(0xffF9F3BE)
                                        : const Color.fromARGB(
                                            255, 236, 233, 233),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Container(height: 40,width: 40,decoration: BoxDecoration(color: AppColors.colorsbutton,borderRadius: BorderRadius.circular(10)),
                                      child: const Icon(Icons.location_on)),const SizedBox(width: 20,),
                                      Text(controller.mytext[0],
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.black))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GetBuilder<MassageControllerimp>(
                            builder: (controller) => InkWell(
                              onTap: () {
                                controller.change1();
                                controller.headtitle = controller.mytext[1];
                                controller.update();
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: controller.check1
                                        ? const Color(0xffF9F3BE)
                                        : const Color.fromARGB(
                                            255, 236, 233, 233),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Container(height: 40,width: 40,decoration: BoxDecoration(color: AppColors.colorsbutton,borderRadius: BorderRadius.circular(10)),
                                      child: const Icon(Icons.location_on)),const SizedBox(width: 20,),
                                      Text(controller.mytext[1],
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.black))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GetBuilder<MassageControllerimp>(
                            builder: (controller) => InkWell(
                              onTap: () {
                                controller.change2();
                                controller.headtitle = controller.mytext[2];
                                controller.update();
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: controller.check2
                                        ? const Color(0xffF9F3BE)
                                        : const Color.fromARGB(
                                            255, 236, 233, 233),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Container(height: 40,width: 40,decoration: BoxDecoration(color: AppColors.colorsbutton,borderRadius: BorderRadius.circular(10)),
                                      child: const Icon(Icons.location_on)),const SizedBox(width: 20,),
                                      Text(controller.mytext[2],
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12,
                                                  color: Colors.black))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),const SizedBox(height: 20,),
                
                
                
                
               
                
                        ],
                      ),
                    ),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        const Text(""),
                        Text("الكمية",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                      ],
                    ),
                 Padding(
                         padding:  EdgeInsets.only(top: 10,right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01,),
                         child: TextFormField(
                              textDirection: TextDirection.rtl,keyboardType:TextInputType.text,
                              controller:controller.Quantaty ,
                              decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                  hintText: 'برجاء كتابة الكمية المطلوبة',
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
                
                
                
                
                const SizedBox(height: 20,),
                
                
                
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: [
                        const Text(""),
                        Text("السعر الإجمالي",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))
                      ],
                    ),
                
                
                
                 Padding(
                         padding:  EdgeInsets.only(top: 10,right: MediaQuery.of(context).size.width*.01,left: MediaQuery.of(context).size.width*.01,),
                         child: TextFormField(
                              textDirection: TextDirection.rtl,keyboardType:TextInputType.text,
                              controller: controller.Price,
                              decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                  hintText: 'برجاء كتابة السعر هنا',
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
                       ), SizedBox(height:MediaQuery.of(context).size.height*.06,),
                
                
                ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor: AppColors.colorsbutton),onPressed: (){Get.to(()=> Servicerequest() );}, child:Padding(
                      padding:  EdgeInsets.only(top: 5,bottom: 5,right:MediaQuery.of(context).size.width*.2,left: MediaQuery.of(context).size.width*.2),
                      child: Text("إرسال",style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge!
                                                  .copyWith(fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold)),
                    ) )
                  ]),


                  
                ))));
  }
}
