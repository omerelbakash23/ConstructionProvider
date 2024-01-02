// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CustomDownServicesrequest extends StatefulWidget {
  const CustomDownServicesrequest({super.key});

  @override
  State<CustomDownServicesrequest> createState() =>
      _CustomDownServicesrequestState();
}

Map publicSettingname = {"الخدمات": "" ,"الخدمات1":"", "الخدمات2":""};
bool isopen = false;
bool langs =false;


class _CustomDownServicesrequestState
    extends State<CustomDownServicesrequest> {
  @override
  Widget build(BuildContext context) {
    return Column(textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isopen = !isopen;
            });
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: isopen ? const BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)):BorderRadius.circular(20),border: Border.all(color:const Color.fromARGB(47, 158, 158, 158))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Row(textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                   
                      Text("اختر الخدمات من هنا",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 15,fontWeight: FontWeight.normal, color: Colors.grey)),
                    ],
                  ),
                 isopen? const Icon(Icons.keyboard_arrow_up,color: Colors.grey,):const Icon(Icons.keyboard_arrow_down,color: Colors.grey)
                ],
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
                    children: publicSettingname.keys
                        .map((e) => Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: const Color.fromARGB(16, 158, 158, 158))),
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding:  const EdgeInsets.only(right: 10,left: 10,bottom:20 ,top: 20),
                              child: InkWell(onTap: () {
                                setState(() {
                              
                              //  Widget values=publicSettingname[e];
                              //     Get.to(()=>values);
                              //     isopen =false; 
                             
                            

                        

                                });
                              }, child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,textDirection: TextDirection.rtl,
                                  children: [
                                    Text(e,style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(fontSize: 13, color: Colors.black)),const Icon(Icons.keyboard_arrow_left)
                              
                                  ],
                                ),
                              )),
                            )))
                        .toList()),
              ),
            ),
          )
      ],
    );
  }
}
