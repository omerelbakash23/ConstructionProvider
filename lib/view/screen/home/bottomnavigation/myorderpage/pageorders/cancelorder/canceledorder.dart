// ignore_for_file: camel_case_types

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/cancelorder/opencanel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class canceledOrders extends StatelessWidget {
  const canceledOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
          body: ListView.builder(itemCount: 6,itemBuilder: (context, index) =>  Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*.02,right: MediaQuery.of(context).size.width*.04,left: MediaQuery.of(context).size.width*.04),
            child: InkWell(onTap: () {
              Get.to(()=>const OpencanceledOrders());
            },
              child:  Container(
                  height: MediaQuery.of(context).size.height*.15,
                  decoration: BoxDecoration(  
                      color: const Color.fromARGB(255, 239, 237, 237),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02,top: MediaQuery.of(context).size.height*.01,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(AppImageAssets.mans,scale: 1.3,),
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 10, left: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("names".tr,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    fontSize: 16,
                                                    color: Colors.black)),
                                         SizedBox(
                                          width: MediaQuery.of(context).size.width*.05,
                                        ),
                                        Text(" 5-5-2022",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    fontSize: 12,
                                                    color: const Color(0xff656565))),const SizedBox(width: 5,),
                                                      Text("Tuesday".tr,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    fontSize: 12,
                                                    color: const Color(0xff656565))),
                                                    
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 10, left: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("5:50 Evening".tr,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .copyWith(fontWeight: FontWeight.normal,
                                                        fontSize: 15,
                                                        color: Colors.black)),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(AppImageAssets.manclock,scale: .9,),
                                          ],
                                        ),
                                          SizedBox(
                                          width: MediaQuery.of(context).size.width*.05,
                                        ),
                                        Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color:
                                                  const Color.fromARGB(95, 158, 158, 158),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                AppImageAssets.Advertisementnumber,
                                                scale: 1.7,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text("Request No.42".tr,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 12,
                                                          color:
                                                              const Color(0xff656565))),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                           EdgeInsets.only(right: MediaQuery.of(context).size.width*.01, left: MediaQuery.of(context).size.width*.01,top: MediaQuery.of(context).size.height*.009),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width*.53,
                                        height: 30,
                                        decoration:  BoxDecoration(borderRadius:BorderRadius.circular(10),
                                            color: const Color.fromARGB(98, 255, 235, 60)),
                                        child:  Center(child: Text("Air conditioning maintenance".tr)),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                          //////////
                      
                        
                        
                      ],
                    ),
                  )),
            ),
          ),
                
              )),
    );
  }
}
