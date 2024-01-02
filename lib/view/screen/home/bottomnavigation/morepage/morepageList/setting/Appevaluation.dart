// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, avoid_print, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:constructionprovider1/view/screen/outh/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Appevaluation extends StatefulWidget {
     const Appevaluation({super.key});

  @override
  State<Appevaluation> createState() => _AppevaluationState();
}
  double  myreting =0;

class _AppevaluationState extends State<Appevaluation> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 300,
        height: 400,
        child: ListView(
          children: [
            Center(
              child: Text("تقييم ",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black)),
            ),const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
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
            ),const SizedBox(height: 20,),Center(child: Text("$myreting"))
                  ,const SizedBox(height: 120,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButtongeneral(
                  OnPressed: () {
                    Get.offAll(() => const LoginScreen());
                  },
                  textbutton: "تم التقييم",
                  lefts: 15,
                  rights: 15,
                  colorbuttons: AppColors.colorsbutton,
                ),const SizedBox(width: 30,),
                 ElevatedButtongeneral(
                  OnPressed: () {
                    Get.back();
                  },
                  textbutton: "رجوع",
                  lefts: 35,
                  rights: 35,
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
