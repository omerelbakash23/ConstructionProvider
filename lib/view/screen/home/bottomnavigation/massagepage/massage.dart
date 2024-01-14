// ignore_for_file: file_names, unused_local_variable, must_be_immutable

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottombarController.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massageModel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massagecontroller.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/profilemassage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Massagepage extends StatefulWidget {
  const Massagepage({super.key});

  @override
  State<Massagepage> createState() => _MassagepageState();
}

class _MassagepageState extends State<Massagepage> {
  BottomnavController controllers = Get.put(BottomnavController());
  MassageControllerimp controller = Get.put(MassageControllerimp());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          controllers.Animatetotap(
                              controllers.currentIndexsHome - 1);
                          controllers.Updatecurrent;
                        });
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(AppImageAssets.back),
                      )),
                  Text("Messages".tr,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 20, color: Colors.black)),
                  const Text("             "),
                ],
              ),
            ),
          ),
          /////

          Padding(
            padding:
                 EdgeInsets.only(right: MediaQuery.of(context).size.width*.01, left: MediaQuery.of(context).size.width*.01, top: MediaQuery.of(context).size.height*.01, bottom: MediaQuery.of(context).size.height*.01),
            child: TextField(
              onChanged: (value) {
                controller.updatelist(value);
              },
              cursorWidth: .2,
              cursorColor: Colors.grey,
              autofocus: true,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(186, 232, 232, 232),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "search".tr,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey,
                  ),
                  hintTextDirection: TextDirection.rtl),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GetBuilder<MassageControllerimp>(
              builder: (controller) => SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .64,
                  child: ListView.builder(
                    itemCount: controller.disableList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 5,left: 5,top: 10,bottom: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => ProfileMassage(
                                detailsmassageprofile: MassageScreen[index],
                              ));
                        },
                        child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height*.08,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    controller.disableList[index].image,
                                    scale: .7,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.disableList[index].name,
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                      Text(
                                          controller.disableList[index].massage,
                                          style: const TextStyle(
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            controller.disableList[index].time,
                                            style:
                                                const TextStyle(color: Colors.grey),
                                          ),const SizedBox(width: 5,),
                                          const Text(
                                            "مساءا",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    ));
  }
}
