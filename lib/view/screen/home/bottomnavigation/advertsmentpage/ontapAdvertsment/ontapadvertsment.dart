// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, non_constant_identifier_names, deprecated_member_use_from_same_package

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/advetisementpagemodel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/customAnimationadvertisment.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/editAdvetrsment.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/ontapadvetsmentcontroller.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/specailservicesOne.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OntapAdvertisementdetails extends StatefulWidget {
  Specailorders YourAdvertsMent ;

  OntapAdvertisementdetails({required this.YourAdvertsMent,super.key});

  @override
  State<OntapAdvertisementdetails> createState() => _OntapAdvertisementdetailsState();
}
bool vals=true;
bool loveinsideadverts1=false;
class _OntapAdvertisementdetailsState extends State<OntapAdvertisementdetails> {
  AdvertsMentdetailsPagecontrollerimp controllers =Get.put(AdvertsMentdetailsPagecontrollerimp());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
              
      Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////up 
            SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*.38,
        child: Stack(
        children: [
          PageView.builder(
              controller: controllers.pageControllers,
              onPageChanged: (value) => controllers.onpagechanges(value),
              scrollDirection: Axis.horizontal,
              itemCount: controllers.advertsmentbanarLists.length,
              itemBuilder: (context, index) {
             return Container(
                 decoration: BoxDecoration(borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)),
                     image: DecorationImage(
                         image: AssetImage(
                             controllers.advertsmentbanarLists[index]),
                         fit: BoxFit.cover)),
                 child: const Text(""));
              }),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   textDirection: TextDirection.ltr,
                   children: [
                     InkWell(onTap: () {
                      setState(() {
                       isfavourite=loveinsideadverts1;
                       loveinsideadverts1 =!isfavourite;

                      });
                     },
                       child: Container(
                         width: 35,
                         height: 35,
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey),
                             color:   loveinsideadverts1
                                 ? Colors.red
                                 : Colors.grey,
                             borderRadius: BorderRadius.circular(10)),
                         child: Image.asset(
                           AppImageAssets.loveimage,
                           color: Colors.white,
                         ),
                       ),
                     ),
                     Text(widget.YourAdvertsMent.name,
                         style: Theme.of(context)
                             .textTheme
                             .headline1!
                             .copyWith(fontSize: 20, color: Colors.white)),
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
                                 border: Border.all(color: Colors.white),
                                 borderRadius: BorderRadius.circular(10)),
                             child: Image.asset(
                               AppImageAssets.back,
                               color: Colors.white,
                             ),
                           )),
                     ),
                   ]),
             ),
             const Center(child: CustomAnimationadvertisment()),
              ],
            ),
          ),
        ],
        ),
      ),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//second

      
            Padding(
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.02,left: MediaQuery.of(context).size.width*.02,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                       widget.YourAdvertsMent.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 16, color: Colors.black),
                      ),
                       SizedBox(
                        width: MediaQuery.of(context).size.width*.02,
                      ),

                AnimatedToggleSwitch<bool>.dual(textBuilder:(value) =>vals? Center(child: Text("Enabled".tr,style: const TextStyle(color: Colors.white),)): Center(child: Text("Disabled".tr)) , 
                current: vals,
                first: false,
                second: true,
                spacing: 10.0,
                style:  ToggleStyle(backgroundColor: vals ? const Color(0xff46C83B):Colors.grey,
                  borderColor: vals ?const Color(0xff46C83B):Colors.grey
                  
                ),
                borderWidth: 4.0,
                height: 32,
                onChanged: (b) => setState(() => vals = b),
                styleBuilder: (b) =>
                    ToggleStyle(indicatorColor: b ? Colors.white : Colors.white),
              
              ),

                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color:vals?const Color(0xffF9F3BE):const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)),
                    height: MediaQuery.of(context).size.height*.04,
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.visibility),const SizedBox(width: 5,),
                         Text(widget.YourAdvertsMent.costs, style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13, color: Colors.black)),const SizedBox(width: 5,),  
                         Text("Views".tr, style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 13, color: Colors.black)),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
               Padding(
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.03,left: MediaQuery.of(context).size.width*.03,top: MediaQuery.of(context).size.height*.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [Text("the_details".tr, style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 15,color: Colors.black)), const Text("")],
              ),
            ),
          
            Padding(
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.03,left: MediaQuery.of(context).size.width*.03,top: 15),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*.1,
                decoration: BoxDecoration(
                    color: const Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  "هذا النص مثال علي الكلام المكتوب في هذه المنطقه ولا \n يمثل اي محتوي ,هذا النص مثال علي الكلام المكتوب في",
                  style: TextStyle(color: Color(0xff656565)),
                )),
              ),
            ),
     
           
                const SizedBox(height: 20,),
                 Padding(
                   padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.03,left: MediaQuery.of(context).size.width*.03,top: 15),
                   child: Container(width: MediaQuery.of(context).size.width*.35,height: 300,decoration: BoxDecoration(color: const Color(0xffffffff),border: Border.all(color: const Color.fromARGB(255, 240, 235, 235)),borderRadius: BorderRadius.circular(8)),
                   child: Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 15,left: 10,right: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                          
                          Row(
                            children: [
                              Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.Mainsection),
                        ), SizedBox(width: MediaQuery.of(context).size.width*.03,), Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text( "Main_section".tr ),
                         Text( widget.YourAdvertsMent.jop , style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black),),
                        ],),
                            ],
                          ),
                        
                            Row(
                            children: [
                              Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.Subsection),
                        ), SizedBox(width: MediaQuery.of(context).size.width*.03,), Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Text( "Subsection".tr ),
                         Text( "wood".tr , style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black),),
                        ],),
                            ],
                          )
                                         
                                         
                                         
                        ],),
                      ),
                   
                      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   ////////////////////////////// ///////////////////////
                       Padding(
                         padding: const EdgeInsets.only(top: 10,bottom: 15,left: 10,right: 10),
                         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                              Row(
                              children: [
                                Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.Advertisementnumber),
                          ),  SizedBox(width: MediaQuery.of(context).size.width*.03,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Text( "Advertisement_number".tr ),
                           Text( "42", style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black), ),
                          ],),
                              ],
                            ),
                                             
                              Row(
                              children: [
                                Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.Security),
                                                      ),  SizedBox(width: MediaQuery.of(context).size.width*.03,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                                        Text( "Security".tr ),
                                                       Text( "5 months".tr , style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black),),
                                                      ],),
                              ],
                                                        )
                                             ],),
                       ),
                   
                   
                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   //////////////////////////////
                   
                       Padding(
                         padding: const EdgeInsets.only(top: 10,bottom: 15,left: 10,right: 10),
                         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                              Row(mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.paymentmethods),
                          ),  SizedBox(width: MediaQuery.of(context).size.width*.03,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Text( "payment_methods".tr ),
                           Text( "Cash - bank transfer".tr, style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black),),
                          ],),
                              ],
                            ),
                                             
                              Row(
                              children: [
                                Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.Installment),
                                                      ),  SizedBox(width: MediaQuery.of(context).size.width*.03,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                                        Text( "Installment".tr ),
                                                       Text( "5 months".tr , style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black),),
                                                      ],),
                              ],
                                                        )
                         ],),
                       ),
                   
                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   //////////////////////////////
                       Padding(
                         padding: const EdgeInsets.only(top: 10,bottom: 15,left: 10,right: 10),
                         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                              Row(
                              children: [
                                Container(width: 40,height: 40,decoration: BoxDecoration(color: const Color(0xffF9F3BE),borderRadius: BorderRadius.circular(8)),child: Image.asset(AppImageAssets.Timetorespondtoinquiries),
                          ),  SizedBox(width: MediaQuery.of(context).size.width*.03,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                            Text( "Time to respond to inquiries".tr ),
                           Text( "8 hours".tr , style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(fontSize: 13, color: Colors.black),),
                          ],),
                              ],
                            ),
                                             
                             
                         ],),
                       ),
                   
                     ],),
                   ),),
                 ),
                const SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: ElevatedButton(style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                    Get.to(()=>const Editadvertsment());
                   }, child: Padding(
                     padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.01,bottom: MediaQuery.of(context).size.height*.01),
                     child: Row(mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.ltr,children: [
                      Text("Edit the advertsMent".tr,style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(fontSize: 16, color: Colors.black)),const SizedBox(width: 20,),
                     ],),
                   )),
                 )




          ],
        ),
      ),


     
    ])));
  }
}
