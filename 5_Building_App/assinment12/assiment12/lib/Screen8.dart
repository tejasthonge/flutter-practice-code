import 'package:flutter/material.dart';

class Screen8 extends StatelessWidget {
  const Screen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Container(

            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                // width: 2,
                color: Colors.red,
              ),
              // borderRadius: const BorderRadius.all(Radius.circular(20)),

          ),
        ),
        
        )

    );
  }
}
