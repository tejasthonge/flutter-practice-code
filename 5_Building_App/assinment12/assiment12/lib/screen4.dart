import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(

          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 150,
              color: Colors.blueGrey,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}
