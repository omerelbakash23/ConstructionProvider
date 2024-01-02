// ignore_for_file: unnecessary_null_comparison


import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldapp extends StatelessWidget {
  final String hintTexts;
  final Icon iconsfield;
  final TextEditingController? controllers;
  final String? Function(String?) valid;
  final bool isNumber ;
  final bool? obscureText ;
  final void Function()? ontapicons ;
  
  const TextFormFieldapp(
      {super.key,
      required this.hintTexts,
       required this.iconsfield,
     required this.controllers, 
     required this.valid, required this.isNumber, 
     this.obscureText
     ,this.ontapicons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2, right: 25, left: 25),
      child: TextFormField(obscureText:(obscureText == null || obscureText ==false) ? false : true  ,validator:valid ,
        textDirection: TextDirection.ltr,keyboardType: isNumber ?const TextInputType.numberWithOptions(decimal:true ):TextInputType.text,
        controller: controllers,
        decoration: InputDecoration(filled: true,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color:  AppColors.colorsbutton)),
            hintText: hintTexts,
            focusColor: AppColors.grey,
            fillColor:  AppColors.grey,
            hintStyle: const TextStyle(fontSize: 12, color:AppColors.black),
            
            suffixIcon: InkWell(onTap: ontapicons,child: iconsfield),
            suffixIconColor: AppColors.grey,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.colorsbutton)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color:  AppColors.colorsbutton)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color:  AppColors.colorsbutton, width: 6),
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
