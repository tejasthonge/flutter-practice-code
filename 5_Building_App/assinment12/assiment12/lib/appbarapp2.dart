import 'package:flutter/material.dart';

class appbarapp2 extends StatelessWidget {
  const appbarapp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("this ceter titele"),
          centerTitle: true, 
          actions: const [
            Icon(
              Icons.add_circle_outline,
            ),
            Icon(
              Icons.wechat_outlined,
            )
          ]),
    );
  }
}
