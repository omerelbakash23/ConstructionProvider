// ignore_for_file: deprecated_member_use, must_be_immutable, file_names, avoid_print, use_build_context_synchronously, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/veryfiy_signup_controller.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/veryfiycode_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Peldgedialog extends StatefulWidget {
     const Peldgedialog({super.key});

  @override
  State<Peldgedialog> createState() => _PeldgedialogState();
}
signupControllerIMp controller =Get.put(signupControllerIMp());
VeryfiysignUPcontrollerimp controllers=Get.put(VeryfiysignUPcontrollerimp());

class _PeldgedialogState extends State<Peldgedialog> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.55,
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text(""),
                Center(
                  child: Text("pledges".tr,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                ),
                InkWell(onTap: () {
                  Get.back();
                  setState(() {
                  controller.loadbutton=true;
                  });
                },child: Container(height: 20,width: 20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black)),child: const Center(child: Icon(Icons.close,size: 19,)))),
              ],
            ),SizedBox(height: MediaQuery.of(context).size.height*.08),
             Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("هذا النص مثال علي الكلام المكتوب في هذه المنطقه ولا\n يمثل اي محتوي ,هذا النص مثال علي الكلام المكتوب في \nهذه المنطقه ولا يمثل اي محتوي , هذا النص مثال علي\nالكلام المكتوب في هذه المنطقه .",   style: Theme.of(context).textTheme.headline1!.copyWith(
                   fontWeight: FontWeight.normal,
                   fontSize: 12,
                   color: Colors.black)), SizedBox(height: MediaQuery.of(context).size.height*.05,),
                   Text("هذا النص مثال علي الكلام المكتوب في هذه المنطقه ولا\n يمثل اي محتوي ,هذا النص مثال علي الكلام المكتوب في \nهذه المنطقه ولا يمثل اي محتوي , هذا النص مثال علي\nالكلام المكتوب في هذه المنطقه .",   style: Theme.of(context).textTheme.headline1!.copyWith(
                   fontWeight: FontWeight.normal,
                   fontSize: 12,
                   color: Colors.black)), SizedBox(height: MediaQuery.of(context).size.height*.05,),
               ],
             ),

            
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: AppColors.colorsbutton),child: 
                  controller.loadbutton?Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.18,right: MediaQuery.of(context).size.width*.18,top: MediaQuery.of(context).size.height*.01,bottom: MediaQuery.of(context).size.height*.01,),
                    child: Text("ok".tr,style: const TextStyle(fontSize: 16,color: Colors.black),),
                  ):Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.18,right: MediaQuery.of(context).size.width*.18,top: MediaQuery.of(context).size.height*.01,bottom: MediaQuery.of(context).size.height*.01,),
                    child: const Center(child:CircularProgressIndicator(color: Colors.black26,)
                    ),
                  ),onPressed: () async
                  {  setState(() {
                    controller.loadbutton=false;
                  });
                     Get.to(()=>const VeryFiyCodesignup());
                     ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("OTP has been sent ")));
                  },)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
