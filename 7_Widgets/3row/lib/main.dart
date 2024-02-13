import 'package:flutter/material.dart';
import 'package:row3/Row4.dart';
import 'Row1.dart';
import 'Row2.dart';
import 'Row3.dart';
import 'Row5.dart';
import 'Row6.dart';
import 'Row7.dart';
import 'Row8.dart';

void main() {
  runApp(const RowApp());
}

class RowApp extends StatelessWidget {
  const RowApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home:  Row1(),
      // home:  Row2(),
      // home:  Row3(),
      // home:  Row4(),
      // home:  Row5(),
      // home:  Row6(),
      // home:  Row7(),
      home:  Row8(),
    );
  }
}
