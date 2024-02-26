import 'package:flutter/material.dart';
import 'package:todolistapp/screens/screen1.dart';
// import 'package:google_fonts/google_fonts.dart';



void main()=>runApp(const ToDoListApp());

class ToDoListApp extends StatelessWidget {
  const ToDoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}