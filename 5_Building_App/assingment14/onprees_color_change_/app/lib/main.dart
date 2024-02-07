//crate app that contan two box and two button when we prees the button that pasepetive block color wilechage as red gren blak

import "package:flutter/material.dart";

import "changecolor.dart";

void main() => runApp(const ColorChangeApp());

class ColorChangeApp extends StatelessWidget {
  const ColorChangeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: ChangeColor(),
    );
  }
}
