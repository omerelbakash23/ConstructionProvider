// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/adversmentpagecontrollers.dart';
import 'package:constructionprovider1/view/widget/customAnimation/customanmationS.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Pageviewphoto extends StatelessWidget {
   Pageviewphoto({super.key});
AdvertsMentPagecontrollerimp controller =Get.put(AdvertsMentPagecontrollerimp());
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [const SizedBox(height: 10,),
        SizedBox(height: MediaQuery.of(context).size.height*.17,width:MediaQuery.of(context).size.width ,
                      child:PageView.builder(controller:controller.pageController,onPageChanged: (value) => controller.onpagechange(value),scrollDirection: Axis.horizontal,itemCount:appbanarList.length ,itemBuilder: (context, index) {
                       return Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage(appbanarList[index].banar) )),),
                       )  ;
                      } 
                      )
                    ),
               const SizedBox(height: 20,),
               const CustomAnimationContainerGenral(),

      ],
    );
  }
}



class AppBamar {
  final String banar ;

  AppBamar(this.banar);
}  


List<AppBamar> appbanarList =[AppBamar(AppImageAssets.adverts ),
AppBamar(AppImageAssets.adverts ),
AppBamar(AppImageAssets.adverts ),

];