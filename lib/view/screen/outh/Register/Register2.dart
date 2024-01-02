
// ignore_for_file: file_names, avoid_print, unrelated_type_equality_checks

import 'dart:io';

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/core/function/validinput.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterController.dart';
import 'package:constructionprovider1/view/screen/outh/Register/RegisterModelResponse.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/Customfieldtype.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/customfieldcarer.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/customfieldcity.dart';
import 'package:constructionprovider1/view/screen/outh/Register/customfieldRegister/customfieldsecondbranch.dart';
import 'package:constructionprovider1/view/screen/outh/Register/veryfiy/veryfiy_signup_controller.dart';
import 'package:constructionprovider1/view/widget/customAnimation/CustomAnimationSignup2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SignUpscreen2 extends StatefulWidget {
  const SignUpscreen2({super.key});
  @override
  State<SignUpscreen2> createState() => _SignUpscreen2State();
}

signupControllerIMp controller =Get.put(signupControllerIMp());
VeryfiysignUPcontrollerimp controllers=Get.put(VeryfiysignUPcontrollerimp());

List <IdWithNameModel>kind=[IdWithNameModel(id: 1,name: "service provider"),IdWithNameModel(id: 2,name: "buildings materials provider")];
File ?selectimage ;
IdWithNameModel ? currentKind ;
bool load =true;
class _SignUpscreen2State extends State<SignUpscreen2> {

  @override 
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Form(key: controller.formstate2,
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                AppImageAssets.back,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          "image".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  selectimage !=null ?Image.file(selectimage!):
                  InkWell(onTap: () {
                    setState(() {
                  picimage(ImageSource.gallery);
            
                    });
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, top: 5, bottom: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .15,
                        width: double.infinity,
                        decoration:  BoxDecoration(borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                                image: AssetImage(AppImageAssets.borders))),
                        child: controller.imagescontroller !=null ?Image.file(controller.imagescontroller!,scale: 40,fit: BoxFit.cover,):
                         Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppImageAssets.uploadimage),
                             Text("Uplode_Image".tr, style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal),)],
                        ),
                      ),
                    ),
                  ),
              
              
              
                   Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      children: [
                        Text(
                          "Type".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
              
                   const CustomField1(),
              
                 Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20,top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Occupation".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
              
                        const CustomField2(),
              
               Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20,top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Subsection".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
              
                        const CustomField3(),
               Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20,top: 10),
                    child: Row(
                      children: [
                        Text(
                          "City".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
              
                        const CustomField4(),
            
            
            
                        Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20,top: 10,bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "address".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                       
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: TextFormField(validator:(val) {return validInput(val!, 4, 100, "text");},
                      textDirection: TextDirection.ltr,keyboardType:TextInputType.text,controller: controller.addresscontroller ,
                      decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color:  AppColors.grey)),
                hintText: 'address_here'.tr,
                focusColor: AppColors.grey,
                fillColor:  AppColors.grey,
                hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
                
                
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColors.grey)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color:  AppColors.grey)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color:  AppColors.grey, width: 6),
                    borderRadius: BorderRadius.circular(30))),
                    ),
              ),
              
              
              
              
               Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20,top: 10,bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          "Are_you".tr,
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
            
            
            
                   Column(mainAxisAlignment: MainAxisAlignment.start,children: [
            
                    ListTile(
                      title: Text(kind[0].name.toString(),style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),),
                      leading: Radio(activeColor: AppColors.colorsbutton,value: kind[0],groupValue: currentKind,onChanged: (value) {
                        setState(() {
                          currentKind=value;
                          controller.entity_typescontroller=currentKind!.id;
                        });
                      },),
                      
                    ),
                     ListTile(
                      title: Text(kind[1].name.toString(),style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),),
                      leading: Radio(activeColor: AppColors.colorsbutton,value: kind[1],groupValue: currentKind,onChanged: (value) {
                        setState(() {
                          currentKind=value;
                          controller.entity_typescontroller=currentKind!.id;
                          
                        });
                      },),
                      
                    )
            
                  ],)
                      
              
                  ,const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(child: CustomAnimationSignup2()),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.03, left: MediaQuery.of(context).size.width*.03, top: MediaQuery.of(context).size.height*.02,bottom: MediaQuery.of(context).size.height*.02),
                    child:
                    
                    
                      ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: AppColors.colorsbutton),child: 
                  controller.loadbuttons?Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.18,right: MediaQuery.of(context).size.width*.18,top: MediaQuery.of(context).size.height*.01,bottom: MediaQuery.of(context).size.height*.01,),
                    child: Text( "make_new_acc".tr,style: const TextStyle(fontSize: 16,color: Colors.black),),
                  ):Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.18,right: MediaQuery.of(context).size.width*.18,top: MediaQuery.of(context).size.height*.01,bottom: MediaQuery.of(context).size.height*.01,),
                    child: const Center(child:CircularProgressIndicator(color: Colors.black26,)
                    ),
                  ),onPressed: ()async
                  {  
                    setState(() {
                    controller.loadbuttons=false;
                  });
                   await controller.Register();
                     setState(() {
                    controller.loadbuttons=true;
                     }
                     );
                  }))])))));
                  
  
  }               
            




















    Future  picimage(ImageSource source)async {
      try {
     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
   if (image==null) return;
   setState(() {
        final selectimage=File(image.path);
        controller.imagescontroller =selectimage;

   });

        
      } on PlatformException  catch (e){
        Get.defaultDialog(content: Text("faild to pick image : $e"));
        
      }
  }





}
