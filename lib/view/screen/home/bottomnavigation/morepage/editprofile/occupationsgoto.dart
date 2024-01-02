// ignore_for_file: file_names, avoid_unnecessary_containers, must_be_immutable, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/editprofile/Occupationpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customdown2 extends StatefulWidget {
   const Customdown2({super.key});

  @override
  State<Customdown2> createState() => _Customdown2State();
}

class _Customdown2State extends State<Customdown2> {
  @override
  Widget build(BuildContext context) {
    return   InkWell(
          onTap: () {
            setState(() {
              Get.to(()=>const Occupation());
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
            child: Container(
              height: MediaQuery.of(context).size.height*.05,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:   BorderRadius.circular(20),border: Border.all(color:const Color.fromARGB(47, 158, 158, 158))),
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text("المهنه",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  const Icon(Icons.keyboard_arrow_left,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ),
        );

  }
}