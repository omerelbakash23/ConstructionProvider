// ignore_for_file: avoid_unnecessary_containers

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/worktime/editworktime.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Givetime extends StatefulWidget {
   const Givetime({super.key});

  @override
  State<Givetime> createState() => _GivetimeState();
}

  TimeOfDay timeofdays1 =const TimeOfDay(hour: 00, minute: 00);
    TimeOfDay timeofdays2 =const TimeOfDay(hour: 00, minute: 00);


bool val =true;
class _GivetimeState extends State<Givetime> {
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
         Row(children: [
        Text(weekday[1],  style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 16, color: Colors.black),)
      ],),
              
            
     Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.02,bottom: MediaQuery.of(context).size.height*.02),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
         InkWell(onTap: (){                setState(() {
         showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value){
          setState(() {
            timeofdays1=value!;
            val=false;
          });
         } );
          });
            },
           child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(children: [
              Stack(alignment: Alignment.center,children: [
                Image.asset(AppImageAssets.watch1),
                 Image.asset(AppImageAssets.watch2),
              ],),
              SizedBox(width:  MediaQuery.of(context).size.width*.02,),
           val?Text("متاح من ",  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)):Text(timeofdays1.format(context).toString()),
               SizedBox(width: MediaQuery.of(context).size.width*.06,),
               const Icon(Icons.keyboard_arrow_down)
           
             ],),
           ),),
         ),SizedBox(width: MediaQuery.of(context).size.width*.03,),
          InkWell(onTap: (){                setState(() {
         showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
          setState(() {
            timeofdays2=value!;
          });
         });
          });
            },
           child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xffF6F6F6)),child: Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(children: [
              Stack(alignment: Alignment.center,children: [
                Image.asset(AppImageAssets.watch1),
                 Image.asset(AppImageAssets.watch2),
              ],),
              SizedBox(width:  MediaQuery.of(context).size.width*.02,),
              val?Text("متاح الي ",  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 16, color: const Color(0xff6D6D6D),fontWeight: FontWeight.normal)):Text(timeofdays2.format(context).toString()),
               SizedBox(width: MediaQuery.of(context).size.width*.06,),
               const Icon(Icons.keyboard_arrow_down)
           
             ],),
           ),),
         )
        ],),
      )
      ],);
  }
}