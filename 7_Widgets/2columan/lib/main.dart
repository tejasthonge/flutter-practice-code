import "package:flutter/material.dart";
import 'package:olumanapp/ColumanApp3.dart';
import 'package:olumanapp/ColumanApp6.dart';
import 'package:olumanapp/CoumanApp8.dart';

// import 'ColumanApp1.dart';
import 'ColumanApp1.dart';
import 'ColumanApp2.dart';
import 'ColumanApp4.dart';
import 'ColumanApp5.dart';
import 'ColumanApp7.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: ColumanApp1(),
      // home: ColumanApp2(),
      // home: ColumanApp3(),
      // home: ColumanApp4(),
      // home: ColumanApp5(),
      // home: ColumanApp6(),
      // home: ColumanApp7(),
      home: ColumanApp8(),

    );
  }
}
