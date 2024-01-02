
// ignore_for_file: file_names, must_be_immutable

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/adversmentpagecontrollers.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/advetisementpagemodel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/ontapadvertsment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Specailservices1 extends StatefulWidget {
   Specailorders myorders;
   Specailservices1({super.key,required this.myorders});

  @override
  State<Specailservices1> createState() => _Specailservices1State();
  AdvertsMentPagecontrollerimp controllers =Get.put(AdvertsMentPagecontrollerimp());
}
bool isfavourite = false;

class _Specailservices1State extends State<Specailservices1> {

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:() {
       setState(() {
            
            
                Get.to(() => OntapAdvertisementdetails(
                      YourAdvertsMent: widget.myorders,
                    ));

              
            });
                                              },
    
      child: Padding(
        padding: const EdgeInsets.only(left: 2,right:2, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          height: MediaQuery.of(context).size.height * .15,
          width: MediaQuery.of(context).size.width * .17,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Image.asset(
                    widget.myorders.image.toString(),
                      scale: 1,
                    ),
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [                     
                            Text(widget.myorders.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 14, color: Colors.black)),
                          ],
                        ),
                      ),
                     const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            widget.myorders.iconss1,
                            scale: 1.1,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(widget.myorders.jop,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontSize: 12, color: Colors.black)),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 18,
                          ),
                          Text(
                            widget.myorders.rates,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 15, color: Colors.yellow),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.02, right: MediaQuery.of(context).size.width*.02, top: MediaQuery.of(context).size.height*.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                        Container(
                            height: MediaQuery.of(context).size.height*.04,
                            width: MediaQuery.of(context).size.width*.17,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                   const Color(0xffF9F3BE)),
                            child:  Row(textDirection: TextDirection.ltr,mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text(widget.myorders.costs,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),const SizedBox(width: 10,),
                              const Icon(Icons.visibility)
                            ],)
                          ),
                        
                    
                     SizedBox(
                      height: MediaQuery.of(context).size.height*.0001,
                    ),
                   widget.myorders.boolcost
                        ?  SizedBox(height: MediaQuery.of(context).size.height*.04,
                            width: MediaQuery.of(context).size.width*.25,)
                        : Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 10, left: 10),
                            child: Container( height: 40,
                            width: MediaQuery.of(context).size.width*.23,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffD9D9D9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(20)
),
                                        height: 20,
                                        width: 20,
                                        child:
                                            Image.asset(AppImageAssets.coin)),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(widget.myorders.costs,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "ريال",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                              fontSize: 12,
                                              color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
