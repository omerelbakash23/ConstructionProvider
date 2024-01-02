// ignore_for_file: sized_box_for_whitespace

// ignore: unused_import
import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/notification/customdownnotification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}
bool val =true;

class _NotificationsState extends State<Notifications> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("          "),
                Text(
                  "Notifications".tr,
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
                      child: const Icon(Icons.arrow_right)
                    )),
              ],
            ),
          ),

         SizedBox(height: MediaQuery.of(context).size.height*.05,),


          Container(height: MediaQuery.of(context).size.height*.8,width: double.infinity,child: ListView.builder(itemCount: 6,itemBuilder:(context, index) =>
          Padding(
            padding:  EdgeInsets.only(right:MediaQuery.of(context).size.width*.05 ,left: MediaQuery.of(context).size.width*.05,top: 10,bottom: 10),
            child: const Customdownnotification()
          )
           ,),)




           
      
      ]),
    ));
  }
}



