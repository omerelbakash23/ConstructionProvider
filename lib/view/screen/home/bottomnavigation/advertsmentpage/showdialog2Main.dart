// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/adversmentpagecontrollers.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/customdownfordialoglequid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Showdialogmain extends StatelessWidget {
   Showdialogmain({super.key});
AdvertsMentPagecontrollerimp contrlloer =Get.put(AdvertsMentPagecontrollerimp());
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height*.50 ,
        child: ListView(children: [
                                Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                    Image.asset(AppImageAssets.Liquidation),const SizedBox(width: 20,),Text("Liquidation".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 20, color: Colors.black))
                                  ],),
                                ),const SizedBox(height: 20,),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("ظهور الإعلانات علي حسب",style: Theme.of(context)
                                                              .textTheme
                                                              .headline1!
                                                              .copyWith(fontWeight: FontWeight.normal,fontSize: 18, color: Colors.black)),
                                    ),
                                const Text("")  ],
                                ),
                            Row(children: [
                           GetBuilder<AdvertsMentPagecontrollerimp>(builder: (controller) => 
                           ClipRRect(
                             child: Checkbox(activeColor: AppColors.colorsbutton,value:controller.checked1, onChanged: (newcheck){
                              controller.showcheck();
                             controller.checked1= newcheck!;
                                                  }),
                           ),
                          ), Text("مفعلة",style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 18, color: Colors.black)
                          )
                         ],),
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      
                          Row(children: [
                           GetBuilder<AdvertsMentPagecontrollerimp>(builder: (controller) => 
                           ClipRRect(
                             child: Checkbox(activeColor: AppColors.colorsbutton,value:controller.checked2 , onChanged: (newcheck){
                              controller.showcheck();
                             controller.checked2= newcheck!;
                                                  }),
                           ),
                          ), Text("معطلة",style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 18, color: Colors.black)
                          )
                         ],),
      
      
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      
                           Row(children: [
                           GetBuilder<AdvertsMentPagecontrollerimp>(builder: (controller) => 
                           ClipRRect(
                             child: Checkbox(activeColor: AppColors.colorsbutton,value:controller.checked3 , onChanged: (newcheck){
                              controller.showcheck();
                             controller.checked3= newcheck!;
                                                  }),
                           ),
                          ), Text("كلاهما",style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 18, color: Colors.black)
                          )
                         ],),  
                         
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                       
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("علي حسب المدينة",style: Theme.of(context)
                                                              .textTheme
                                                              .headline1!
                                                              .copyWith(fontWeight: FontWeight.normal,fontSize: 18, color: Colors.black)),
                                    ),
                                const Text("")  ],
                                ),

                                const SizedBox(height: 10,),
                                const Customdownlequation(),
                                const SizedBox(height: 10,),

      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      const SizedBox(height: 20,),
      
                       Padding(
            padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.01, left:  MediaQuery.of(context).size.width*.01, bottom: 20),
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
                                  MediaQuery.of(context).size.width * .05,
                              left: MediaQuery.of(context).size.width * .05,
                              top: 10,
                              bottom: 10),
                          child: Text(
                            "تصفية",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16, color: Colors.black),
                          ))),
                  const SizedBox(width: 20),
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
                          right: MediaQuery.of(context).size.width * .05,
                          left: MediaQuery.of(context).size.width * .05,
                          top: 10,
                          bottom: 10),
                      child: Text("إلغاء",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 16, color: Colors.black)),
                    ),
                  )
                ],
              ),
          )

      
      
      
      
      
                              ],),
      ),
    );
  }
}