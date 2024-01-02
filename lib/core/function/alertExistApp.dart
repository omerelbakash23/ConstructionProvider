// ignore_for_file: file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExistApp() {
  Get.defaultDialog(title: "55".tr, middleText: "56".tr, actions: [
    ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.orange),
        onPressed: () {
          exit(0);
        },
        child:  Text("57".tr)),
    ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.orange),
        onPressed: () {
          Get.back();
        },
        child:  Text("58".tr))
  ]);
  return Future.value(true);
}
