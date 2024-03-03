

import "package:flutter/material.dart";
import "package:one/Quitions/five.dart";
import "package:one/Quitions/four.dart";
import "package:one/Quitions/one.dart";
import "package:one/Quitions/three.dart";
import "package:one/Quitions/two.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      // home:One(),
      // home:Two(),
      // home: Three(),
      // home:Four()
      home:Five()
    );
  }
}
