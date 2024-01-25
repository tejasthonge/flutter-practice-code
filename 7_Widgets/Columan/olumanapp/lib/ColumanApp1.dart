import 'package:flutter/material.dart';

class ColumanApp1 extends StatelessWidget {
  const ColumanApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        child: Column(children: [
          Container(
            width: 100,
            color: Colors.red,
            height: 100,
          ),
          Container(
            width: 100,
            color: Colors.red,
            height: 100,
          ),
          Container(
            width: 100,
            color: Colors.red,
            height: 100,
          ),
        ]),
      ),
    );
  }
}
