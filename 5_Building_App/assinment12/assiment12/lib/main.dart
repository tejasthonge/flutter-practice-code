import 'package:assiment12/screen3.dart';
import 'package:assiment12/screen4.dart';
import 'package:assiment12/screen5.dart';
import 'package:assiment12/screen6.dart';
import 'package:flutter/material.dart';

import 'appbarapp1.dart';
import 'appbarapp2.dart';

void main() => runApp(const AppbarApp());

class AppbarApp extends StatelessWidget {
  const AppbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      // home: appbarapp1(),
      // home: appbarapp2(),
      // home: Screen3(),
      // home: Screen4(),
      // home: Screen5(),
      home: Screen6(),
    );
  }
}
