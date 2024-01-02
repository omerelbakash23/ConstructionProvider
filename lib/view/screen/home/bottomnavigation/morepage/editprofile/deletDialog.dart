// ignore_for_file: file_names

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeletDialog extends StatelessWidget {
  const DeletDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height:  MediaQuery.of(context).size.height*.40,width: MediaQuery.of(context).size.width,
        child: ListView(children: [
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
            Padding(
                        padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                        child: Row(
                          textDirection: TextDirection.ltr,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                             
                          
                            
                             Text("حذف المهنة",style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(fontSize: 18, color: Colors.black),),
                                 const Text("   ")
                          ],
                        ),
                  ),   SizedBox(height: MediaQuery.of(context).size.height*.1,),
        
        
                                                   Text("هل انت متأكد من حذف المهنة ؟",style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .copyWith(fontSize: 14, color: Colors.black,fontWeight: FontWeight.normal),),
                                         

                                     
                                     const SizedBox(height: 20,),
                                     
                                     
                                     
                                              

                  const SizedBox(height: 20,),
                   Padding(
                                padding: const EdgeInsets.only(right: 20,left: 20,top: 40),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor: AppColors.colorsbutton),onPressed: (){
                                                                      Get.back();

                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left:  MediaQuery.of(context).size.width*.05,top: 10,bottom: 10),
                                    child: const Text("نعم حذف",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )),const SizedBox(width: 15,),
                                  ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.black),backgroundColor:Colors.white),onPressed: (){
                                    Get.back();
                                  }, child:  Padding(
                                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*.05,left:  MediaQuery.of(context).size.width*.05,top: 10,bottom: 10),
                                    child: const Text("رجوع",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ))
                              
                                ],),
                              )

                  
                        ],
                      ),
                    ],),
      ),
    );
  }
}