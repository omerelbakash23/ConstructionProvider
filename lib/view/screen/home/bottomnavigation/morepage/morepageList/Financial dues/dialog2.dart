// ignore_for_file: deprecated_member_use, prefer_const_constructors, deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogfinancial2 extends StatefulWidget {
  const Dialogfinancial2({super.key});

  @override
  State<Dialogfinancial2> createState() => _Dialogfinancial2State();
}

class _Dialogfinancial2State extends State<Dialogfinancial2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(width: MediaQuery.of(context).size.width*.9,height: MediaQuery.of(context).size.height*.40,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                Center(
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  Text("Commission payment".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 20, color: Colors.black))
                                  ],),
                                ), 
                                 

                                 
                             Center(child: Text(textAlign:TextAlign.center,"Your transfer will be reviewed as soon as possible".tr,style: Theme.of(context)
                                                        .textTheme
                                                        .headline1!
                                                        .copyWith(fontSize: 14, color: Colors.black))),
                             
                              Padding(
                                padding:  EdgeInsets.only(right: 20,left: 20,top: MediaQuery.of(context).size.height*.04,bottom: 10),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side:  BorderSide(color: Colors.black),backgroundColor:Colors.white),onPressed: (){
                                    Get.back();
                                    Get.closeAllSnackbars();
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.2,left:  MediaQuery.of(context).size.width*.2,top: 10,bottom: 10),
                                    child: Text("Back".tr,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              )








                                                  
      
      
                              ],),
      ),
    );
  }
}



