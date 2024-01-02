// ignore_for_file: file_names, avoid_unnecessary_containers


 // ignore_for_file: non_constant_identifier_names

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';

class Customdownlequation extends StatefulWidget {
  const Customdownlequation({super.key});

  @override
  State<Customdownlequation> createState() => _CustomdownlequationState();
}

class _CustomdownlequationState extends State<Customdownlequation> {
  bool isopen = false;
bool langs =false;
String KindName="اختر المدينة";
String text1="جميع المدن ";
String text2="مدينة";
String text3="مدينة";
String text4="مدينة";
bool checkcare1 =false;
bool checkcare2 =false;
bool checkcare3 =false;
bool checkcare4 =false; 




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(textDirection: TextDirection.rtl,mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isopen = !isopen;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                height: MediaQuery.of(context).size.height*.06,
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
                        // ignore: unnecessary_brace_in_string_interps, unnecessary_string_interpolations
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
                              height: MediaQuery.of(context).size.height*.08,
                              width: double.infinity,
                              child: Padding(
                                padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                    children: [
                                      Text(text1,style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13, color: Colors.black)), Checkbox(value: checkcare1,activeColor: AppColors.colorsbutton,onChanged: (val){setState(() {
                                          checkcare1=val!;
                                          isopen =false;
                                          KindName=text1;
                                          checkcare2=false;
                                          checkcare3=false;
                                          checkcare4=false;
      
                                        });})
                                                              
                                    ],
                                  ),
                                ),
                              ))
      
      
      
      
                              ,
                                     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                              height:  MediaQuery.of(context).size.height*.08,
                              width: double.infinity,
                              child: Padding(
                                padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                    children: [
                                      Text(text2,style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13, color: Colors.black)),Checkbox(focusColor: AppColors.colorsbutton,value: checkcare2,activeColor: AppColors.colorsbutton,onChanged: (val){setState(() {
                                          checkcare2=val!;
                                           isopen =false;
                                           KindName=text2;
                                           checkcare1=false;
                                          checkcare3=false;
                                          checkcare4=false;
      
      
                                        });})
                                                              
                                                              
                                    ],
                                  ),
                                ),
                              ))
      
      
      
      ,
      
         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                              height: MediaQuery.of(context).size.height*.08,
                              width: double.infinity,
                              child: Padding(
                                padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                    children: [
                                      Text(text3,style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13, color: Colors.black)),Checkbox(value: checkcare3,activeColor: AppColors.colorsbutton,onChanged: (val){setState(() {
                                          checkcare3=val!;
                                          isopen =false;                 
                                          KindName=text3;
                                          checkcare2=false;
                                          checkcare1=false;
                                          checkcare4=false;
      
      
                                        });})
                                                              
                                                              
                                    ],
                                  ),
                                ),
                              )),
      
                                     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                              height:  MediaQuery.of(context).size.height*.08,
                              width: double.infinity,
                              child: Padding(
                                padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                    children: [
                                      Text(text4,style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(fontSize: 13, color: Colors.black)),Checkbox(value: checkcare4,activeColor: AppColors.colorsbutton,onChanged: (val){setState(() {
                                          checkcare4=val!;
                                           isopen =false;
                                           KindName=text4;
                                          checkcare2=false;
                                          checkcare3=false;
                                          checkcare1=false;
      
      
                                        });})
                                                              
                                                              
                                    ],
                                  ),
                                ),
                              ))
      
                      ]),
                ),
              ),
            )
      ]),
    );
  }
}
