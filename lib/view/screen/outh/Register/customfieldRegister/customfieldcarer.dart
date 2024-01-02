// ignore_for_file: file_names, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:constructionprovider1/view/screen/outh/Register/RegisterModelResponse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomField2 extends StatefulWidget {
   const CustomField2({super.key});

  @override
  State<CustomField2> createState() => _CustomField2State();
}
  int? category_idcontroller;


class _CustomField2State extends State<CustomField2> {
bool isopen = false;
bool langs =false;
IdWithNameModel ? selectedsecondbranch ;
List <IdWithNameModel>secondbranchlist=[
  IdWithNameModel(id:1,name: "محار"),
  IdWithNameModel(id:2,name: "سباك"),
   IdWithNameModel(id:3,name: "نجار "),
  IdWithNameModel(id:4,name: "نقاش"),

  ];


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
                      Text("${selectedsecondbranch?.name ?? "Select_section".tr}",
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
                child: ListView.builder(itemCount:secondbranchlist.length ,
                    primary: true,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => 
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(()  {
                                  isopen =false;
                                 selectedsecondbranch=secondbranchlist[index];
                                  category_idcontroller=secondbranchlist[index].id;
                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text(secondbranchlist[index].name!,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            )),
                    ),
              ),
            ),
          )
    ]);
  }
}
