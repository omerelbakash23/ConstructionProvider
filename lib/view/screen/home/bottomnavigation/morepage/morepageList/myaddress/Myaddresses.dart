// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/AdressesMOdel/ListAdressesModel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/adressController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myaddresess extends StatefulWidget {
  const Myaddresess({super.key});
  @override
  State<Myaddresess> createState() => _MyaddresessState();
}
TextEditingController citytext = TextEditingController();
TextEditingController describtion = TextEditingController();
AddAdresscontrollerimp controlleradress = Get.put(AddAdresscontrollerimp());
class _MyaddresessState extends State<Myaddresess> {

  @override
  void initState() {
    citytext.clear();
    describtion.clear();

    super.initState();
  }
  @override
  void dispose() {
    citytext;
    describtion;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("          "),
                Text(
                  "My addresses".tr,
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
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        AppImageAssets.back,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .70,
            child: ListView.builder(
                itemCount: controlleradress.datas.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .25,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(41, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ListView(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color:
                                                      AppColors.colorsbutton),
                                              child: Image.asset(
                                                  AppImageAssets.ourlocation)),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            controlleradress.datas[index].houseName
                                                .toString(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                              width: 30,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color:
                                                      const Color(0xffF9F3BE)),
                                              child: Center(
                                                  child:
                                                      Text(controlleradress.datas[index].id.toString()))),
                                        ],
                                      ),
                                      Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.red)),
                                          child: InkWell(
                                            onTap: ()  async{
                                              await controlleradress.deletadresses();
                                              setState(() {
                                                Get.defaultDialog(
                                                    title: "",
                                                    content: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .40,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        child: ListView(
                                                          children: [
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              30,
                                                                          right:
                                                                              20,
                                                                          left:
                                                                              20),
                                                                  child: Row(
                                                                    textDirection:
                                                                        TextDirection
                                                                            .ltr,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        "Delete city"
                                                                            .tr,
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .displayLarge!
                                                                            .copyWith(
                                                                                fontSize: 18,
                                                                                color: Colors.black),
                                                                      ),
                                                                      const Text(
                                                                          "   ")
                                                                    ],
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      .1,
                                                                ),
                                                                Text(
                                                                  "Are you sure to delete the city?",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .displayLarge!
                                                                      .copyWith(
                                                                          fontSize:
                                                                              14,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      right: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .01,
                                                                      left: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          .01,
                                                                      top: MediaQuery.of(context)
                                                                              .size
                                                                              .height *
                                                                          0.1),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      ElevatedButton(
                                                                          style: ElevatedButton.styleFrom(
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                                              backgroundColor: AppColors.colorsbutton),
                                                                          onPressed: () {
                                                                            setState(() {
                                                                              controlleradress.removeadressfromlist(index);
                                                                              Get.back();
                                                                            });
                                                                          },
                                                                          child: Padding(
                                                                            padding: EdgeInsets.only(
                                                                                right: MediaQuery.of(context).size.width * 0.02,
                                                                                left: MediaQuery.of(context).size.width * 0.02,
                                                                                top: 10,
                                                                                bottom: 10),
                                                                            child:
                                                                                Text("Yes delete".tr, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                                                          )),
                                                                      SizedBox(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            0.02,
                                                                      ),
                                                                      ElevatedButton(
                                                                          style: ElevatedButton.styleFrom(
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
                                                                            child:
                                                                                Text(
                                                                              "Back".tr,
                                                                              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                                                    ));
                                              });
                                            },
                                            child: Image.asset(
                                                AppImageAssets.delet),
                                          ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "address".tr,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 16,
                                                color: Colors.black),
                                      ),
                                      const Text("")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                26, 158, 158, 158)),
                                        color: const Color(0xffF6F6F6),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      textAlign: TextAlign.center,
                                      controlleradress.datas[index].description
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                              fontSize: 12,
                                              color: const Color(0xff656565)),
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
          ),
          const SizedBox(
            height: 20,
          ),

          ///////////////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.colorsbutton,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  setState(() {
                    Get.defaultDialog(
                        title: "",
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * .40,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.add,
                                    size: 25,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Add address".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .03,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .04,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .04,
                                          bottom: 10),
                                      child: Row(
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
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .06,
                                        child: TextFormField(
                                          textDirection: TextDirection.ltr,
                                          controller: citytext,
                                          decoration: InputDecoration(
                                              filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                      color: AppColors.grey)),
                                              hintText: "write here".tr,
                                              focusColor: AppColors.grey,
                                              fillColor: const Color.fromARGB(
                                                  175, 235, 227, 227),
                                              hintStyle: const TextStyle(
                                                  fontSize: 12,
                                                  color: AppColors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                      color: AppColors.grey)),
                                              disabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                      color: AppColors.grey)),
                                              contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                                              border: OutlineInputBorder(borderSide: const BorderSide(color: AppColors.grey, width: 6), borderRadius: BorderRadius.circular(15))),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .04,
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .04,
                                          bottom: 10),
                                      child: Row(
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
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .04,
                                        child: TextFormField(
                                          textDirection: TextDirection.ltr,
                                          controller: describtion,
                                          decoration: InputDecoration(
                                              filled: true,
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                      color: AppColors.grey)),
                                              hintText: "write here".tr,
                                              focusColor: AppColors.grey,
                                              fillColor: const Color.fromARGB(
                                                  175, 235, 227, 227),
                                              hintStyle: const TextStyle(
                                                  fontSize: 12,
                                                  color: AppColors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                      color: AppColors.grey)),
                                              disabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  borderSide: const BorderSide(
                                                      color: AppColors.grey)),
                                              contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                                              border: OutlineInputBorder(borderSide: const BorderSide(color: AppColors.grey, width: 6), borderRadius: BorderRadius.circular(15))),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right:
                                            MediaQuery.of(context).size.width *
                                                .04,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                .04,
                                        top:
                                            MediaQuery.of(context).size.height *
                                                .03,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  backgroundColor:
                                                      AppColors.colorsbutton),
                                              onPressed: () {
                                                setState(() {
                                                  controlleradress.AddAdressTolist(
                                                      Datum(
                                                        description: describtion.text,houseName: citytext.text
                                                      )
                                                  );
                                                });
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .03,
                                                      left:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              .03,
                                                      top: 10,
                                                      bottom: 10),
                                                  child: Text(
                                                    "addition".tr,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .displayLarge!
                                                        .copyWith(
                                                            fontSize: 16,
                                                            color:
                                                                Colors.black),
                                                  ))),
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .01),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: Colors.black,
                                                    width: 1.2),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                backgroundColor: Colors.white),
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .03,
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .03,
                                                  top: 10,
                                                  bottom: 10),
                                              child: Text("cancel".tr,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 16,
                                                          color: Colors.black)),
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
                        ));
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add another address".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14, color: Colors.black),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
