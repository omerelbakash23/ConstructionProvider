// ignore_for_file: file_names, must_be_immutable

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/adressController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeletDialogaddrass extends StatefulWidget {
  const DeletDialogaddrass({super.key});

  @override
  State<DeletDialogaddrass> createState() => _DeletDialogaddrassState();
}

class _DeletDialogaddrassState extends State<DeletDialogaddrass> {
  AddAdresscontrollerimp controlleradd = Get.put(AddAdresscontrollerimp());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .40,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Delete city".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 18, color: Colors.black),
                      ),
                      const Text("   ")
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
                Text(
                  "Are you sure to delete the city?",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * .01,
                      left: MediaQuery.of(context).size.width * .01,
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: AppColors.colorsbutton),
                          onPressed: () {
                            setState(() {
                              // controlleradd.removeadressfromlist(controlleradd.Adresses[index]);
                              Get.back();
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.02,
                                left: MediaQuery.of(context).size.width * 0.02,
                                top: 10,
                                bottom: 10),
                            child: Text("Yes delete".tr,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              side: const BorderSide(color: Colors.black),
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Get.back();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * 0.05,
                                left: MediaQuery.of(context).size.width * 0.05,
                                top: 10,
                                bottom: 10),
                            child: Text(
                              "Back".tr,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
