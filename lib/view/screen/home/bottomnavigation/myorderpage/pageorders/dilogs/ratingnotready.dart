// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, avoid_print, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoRatingready extends StatefulWidget {
     const NoRatingready({super.key});

  @override
  State<NoRatingready> createState() => _NoRatingreadyState();
}

class _NoRatingreadyState extends State<NoRatingready> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.3,
        child: ListView(
          children: [
            Center(
              child: Text("evaluation".tr,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),SizedBox(height: MediaQuery.of(context).size.height*.08),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text("لا يوجد تقييم علي هذه الخدمه بعد ",   style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black))
                  ],
                ),
              ],
            ), SizedBox(height: MediaQuery.of(context).size.height*.05,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtongeneral(
                  OnPressed: () {
                    Get.back();
                  },
                  textbutton: "Back".tr,
                  lefts: MediaQuery.of(context).size.width*.25,
                  rights: MediaQuery.of(context).size.width*.25,
                  colorbuttons: AppColors.colorsbutton,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
