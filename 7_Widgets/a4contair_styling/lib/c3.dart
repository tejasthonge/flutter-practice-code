

/*
To add padding to a specific direction use EdgeInsets.only(). Similarly to add
padding to all the directions use EdgeInsets.all().

*/
import 'package:flutter/material.dart';

class PaddingCon extends StatelessWidget {
  const PaddingCon({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(
      title: Text("Container styling"),
      centerTitle: true,
    ),

    body: Center(
      child: Container(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          left: 10,
          right: 10,
          
        ),
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    ),
  );
}
}
