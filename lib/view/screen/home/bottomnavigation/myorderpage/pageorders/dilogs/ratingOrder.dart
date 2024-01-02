// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, avoid_print, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ValuationOrder extends StatefulWidget {
     const ValuationOrder({super.key});

  @override
  State<ValuationOrder> createState() => _ValuationOrderState();
}
  double  myreting =0;

class _ValuationOrderState extends State<ValuationOrder> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.38,
        child: ListView(
          children: [
            Center(
              child: Text("Evaluation".tr,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),const SizedBox(height: 15,),


             Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                                Image.asset(AppImageAssets.avatar,scale: 1.5,),
                        const SizedBox(
                          width: 10,
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
                                        fontSize: 15, color: Colors.black)),const SizedBox(height: 5,),
                         Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(itemSize: 20,unratedColor: const Color.fromARGB(255, 214, 214, 211),
                  initialRating: 0,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print("$rating");
                    setState(() {                         
                   myreting=rating;
                    });
                  },
                ),
              ],
            ),
                          ],
                        ),
                      ],
                    ),

              Padding(
                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xffF6F6F6)),child: Padding(
                  padding: const EdgeInsets.only(right: 5,left: 5,top: 10,bottom: 10),
                  child: Text(textAlign:TextAlign.center,"هذا النص مثال علي الكلام المكتوب في هذه  \nالمنطقة ولا يمثل اي محتوي حقيقي",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: const Color.fromRGBO(0, 0, 0, 1))),
                ),),
              )
                  , SizedBox(height: MediaQuery.of(context).size.height*.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtongeneral(
                  OnPressed: () {
                    Get.back();
                    myreting=0;

                  },
                  textbutton: "evaluation".tr,
                  lefts: MediaQuery.of(context).size.width*.04,
                  rights: MediaQuery.of(context).size.width*.04,
                  colorbuttons: AppColors.colorsbutton,
                ),const SizedBox(width: 15,),
                 ElevatedButtongeneral(
                  OnPressed: () {
                    Get.back();
                    myreting=0;
                  },
                  textbutton: "Back".tr,
                  lefts:MediaQuery.of(context).size.width*.06,
                  rights:  MediaQuery.of(context).size.width*.06,
                  colorbuttons: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
