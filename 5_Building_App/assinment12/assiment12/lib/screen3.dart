// import 'dart:html';

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hellow Core2Web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 360,
            color: Colors.blue,
          ),
        ));
  }
}
