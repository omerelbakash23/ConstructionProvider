// ignore_for_file: file_names, deprecated_member_use, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable, unused_import, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/adversmentpagecontrollers.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/advetisementpagemodel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/MakeYouadverdsment.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/SpecailServices.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/notification.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/ontapadvertsment.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/showdialog2Main.dart';
import 'package:constructionprovider1/view/widget/pageviewPhoto/PageviewPhoto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvertsMentPage extends StatefulWidget {
   const AdvertsMentPage({super.key});
  @override
  State<AdvertsMentPage> createState() => _AdvertsMentPageState();
}

bool searchbool =false;


class _AdvertsMentPageState extends State<AdvertsMentPage> {
  AdvertsMentPagecontrollerimp controller = Get.put(AdvertsMentPagecontrollerimp());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(floatingActionButton: 
        FloatingActionButton(backgroundColor: AppColors.colorsbutton,onPressed: (){
          Get.to(()=>const MakeYouadverdsment());
        },child: const Icon(Icons.add,color:Colors.black,),),
      body: Stack(
        children: [
/////////////////////////////////////////////////////////////////////////////
//third

            Container(
              margin: const EdgeInsets.only(top: 130),
              color: const Color.fromARGB(255, 249, 248, 248),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         SizedBox(
                          height: MediaQuery.of(context).size.height*.11,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Categories".tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 18, color: Colors.black),
                              ),
                            InkWell(
                                onTap: () {
                                 Get.defaultDialog(title: "",content:  Showdialogmain(),
                                 );
                                },
                                child: Image.asset(
                                  AppImageAssets.Liquidation,
                                ),
                              ), ],
                          ),
                        ),const SizedBox(
                          height: 20,
                        ),
                
          
                       
                     const SpecailServices(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          

          ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

          //top

          Container(
            decoration: const BoxDecoration(image: DecorationImage(alignment: Alignment.centerLeft,image: AssetImage(
                                                    AppImageAssets.x,
                                                  )),
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            height: MediaQuery.of(context).size.height*.22,
            child: Padding(
              padding:  EdgeInsets.only(right:MediaQuery.of(context).size.height*.03 ,left: MediaQuery.of(context).size.height*.03),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     
                    
                      
                       Row(
                         children: [
                         
                               Image.asset(AppImageAssets.avatar,scale:1.3,),
                      const SizedBox(
                            width: 5,
                      ),
                      Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Text("names".tr,
                               style: Theme.of(context)
                                   .textTheme
                                   .displayLarge!
                                   .copyWith(
                                       fontSize: 15, color: Colors.black)),
                           Row(
                             children: [
                              Center(child: Container(height: 10,width: 10,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),))
                              ,const SizedBox(width: 10,),
                               Text("You_are_not_available_now".tr,
                                   style: Theme.of(context)
                                       .textTheme
                                       .displayLarge!
                                       .copyWith(
                                           fontSize: 15,
                                           color: Colors.black)),
                             ],
                           ),
                            ],
                      ),
                         ],
                         
                       ),
                         InkWell(
                            onTap: () {
                            Get.to(()=>const Notifications());
                            },
                            child: Image.asset(AppImageAssets.nofication),
                          ),
                        
                    ],
                  )
                      ]),
            )),
                    
                  
                      
                  
              
              
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//second

          GetBuilder<AdvertsMentPagecontrollerimp>(builder: (controller) => 
             Positioned(
              top: MediaQuery.of(context).size.height*.19,
              right: 20,
              left: 20,
              child: InkWell(onTap:() {
setState(() {
                               Get.defaultDialog(title: "",content:const Text("Category"));

});          
              },
                child: Container(
                  height: MediaQuery.of(context).size.height*.05,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                              controller.headtitle),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
