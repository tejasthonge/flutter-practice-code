import 'package:flutter/material.dart';

class RowColumanW extends StatelessWidget {
  const RowColumanW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Row(
          children: <Widget>[
            MyButton(text:"Button 1",),
            MyButton(text:"Button 2",),
            MyButton(text:"Button 3",),
          ]
        ),
      ),


    );
  }
}
