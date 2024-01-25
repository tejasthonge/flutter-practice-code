import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
         Image.asset(
              "./lib/assets/download.jpeg",
              width: 150,
              height: 150,
              ),
         Image.asset(
              "./lib/assets/download.jpeg",
              width: 150,
              height: 150,
              ),
         Image.asset(
              "./lib/assets/download.jpeg",
              width: 150,
              height: 150,
              ),

        ]
      ),
    );
  }
}
