// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/elvatedbutton.dart';
import '../login/LoginScreen.dart';

class Succssesresetpassword extends StatelessWidget {
  const Succssesresetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColors.colorsbutton,
          )),const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("succ_text".tr,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
              top: 20,
            ),
            child: ElevatedButtongeneral(
                textbutton: "register_now".tr,
                OnPressed: () {
                  Get.offAll(() => const LoginScreen());
                },
                rights: 80,
                lefts: 80,
                colorbuttons: AppColors.colorsbutton),
          ),
        ],
      ),
    ));
  }
}
