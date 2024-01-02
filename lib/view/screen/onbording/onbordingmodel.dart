// ignore_for_file: non_constant_identifier_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:get/get.dart';


class OnbordingModel {
  final String? title; 
  final String? image; 
  final String? body;
    final String? buttontext;

  
  OnbordingModel({this.body,this.image,this.title,this.buttontext});
} 


List<OnbordingModel> onbordingList = [
  OnbordingModel(
      title: "Bordone_title".tr,
      body:
           "Bordone_body".tr      ,
           image: AppImageAssets.OnbordingImageOne,
           buttontext:"next".tr
           
           ),
      
  OnbordingModel(
      title: "Bordtwo_title".tr,
      body: "Bordtwo_body".tr,
      image: AppImageAssets.OnbordingImageTwo,
       buttontext:"next".tr
      ),
  OnbordingModel(
      title: "Bordthree_title".tr,
      body:
          "Bordtwo_three".tr,
      image: AppImageAssets.OnbordingImageThree,
       buttontext:"start".tr

      
      ),
];


