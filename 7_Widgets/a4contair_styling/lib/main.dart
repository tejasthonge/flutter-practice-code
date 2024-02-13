import 'package:a4contair_styling/c1.dart';
import 'package:a4contair_styling/c2.dart';
import 'package:a4contair_styling/c4.dart';
import 'package:a4contair_styling/c6.dart';
import 'package:a4contair_styling/c7.dart';
import 'package:a4contair_styling/c8.dart';
import 'package:flutter/material.dart';




void main()=> runApp(const MyApp());


class MyApp extends StatelessWidget{

  const MyApp({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(

      // home: const Container_Styling(),
      // home: PaddingCon(),
      // home: BorderCon(),
      // home: BorderRadiusCon(),
      // home: ColorrCon (),
      // home: BoxShadowCon(),
      home: GradientCon(),

    );
  }
}