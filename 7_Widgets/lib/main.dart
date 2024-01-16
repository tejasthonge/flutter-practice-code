import 'package:center_1/1-CenterWidget.dart';
import 'package:center_1/2-ContainerWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: "1 center widget",
   
      // home:CenterW(),
      home:ContainerW(),


    );
   
  }
}
