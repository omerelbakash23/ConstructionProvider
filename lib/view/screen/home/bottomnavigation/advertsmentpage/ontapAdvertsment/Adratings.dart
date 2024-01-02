// ignore_for_file: file_names, deprecated_member_use, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Adrating extends StatelessWidget {
  const Adrating({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
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
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          AppImageAssets.back,
                          color: Colors.black,
                        ),
                      )),
                ),
                Text("التقيمات",
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 20, color: Colors.black)),
                const Text("                    ")
              ],
            ),
          ),
 
          Container(width: double.infinity,height: MediaQuery.of(context).size.height*.74,decoration: const BoxDecoration(color: Colors.white),
          child:ListView.builder(itemCount: 10,itemBuilder:(context, index) => 
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15,top: 10,bottom: 10),
            child:  InkWell(
                  onTap: () {
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                       
                        color: const Color(0xffF6F6F6)),
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        textDirection: TextDirection.rtl,
                        children: [
                          Stack(alignment: Alignment.center,
                            children: [
                              Image.asset(AppImageAssets.roundimag),
                              Text("Logo", style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black)),
                                  
                            ],
                          ),const SizedBox(width: 10,),
                           Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,textDirection: TextDirection.rtl,children: [
                              Row(textDirection: TextDirection.rtl,
                                children: [
                                  Text("1# مستخدم sos" , style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13, color: Colors.black),), SizedBox(width:MediaQuery.of(context).size.width*.17,),
                                       Text("الثلاثاء 3:00 مساءا" , style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13, color: Colors.black),)
                                ],
                              ),
                                   Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(AppImageAssets.stars),const SizedBox(width: 10,),
                                      const Text("4.8",style: TextStyle(color: Colors.yellow),),
                                    ],
                                  ),
                                   Text("هذا النص مثال علي الكلام المكتوب هنا " , style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13, color: Colors.black),),
                            ],),
                          ),
                         
                          
                      
                      
                          ],
                      ),
                    ),
                  )),
          )
          
          )
          )







        ],
      ),
    ));
  }
}
