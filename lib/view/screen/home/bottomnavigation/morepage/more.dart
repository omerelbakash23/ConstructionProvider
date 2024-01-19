// ignore_for_file: file_names, non_constant_identifier_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottombarController.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/edit.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/Financial%20dues/Financial.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/Myaddresses.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/connectwithus/connectWithus.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/myaddress/adressController.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/morepageList/setting/setting.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/worktime/worktime.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}
class _MorePageState extends State<MorePage> {
   BottomnavController controllers =Get.put(BottomnavController());
   AddAdresscontrollerimp controlleradress=Get.put(AddAdresscontrollerimp());

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
/////////////////////////////////////////////////////////////////////////////
//third
   Container(
                height:  MediaQuery.of(context).size.height*.8,
                width: double.infinity,
                margin:  EdgeInsets.only(top:  MediaQuery.of(context).size.height*.23),
                color: const Color.fromARGB(255, 249, 248, 248),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue),
                            child: Image.asset(
                              AppImageAssets.oks,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "names".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 16, color: Colors.black),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "institution".tr,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                                     const SizedBox(height: 10,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImageAssets.clock),
                        const SizedBox(
                          width: 10,
                        ),
                         Text("Average speed of response".tr),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width*.2,
                          decoration:  BoxDecoration( borderRadius: BorderRadius.circular(20),color: const Color(0xffF9F3BE)),
                          child:  Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("3"),const SizedBox(width: 5,),
                              Text("hours".tr),
                            ],
                          )),
                        )
                      ],
                    ),


                    const SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffFFEB3C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              Get.to(() => const Financial());
                            },
                            child: Row(children: [
                              Image.asset(
                                AppImageAssets.editmark,
                                scale: .9,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "2500",
                                style: TextStyle(color: Colors.black),
                              ),const SizedBox(width: 5,),
                               Text("SAR commission due".tr,style: const TextStyle(color: Colors.black),),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(AppImageAssets.back)
                            ]))
                      ],
                    ),

                    const Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 10,
                            child: Divider(
                              thickness: 1,
                              color: Color.fromARGB(53, 158, 158, 158),
                            ))
                      ],
                    ),

                           Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 30, left: 30, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const Editprofilepage());
                        },
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF9F3BE)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(AppImageAssets.person),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Edit_profile".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 15, color: Colors.black))
                              ],
                            ),
                            Image.asset(AppImageAssets.back2)
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 30, left: 30, bottom: 20),
                      child: InkWell(
                        onTap: () async{
                             await controlleradress.GetAdress();
                          Get.to(() => const Myaddresess());
                        },
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF9F3BE)),
                                  width: 40,
                                  height: 40,
                                  child:
                                      Image.asset(AppImageAssets.ourlocation),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("My addresses".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 15, color: Colors.black))
                              ],
                            ),
                            Image.asset(AppImageAssets.back2)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 30, left: 30, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(()=>const Worktime());
                        },
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF9F3BE)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(AppImageAssets.worktime),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Worktime".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 15, color: Colors.black))
                              ],
                            ),
                            Image.asset(AppImageAssets.back2)
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 30, left: 30, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(()=>const Financial());
                        },
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF9F3BE)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(AppImageAssets.takemoney),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Dues".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 15, color: Colors.black))
                              ],
                            ),
                            Image.asset(AppImageAssets.back2)
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 30, left: 30, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => ConnectWithUS());
                        },
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF9F3BE)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(AppImageAssets.support),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Connect with us".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 15, color: Colors.black))
                              ],
                            ),
                            Image.asset(AppImageAssets.back2)
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, right: 30, left: 30, bottom: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const SettingPage());
                        },
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffF9F3BE)),
                                  width: 40,
                                  height: 40,
                                  child: Image.asset(AppImageAssets.setting),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text("Settings".tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 15, color: Colors.black))
                              ],
                            ),
                            Image.asset(AppImageAssets.back2)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )


















                  
              
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //top

              ,Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImageAssets.cover2),
                        fit: BoxFit.cover),
                  ),
                  height: MediaQuery.of(context).size.height*.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Padding(
                        padding:
                             EdgeInsets.only(top: MediaQuery.of(context).size.height*.02, right: MediaQuery.of(context).size.width*.02, left: MediaQuery.of(context).size.width*.02),
                        child: Row(
                          textDirection: TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("          "),
                            Text(
                              "More".tr,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: 18, color: Colors.black),
                            ),
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
                    ],
                  )),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//second

              Positioned(
                top: 94,
                right: 20,
                left: 20,
                child: InkWell(onTap:() {},
                  child: CircleAvatar(radius: 50,foregroundColor: Colors.white,backgroundColor:Colors.white,
                    
                  child: Image.asset(AppImageAssets.avatar),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
