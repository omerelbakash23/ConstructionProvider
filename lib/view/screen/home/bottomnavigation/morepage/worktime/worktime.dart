import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/morepage/worktime/worktimeinside.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Worktime extends StatefulWidget {
  const Worktime({super.key});

  @override
  State<Worktime> createState() => _WorktimeState();
}
bool val =true;
class _WorktimeState extends State<Worktime> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("          "),
                Text(
                  "Worktime".tr,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 18, color: Colors.black),
                ),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(144, 158, 158, 158)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        AppImageAssets.back,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),const SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("My condition".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(fontWeight: FontWeight.bold,fontSize: 14, color: Colors.black)),
                  ],
                ),
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   val? Text("available now".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(fontWeight: FontWeight.normal,fontSize: 14, color:val ? const Color(0xff46C83B): Colors.grey)):              
                     Text("Not available now".tr,style: Theme.of(context)
                                                                    .textTheme
                                                                    .displayLarge!
                                                                    .copyWith(fontWeight: FontWeight.normal,fontSize: 14, color:val ? const Color(0xff46C83B): Colors.grey)),
                 ],
               )


              ],),



AnimatedToggleSwitch<bool>.dual(
                current: val,
                first: false,
                second: true,
                spacing: 1.0,
                style:  ToggleStyle(backgroundColor: val ? const Color(0xff46C83B):Colors.grey,
                  borderColor: val ?const Color(0xff46C83B):Colors.grey
                  
                ),
                borderWidth: 4.0,
                height: 30,
                onChanged: (b) => setState(() => val = b),
                styleBuilder: (b) =>
                    ToggleStyle(indicatorColor: b ? Colors.white : Colors.white),
              
              ),
            ],),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20,left: 20,top: MediaQuery.of(context).size.height*.02),
            child: Row(children: [
              Text("Worktime".tr, style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 14,
                                                color: Colors.black,fontWeight: FontWeight.bold))
            ],),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:10,left: 20,right: 20),
            child: Container(
                                      width: double.infinity,
                                      height: MediaQuery.of(context).size.height*.13,
                                      decoration: BoxDecoration(
                                         
                                          color: const Color(0xffF6F6F6),
                                          borderRadius: BorderRadius.circular(20)),
                                      child: Center(
                                          child: Text(textAlign:TextAlign.center,
                                        "You haven't added your work times yet".tr,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontSize: 16,
                                                color: const Color(0xff6D6D6D)),
                                      )),
                                    ),
          ),



 Padding(
            padding:  EdgeInsets.only(right:  MediaQuery.of(context).size.width*.09, left:  MediaQuery.of(context).size.width*.09, bottom: 20,top: MediaQuery.of(context).size.height*.15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.colorsbutton,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                 Get.to(()=> const Worktimeinside());                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Add your working hours".tr,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 14, color: Colors.black),
                  ),
                )),
          )




           
      
      ]),
    ));
  }
}
