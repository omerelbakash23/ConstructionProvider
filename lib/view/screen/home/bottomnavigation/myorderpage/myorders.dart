// ignore_for_file: file_names, deprecated_member_use, must_be_immutable, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottombarController.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/custominmationorder.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorders/dilogs/dialogmyorder.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorderscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});
  @override
  State<OrdersPage> createState() => _OrdersPageState();
}
  OrderpageControllerimp controller = Get.put(OrderpageControllerimp());
    BottomnavController controllers =Get.put(BottomnavController());



class _OrdersPageState extends State<OrdersPage> {

  @override
  Widget build(BuildContext context) {
// ignore: prefer_const_constructors
    return SafeArea(
        child: Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 5,left: 5),
        child: SizedBox(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.ltr,
                  children: [
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.defaultDialog(
                                  title: "",
                                  content: const DialogmyOrder());
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(AppImageAssets.Liquidation),
                            )),
                      
                      ],  
                    ),
                    Text("Requests".tr,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 20, color: Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: InkWell(
                          onTap: () {
                      setState(() {
                                controllers.Animatetotap(controllers.currentIndexsHome-1);
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
                    ),
                  ],
                ),
              ),const SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.only(bottom: 15),
               child: Container(color: Colors.white,width:MediaQuery.of(context).size.width*.1,height: MediaQuery.of(context).size.height*.1,
                 child:  Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                   Container(color: Colors.white,
                       height: MediaQuery.of(context).size.height*.08,
                       width: double.infinity,
                       child: ListView.builder(
                           physics: const BouncingScrollPhysics(),
                           itemCount: controller.pagesorders.length,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (context, index) => Column(children: [
                                 InkWell(
                                     onTap: () {
                                       setState(() {
                                         controller.currentIndes = index;
                                         controller.currentpage = index;
                     
                     
                                         
                                       });
                                     },
                                     child: AnimatedContainer(
                                       duration: const Duration(milliseconds: 700),
                                       margin: const EdgeInsets.all(5),
                                       width: MediaQuery.of(context).size.width*.25,
                                       height: MediaQuery.of(context).size.height*.06,
                                       decoration: const BoxDecoration(),
                                       child: Center(
                                           child: Padding(
                                             padding: const EdgeInsets.all(8.0),
                                             child: Text(
                                              controller.pagesordersnames[index]
                                               .toString(),
                                                                                    style: TextStyle(
                                               color:
                                                   controller.currentIndes == index
                                                       ? Colors.black
                                                       : Colors.grey),
                                                                                  ),
                                           )),
                                     )),
                                 Visibility(
                                     visible: controller.currentIndes == index,
                                     child: const CustomAnimationOrder()),
                               ]
                               )
                               )
                               ),
               
                               
                              
                
     
                 ])),
             ),
                 Container(color: const Color.fromARGB(255, 255, 255, 255),width: double.infinity,height:MediaQuery.of(context).size.height*.64,child:
                   controller.pagesorders[controller.currentIndes]
                            
                        
                   
                              ),
            ],
          ),
        ),
      ),
    ));
  }
}


