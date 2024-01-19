// ignore_for_file: file_names, must_be_immutable

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/adressController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAdress extends StatefulWidget {
  
   const AddAdress({super.key});

  @override
  State<AddAdress> createState() => _AddAdressState();
}

class _AddAdressState extends State<AddAdress> {
  TextEditingController citytext =TextEditingController();
  TextEditingController describtion =TextEditingController();
    
AddAdresscontrollerimp controlleradd =Get.put(AddAdresscontrollerimp());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .40,
        width: MediaQuery.of(context).size.width,
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add,size: 25,),const SizedBox(width: 10,),
              Text(
                "Add address".tr,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 18, color: Colors.black),
              ),
            ],
          ),SizedBox(height: MediaQuery.of(context).size.height*.03,),
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                 Padding(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.04, left: MediaQuery.of(context).size.width*.04, bottom: 10),
                  child:  Row(
                    children: [
                      Text(
                        "City".tr,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: SizedBox(width: double.infinity,height: MediaQuery.of(context).size.height*.06,
                    child: TextFormField(
                                       textDirection: TextDirection.ltr,
                                       controller: citytext,
                                       decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                      hintText: "write here".tr,
                                      focusColor: AppColors.grey,
                                      fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                      hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),

                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: const BorderSide(color: AppColors.grey)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: const BorderSide(color:  AppColors.grey)),
                                      contentPadding:
                                          const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                                          borderRadius: BorderRadius.circular(15))),
                                      ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                 Padding(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.04, left: MediaQuery.of(context).size.width*.04, bottom: 10),
                  child:  Row(
                    children: [
                      Text(
                        "the description".tr,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: SizedBox(width: double.infinity,height: MediaQuery.of(context).size.height*.04,
                    child: TextFormField(
                                       textDirection: TextDirection.ltr,
                                       controller: describtion,
                                       decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: const BorderSide(color:  AppColors.grey)),
                                      hintText: "write here".tr,
                                      focusColor: AppColors.grey,
                                      fillColor:  const Color.fromARGB(175, 235, 227, 227),
                                      hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: const BorderSide(color: AppColors.grey)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: const BorderSide(color:  AppColors.grey)),
                                      contentPadding:
                                          const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                                          borderRadius: BorderRadius.circular(15))),
                                      ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width * .04, left: MediaQuery.of(context).size.width * .04, top: MediaQuery.of(context).size.height *.03,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: AppColors.colorsbutton),
                          onPressed: () {  
                            setState(() {
                            });
                          Get.back();

                          },
                          child: Padding(
                              padding: EdgeInsets.only(
                                  right:
                                      MediaQuery.of(context).size.width * .03,
                                  left: MediaQuery.of(context).size.width * .03,
                                  top: 10,
                                  bottom: 10),
                              child: Text(
                                "addition".tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 16, color: Colors.black),
                              ))),
                       SizedBox(width: MediaQuery.of(context).size.width*.01),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                color: Colors.black, width: 1.2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width * .03,
                              left: MediaQuery.of(context).size.width * .03,
                              top: 10,
                              bottom: 10),
                          child: Text("cancel".tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 16, color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
