import 'package:assingment10/assingment5.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const Instagram());

class Instagram extends StatelessWidget{
  const Instagram({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assigment5(),
    );
  }

}