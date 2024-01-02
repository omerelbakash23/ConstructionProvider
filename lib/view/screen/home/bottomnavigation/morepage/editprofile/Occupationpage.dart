// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/branchcarer.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/deletDialog.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/maincarere.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/saveCarerdialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Occupation extends StatefulWidget {
  const Occupation({super.key});

  @override
  State<Occupation> createState() => _OccupationState();
}
class _OccupationState extends State<Occupation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,body: ListView(children: [
        Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20,),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       
    const Text("          "),
                       Text("المهنة",style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 18, color: Colors.black),),
    
                      InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                AppImageAssets.back,
                                color: Colors.black,
                              ),
                            )),
    
                    ],
                  ),
                ),const SizedBox(height: 30,),


                const Padding(
                       padding: EdgeInsets.only(right: 30,left: 30,bottom: 10),
                       child: Text("القسم الرئيسي (المهنة)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:13),),
                     ),
                 const CutomCarer(),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*.3,
                        height: MediaQuery.of(context).size.height*.43,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(41, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(20),
                            color:  const Color(0xffF9F3BE)),
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
                                     const SizedBox(),Text(
                                         "نجار",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 16,
                                                color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border:
                                                  Border.all(color: Colors.red)),
                                          child: InkWell(
                                            onTap: () {
                                              Get.defaultDialog(title: "",content: const DeletDialog());
                                            },
                                            child:
                                                Image.asset(AppImageAssets.delet),
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
                                        "القسم الفرعي",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.normal),
                                      ),
                                      const Text("")
                                    ],
                                  ),
                                 const Branchcarer(),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                  
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  
                                
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                         "السجل التجاري",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black),
                                      ),
                                      const Text("")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(
                                    children: [
                                      InkWell(
                                          onTap: () {},
                                          child: Center(
                                              child: Image.asset(
                                            AppImageAssets.careres,
                                            fit: BoxFit.cover,
                                          ))),
                                   Positioned(left: MediaQuery.of(context).size.width*.09,top: 10,child: Container(height: MediaQuery.of(context).size.height*.033,width: MediaQuery.of(context).size.width*.078,decoration:BoxDecoration(color: AppColors.colorsbutton,borderRadius: BorderRadius.circular(8),),child: const Icon(Icons.edit),)),

                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )


                    , Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*.3,
                        height: MediaQuery.of(context).size.height*.47,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(41, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(20),
                            color:  const Color(0xffF9F3BE)),
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
                                     const SizedBox(),Text(
                                         "سباك",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 16,
                                                color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border:
                                                  Border.all(color: Colors.red)),
                                          child: InkWell(
                                            onTap: () {
                                            Get.defaultDialog(title: "",content: const DeletDialog());
                                            },
                                            child:
                                                Image.asset(AppImageAssets.delet),
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
                                        "القسم الفرعي",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.normal),
                                      ),
                                      const Text("")
                                    ],
                                  ),
                                 const Branchcarer(),

                                  
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  
                                
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                         "السجل التجاري",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black),
                                      ),
                                      const Text("")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(alignment: Alignment.center,
                                    children: [
                                       Column(
                                         children: [
                                           Image.asset(AppImageAssets.uploadimage),
                                           const Text("ارفع الصوره من هنا")
                                         ],
                                       ),
                                      Image.asset(
                                      AppImageAssets.borders,
                                      fit: BoxFit.cover,
                                        ),
                                      
                                  
                                     

                                    ],
                                  )
                                ],
                              ),
                               SizedBox(height: MediaQuery.of(context).size.height*.04,),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                                    Get.defaultDialog(title: "",content: const SavecarerrDialog());
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.1,left: MediaQuery.of(context).size.width*.1,top: 10,bottom: 10),
                                    child: const Text("حفظ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )),const SizedBox(width: 15,),
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.black),backgroundColor: const Color(0xffF9F3BE)),onPressed: (){}, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.1,left: MediaQuery.of(context).size.width*.1,top: 10,bottom: 10),
                                    child: const Text("إلغاء",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              )
                            ],
                          ),
                        ),
                      ),
                    )











    ]))
         ;
  }
}
              
