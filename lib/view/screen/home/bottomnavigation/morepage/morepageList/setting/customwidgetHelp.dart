// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/help/aboutApp.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/help/shareapp/shareappDialog.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/help/Commission%20calculator/Commission_calculator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customwidgethelp extends StatefulWidget {
  const Customwidgethelp({super.key});

  @override
  State<Customwidgethelp> createState() => _CustomwidgethelpState();
}
bool isopens = false;

class _CustomwidgethelpState extends State<Customwidgethelp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isopens = !isopens;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                 color: Colors.white,
                  borderRadius: isopens? const BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)):BorderRadius.circular(20),border: Border.all(color:const Color.fromARGB(47, 158, 158, 158))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF9F3BE)),
                          child: Image.asset(AppImageAssets.help),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text("help".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 15, color: Colors.black)),
                      ],
                    ),
                   isopens? const Icon(Icons.keyboard_arrow_up):const Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ),
          ),
        ),
        if (isopens)
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 0),
              child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),border: Border.all(color: const Color.fromARGB(48, 158, 158, 158))),
                child: ListView(
                    primary: true,
                    shrinkWrap: true,
                    children: [
                      
                      
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                                  Get.to(()=>const AboutApp());
                                  isopens =false;
                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text( "About the app".tr,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            ))




                            ,
                                   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                                  Get.defaultDialog(title:"",content: Shareappdilog() );
                                  isopens =false;
                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text( "Share the app".tr,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            ))



,

       Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                                Get.to(()=>const SignUPasProvider());
                                  isopens =false;
                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text("Commission_calculator".tr,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            ))


                    ]
              ),
            ),
          )
      )  ],
    );
  }
}
