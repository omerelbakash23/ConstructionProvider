// ignore_for_file: file_names, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class Customdown1 extends StatefulWidget {
   const Customdown1({super.key});

  @override
  State<Customdown1> createState() => _Customdown1State();
}

class _Customdown1State extends State<Customdown1> {
bool isopen = false;
bool langs =false;
String KindName="اختر الخدمة";
String text1="مؤسسة";
String text2="حر";
String text3="علي الطاير";


  @override
  Widget build(BuildContext context) {
    return Column(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isopen = !isopen;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Container(
              height: MediaQuery.of(context).size.height*.05,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: isopen ? const BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)):BorderRadius.circular(20),border: Border.all(color:const Color.fromARGB(47, 158, 158, 158))),
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      // ignore: unnecessary_brace_in_string_interps
                      Text("${KindName}",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 12, color: Colors.grey,fontWeight: FontWeight.bold)),
                      ],
                    ),
                   isopen? const Icon(Icons.keyboard_arrow_up,color: Colors.grey,):const Icon(Icons.keyboard_arrow_down,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ),
        ),
        if (isopen)
           SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 0),
              child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),border: Border.all(color: const Color.fromARGB(48, 158, 158, 158))),
                child: ListView(
                    primary: true,
                    shrinkWrap: true,
                    children: [
                       Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                                  isopen =false;
                                  KindName=text1;
                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text(text1,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            ))




                            ,
                                   Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                                  isopen =false;
                                   KindName=text2;

                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text(text2
                                    ,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            ))



,

       Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                                  isopen =false;                 
                                  KindName=text3;


                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text(text3,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            ))

                    ]),
              ),
            ),
          )
    ]);
  }
}
