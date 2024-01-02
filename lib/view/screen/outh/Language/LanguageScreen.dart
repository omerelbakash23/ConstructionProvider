// ignore_for_file: file_names, deprecated_member_use, unused_import, prefer_typing_uninitialized_variables

import 'package:constructionprovider1/core/constant/LogoOuth.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/constant/elvatedbutton.dart';
import 'package:constructionprovider1/core/function/checkinternet.dart';
import 'package:constructionprovider1/view/screen/onbording/Bording.dart';
import 'package:constructionprovider1/view/screen/outh/Language/changeLocalization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoOuth(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Choose_lang".tr,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButtongeneral(
                    OnPressed: () {
                      controller.changeLang("ar");
                      Get.to(() => const OnBording());
                    },
                    textbutton: "Ar",
                    lefts: 40,
                    rights: 40,
                    colorbuttons: AppColors.colorsbutton,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButtongeneral(
                    OnPressed: () {
                      controller.changeLang("en");
                      Get.to(() => const OnBording());
                    },
                    textbutton: "En",
                    lefts: 40,
                    rights: 40,
                    colorbuttons: AppColors.colorsbutton,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
