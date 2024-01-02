import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massageModel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/profilemassage.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/continuesorders/receiptpagecompletly.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/dilogs/dialogcancelorder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpenContinueorders extends StatelessWidget {
  const OpenContinueorders({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
            child: Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  textDirection: TextDirection.ltr,
                                  children: [
                    const Text("                      "),
                    Text("Requests".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: InkWell(
                          onTap: () {
                            Get.back();
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
                    ),
                                  ],
                                ),
                  )
                ,
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                        height: MediaQuery.of(context).size.height*.79,
                        decoration: BoxDecoration(
                            color:  const Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02,top: MediaQuery.of(context).size.height*.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(AppImageAssets.mans,scale: 1.2),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10, left: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("names".tr,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 16,
                                                          color: Colors.black)),
                                              const SizedBox(
                                                width: 50,
                                              ),
                                              Text("5-5-2022",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontSize: 12,
                                                          color: const Color(0xff656565))),const SizedBox(width: 5,),
                                                        Text("Tuesday".tr,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    fontSize: 12,
                                                    color: const Color(0xff656565))),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10, left: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text("5:50 Evening".tr,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(fontWeight: FontWeight.normal,
                                                              fontSize: 15,
                                                              color: Colors.black)),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Image.asset(AppImageAssets.manclock,scale: .8,),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 35,
                                              ),
                                              Container(
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color.fromARGB(95, 158, 158, 158),
                                                    borderRadius:
                                                        BorderRadius.circular(20)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Row(
                                                    children: [
                                                      Image.asset(
                                                        AppImageAssets.Advertisementnumber,
                                                        scale: 1.7,
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text("Request No.42".tr,
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .displayLarge!
                                                              .copyWith(
                                                                  fontSize: 12,
                                                                  color:
                                                                      const Color(0xff656565))),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(right: 20, left: 20,top: 10),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width*.53,
                                              height: 30,
                                              decoration:  BoxDecoration(borderRadius:BorderRadius.circular(10),
                                                  color: const Color.fromARGB(98, 255, 235, 60)),
                                              child:  Center(child: Text("Air conditioning maintenance".tr)),
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                                , Padding(
                                  padding: const EdgeInsets.only(right: 20,top: 10,left: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("address".tr,style: Theme.of(context)
                                                              .textTheme
                                                              .displayLarge!
                                                              .copyWith(
                                                                  fontSize: 16,
                                                                  color: Colors.black)),
                                    ],
                                  ),
                                )
                                       ,Padding(
                           padding: const EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 5),
                           child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                            const Icon(Icons.location_on,color: AppColors.colorsbutton,),const SizedBox(width: 10,),
                            Text("مكه المكرمة, شارع 80 بناية 10 الطابق 7",style: Theme.of(context)
                                                                .textTheme
                                                                .displayLarge!
                                                                .copyWith(fontWeight: FontWeight.normal,
                                                                    fontSize: 16,
                                                                    color: Colors.black))
                           ],),
                                       )
                          ,
                            Padding(
                                  padding: const EdgeInsets.only(right: 20,top: 20,left: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("details".tr,style: Theme.of(context)
                                                              .textTheme
                                                              .displayLarge!
                                                              .copyWith(
                                                                  fontSize: 16,
                                                                  color: Colors.black)),
                                    ],
                                  ),
                                )
                             ,Padding(
                               padding: const EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 15),
                               child: Container(decoration: BoxDecoration(color: const Color(0xffffffff),borderRadius: BorderRadius.circular(10)),
                                width: double.infinity,height: MediaQuery.of(context).size.height*.12,child: const Center(child: Text(textAlign:TextAlign.center,"هذا النص مثال علي الكلام المكتوب في هذه المنطقه\n ولا يمثل اي محتويي حقيقي , هذا النص مثال علي \n  المكتوب في هذه المنطقة ولا يمثل اي محتوي")),), ),
                               Padding(
                                  padding: const EdgeInsets.only(right: 20,top: 20,left: 20,bottom: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Contact number".tr,style: Theme.of(context)
                                                              .textTheme
                                                              .displayLarge!
                                                              .copyWith(
                                                                  fontSize: 16,
                                                                  color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Container(width: double.infinity,height: 40,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),child: const Padding(
                                  padding: EdgeInsets.only(right: 10,left: 10),
                                  child: Row(children: [Icon(Icons.phone),SizedBox(width: 10,),
                                    Text("01256456855")
                                  ],),
                                ),),
                             SizedBox(height: MediaQuery.of(context).size.height*.05,),
                               
                              
                               Row(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.center,
                                 children: [ ElevatedButton(style:ElevatedButton.styleFrom(side: const BorderSide(color: Colors.red,width: 1.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:Colors.white),
                                                   onPressed: (){Get.defaultDialog(title: "",content: const DialogCancledOrder() );},
                                                    child: Padding(
                                                     padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.01,left:  MediaQuery.of(context).size.width*.01,top: 10,bottom: 10),
                                                     child: Text("Cancelling order".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(
                                                                        fontSize: 16,
                                                                        color: Colors.red)),),
                                                   ),const SizedBox(width:15),
                                   ElevatedButton(style:ElevatedButton.styleFrom(side: const BorderSide(color: Color(0xff46C83B),width: 1.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor:const  Color(0xffF6F6F6),),
                                                   onPressed: (){
                                                    Get.to(()=>const receiptpagecompletly());
                                                   },
                                                    child: Padding(
                                                     padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.01,left:  MediaQuery.of(context).size.width*.01,top: 10,bottom: 10),
                                                     child: Text("Request completed".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(
                                                                        fontSize: 16,
                                                                        color: const Color(0xff46C83B))),),
                                                   )
                                   
                                                  
                                     ],),



                                      Padding(
                                     padding:  EdgeInsets.only(right: 5,left: 5,top: MediaQuery.of(context).size.height*.02),
                                     child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),backgroundColor: AppColors.colorsbutton),onPressed: (){Get.to(()=>ProfileMassage(detailsmassageprofile:MassageScreen[0] ,));
                                     }, child: Padding(
                                       padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.23,left:  MediaQuery.of(context).size.width*.23,top: 10,bottom: 10),
                                       child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Image.asset(AppImageAssets.massage,color: Colors.black,),const SizedBox(width: 5,)
                                       ,Text("conversation".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(
                                                                        fontSize: 16,
                                                                        color: Colors.black))],),
                                     ))
                            
                                 ],
                               )
                              
                              
            )],
                          ),
                        )),
                ),
              ],
            ),
          ),),
    );
  }
}
