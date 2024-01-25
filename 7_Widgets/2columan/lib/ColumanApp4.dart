import 'package:flutter/material.dart';

class ColumanApp4 extends StatelessWidget {
  const ColumanApp4({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: 100,
            color: Colors.red,
            height: 100,
          ),
          Container(
            width: 100,
            color: Colors.green,
            height: 100,
          ),
          Container(
            width: 100,
            color: Colors.blue,
            height: 100,
          ),
        ]),
      ),
      
    );
  }
}
