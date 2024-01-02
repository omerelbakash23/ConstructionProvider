// ignore_for_file: file_names, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:flutter/material.dart';

class Customdownnotification extends StatefulWidget {
   const Customdownnotification({super.key});

  @override
  State<Customdownnotification> createState() => _CustomdownnotificationState();
}

class _CustomdownnotificationState extends State<Customdownnotification> {
bool isopen = false;
bool val =true;


  @override
  Widget build(BuildContext context) {
    return Column(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(onTap: (){
              setState(() {
                val=!val;
                isopen=!isopen;
              });
            },
              child: Container(height: MediaQuery.of(context).size.height*.08,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:val? const Color(0xffF6F6F6):const Color(0xffF9F3BE)),child: Row(children: [const SizedBox(width: 10,),
                Container(height: MediaQuery.of(context).size.height*.051,width: MediaQuery.of(context).size.width*.117,decoration: BoxDecoration(border: Border.all(color: val ?const Color(0xffFFEB3C):Colors.black),color: const Color(0xffFFEB3C),borderRadius: BorderRadius.circular(10)),child: Image.asset(AppImageAssets.nofication),),const SizedBox(width: 10,),
                const Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("هذا النص مثال علي الكلام المكتوب في...."),
                  ],
                )
              ],),),
            ),
        if (isopen)
           SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 2,right: 2,bottom: 0),
              child: ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: [
                     Container(decoration: BoxDecoration(borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),border: Border.all(color: const Color.fromARGB(255, 239, 233, 233))),
                          height: MediaQuery.of(context).size.height*.2,
                          width: double.infinity,
                          child: Padding(
                            padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                            child: InkWell(onTap: () {
                              setState(() {
                                isopen =false;
                              });
                            }, child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.02, right: MediaQuery.of(context).size.width*.02),
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl,
                                children: [const SizedBox(height: 10,),
                                  Text(" هذا النص مثال علي الكلام المكتوب في.هذا \n النص مثال علي الكلام المكتوب في \n .هذا النص مثال علي الكلام المكتوب في.\nهذا النص مثال علي الكلام المكتوب في....",style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(fontSize: 13, color: Colors.black)),
                            
                                ],
                              ),
                            )),
                          ))






                  ]),
            ),
          )
    ]);
  }
}
