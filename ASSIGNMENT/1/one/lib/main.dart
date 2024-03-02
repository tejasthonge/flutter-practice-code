

import "package:flutter/material.dart";
import "package:one/Quitions/one.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:One(),
    );
  }
}
