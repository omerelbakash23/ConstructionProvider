// ignore_for_file: file_names
// // ignore_for_file: must_be_immutable, file_names, avoid_print

// import 'package:constructionprovider/view/screen/home/homes.dart';
// import 'package:constructionprovider/view/screen/outh/Register/Register1.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class CheckLogin extends StatefulWidget {
//    const CheckLogin({super.key});

//   @override
//   State<CheckLogin> createState() => _CheckLoginState();
// }

// class _CheckLoginState extends State<CheckLogin> {
// String ?tokens ;
// bool inital =true;
//   @override
//   Widget build(BuildContext context) {

// // ignore: unnecessary_null_comparison
// if (inital){
//  SharedPreferences.getInstance().then((sharedvalue){
// setState(() {
//   inital=false;
//  tokens=sharedvalue.getString("Token")!;
// });
//     });
//     return const Center(child: CircularProgressIndicator());
// }else{
//   if (tokens==null) {
//     return const SignUpScreen();
//   }
//   else{
//         return  const BottomNavBarPage() ;
// }

// }
    
//   }
// }