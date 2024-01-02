// ignore_for_file: must_be_immutable, dead_code, non_constant_identifier_names, avoid_types_as_parameter_names, avoid_unnecessary_containers

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottombarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  BottomnavController controllers = Get.put(BottomnavController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (Value) {
          setState(() {
            controllers.Animatetotap(controllers.currentIndexsHome = Value);
            controllers.Updatecurrent(Value);
          });
        },
        controller: controllers.pageController,
        children: controllers.bodys,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          currentIndex: controllers.currentIndexsHome,
          selectedItemColor: AppColors.colorsbutton,
          onTap: (value) {
            setState(() {
              controllers.Updatecurrent(value);
              controllers.Gotopage(value);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(AppImageAssets.a3lan),
                label: "Advertisements".tr),
            BottomNavigationBarItem(
                icon: Image.asset(AppImageAssets.talbat), label: "Requests".tr),
            BottomNavigationBarItem(
                icon: Image.asset(AppImageAssets.massagewhite),
                label: "Messages".tr),
            BottomNavigationBarItem(
                icon: Image.asset(AppImageAssets.mores), label: "More".tr)
          ]),
    ));
  }
}
