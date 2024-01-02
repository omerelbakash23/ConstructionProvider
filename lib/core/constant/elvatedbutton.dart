// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ElevatedButtongeneral extends StatelessWidget {
  final String textbutton ;
  final void Function()  OnPressed ;
  final double rights ;
    final double lefts ;
final Color colorbuttons;

  const ElevatedButtongeneral({super.key, required this.textbutton, required this.OnPressed, required this.rights, required this.lefts, required this.colorbuttons});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),backgroundColor:colorbuttons ),onPressed: OnPressed, child: Padding(
      padding:  EdgeInsets.only(right:rights ,left:lefts ,top: 15,bottom: 15),
      child: Text(textbutton,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    ));
  }
}