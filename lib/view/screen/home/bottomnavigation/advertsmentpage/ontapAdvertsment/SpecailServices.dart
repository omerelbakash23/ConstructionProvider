// ignore_for_file: file_names

import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/advetisementpagemodel.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/advertsmentpage/ontapAdvertsment/specailservicesOne.dart';
import 'package:flutter/material.dart';

class SpecailServices extends StatefulWidget {
  const SpecailServices({super.key});

  @override
  State<SpecailServices> createState() => _SpecailServicesState();
}
class _SpecailServicesState extends State<SpecailServices> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                          height: MediaQuery.of(context).size.height*.45,
                          width: double.infinity,
                          child: ListView.builder(shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              reverse: false,
                              itemCount: specailordersList.length,
                                           itemBuilder: (context, index) => 
                                            Specailservices1(myorders:specailordersList[index])));
  }
}


