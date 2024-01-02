// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, unused_local_variable, depend_on_referenced_packages



import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/dialogServices.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massageModel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/massagepage/massagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ProfileMassage extends StatefulWidget {
  MassageModel detailsmassageprofile;
  ProfileMassage({required this.detailsmassageprofile,super.key});

  @override
  State<ProfileMassage> createState() => _ProfileMassageState();
}

class _ProfileMassageState extends State<ProfileMassage> {
  MassageControllerimp controller = Get.put(MassageControllerimp());
  TextEditingController ourtext =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 235, 230, 230),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.height*.14,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child:const Icon(Icons.arrow_back_ios_sharp,size: 15,),
                        )),SizedBox(width: MediaQuery.of(context).size.width*.04,),
                        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GetBuilder<MassageControllerimp>(
                            builder: (controller) =>
                                Image.asset(widget.detailsmassageprofile.image)),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.detailsmassageprofile.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 15, color: Colors.black)),
                            Text("نشط الان",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontSize: 15,
                                        color: const Color(0xff46C83B))),
                          ],
                        ),
                      ],
                    )
                    ,SizedBox(width: MediaQuery.of(context).size.width*.04,),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 5, left: 5, top: 6, bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                        children: [
                          Image.asset(AppImageAssets.video), SizedBox(width: MediaQuery.of(context).size.width*.05,),
                          Image.asset(AppImageAssets.phones), SizedBox(width: MediaQuery.of(context).size.width*.05,),
                          InkWell(onTap: () {
                            Get.defaultDialog(title: "",content: const DialogServisec());
                          },child: Image.asset(AppImageAssets.questions)),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: GroupedListView<Massagesdetails, DateTime>(reverse: false,useStickyGroupSeparators: true,floatingHeader:true ,
              padding: const EdgeInsets.all(10),
              elements: massageDetailses,
              groupBy: (massagesdetails) => DateTime(
                massagesdetails.date.year,
                massagesdetails.date.month,
                massagesdetails.date.day,
                massagesdetails.date.hour,
                massagesdetails.date.minute,
              ),
              groupHeaderBuilder: (Massagesdetails massagesdetails) =>
                   Container(child: Row(mainAxisAlignment:massagesdetails.issentbyme? MainAxisAlignment.end:MainAxisAlignment.start,children: [
                    Padding(
                      padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.04,left: MediaQuery.of(context).size.width*.04,),
                      child: Row(
                        children: [
                          Text(DateFormat.Hm().format(massagesdetails.date)),SizedBox(width:MediaQuery.of(context).size.width*.02,),
                          const Text("مساءا")
                        ],
                      ),
                    ),
                   ],),),
              itemBuilder: (context, Massagesdetails massagesdetails) =>
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: massagesdetails.issentbyme
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        color: massagesdetails.issentbyme
                            ? AppColors.colorsbutton
                            : Colors.white,
                        borderRadius: massagesdetails.issentbyme
                            ? (const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)))
                            : (const BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(massagesdetails.text),
                    ),
                  ),
                ),
              ),
            )),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*.14,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                       
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 241, 237, 237),
                                  borderRadius: BorderRadius.circular(15)),
                              width:  MediaQuery.of(context).size.width*.73,
                              height:  MediaQuery.of(context).size.height*.05,
                              child: TextField(controller:ourtext,
                                decoration: InputDecoration(
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 20),
                                      child: SizedBox(
                                        height: 30,
                                        width: MediaQuery.of(context).size.width*.2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                              },
                                              child: Image.asset(
                                                  AppImageAssets.import),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.camera_alt,
                                                  size: 18,
                                                  color: Colors.grey,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    contentPadding: const EdgeInsets.all(12),
                                    hintText: "اكتب هنا ..."),
                              )),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(onTap: (){
                                                                            setState(() {
                   final myMassages = Massagesdetails(text:ourtext.text,date:DateTime.now(), issentbyme: true);
                   massageDetailses.add(myMassages);
                     ourtext.clear();

                                                });

                          },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.colorsbutton),
                              child: Image.asset(AppImageAssets.go),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}

