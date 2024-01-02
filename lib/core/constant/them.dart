// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themEnglish = ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(headline1: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  wordSpacing: 4,color:AppColors.grey),
                                  
                        bodyText1: TextStyle(
                                color: AppColors.grey,
                                height: 1.9,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                wordSpacing: 4,
                              ), )
      );



      ThemeData themArabic = ThemeData(
        fontFamily: "cairo",
        textTheme: const TextTheme(headline1: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  wordSpacing: 4,color:AppColors.grey),
                                  
                        bodyText1: TextStyle(
                                color: AppColors.grey,
                                height: 1.9,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                wordSpacing: 4,
                              ), )
      );