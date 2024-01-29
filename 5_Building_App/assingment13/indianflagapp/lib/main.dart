import 'package:flutter/material.dart';

import 'flagpage.dart';

void main() => runApp(const FlagApp());

class FlagApp extends StatelessWidget {
  const FlagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: const IndianFlag(),
    );


  }
}
