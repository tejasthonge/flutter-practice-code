import 'package:flutter/material.dart';

class Screen10 extends StatelessWidget {
  const Screen10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Container(

            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 87, 52, 0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(
                // width: 3,
                color: Colors.red,
              ),

          ),
        ),
        
        )

    );
  }
}
