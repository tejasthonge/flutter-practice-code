import 'package:flutter/material.dart';

import 'DaynamicList.dart';

void main() => runApp(const ListViewBuilderApp());

class ListViewBuilderApp extends StatelessWidget {
  const ListViewBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:ListBuilder(),


    );
  }
}
