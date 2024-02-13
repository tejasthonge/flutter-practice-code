

/*
color:
This parameter is used to color the Container inside the decoration . */

import 'package:flutter/material.dart';

class ColorrCon extends StatelessWidget {
  const ColorrCon({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(
      title: Text("Container styling"),
      centerTitle: true,
    ),

    body: Center(
      child: Container(
       
        height: 200,
        width: 200,
        // color: Colors.red, // of we use decoretion we cant use color property of container
        decoration:BoxDecoration(
          
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
            color: Colors.blue,
            width: 5,
          ),

        
        ),
      ),
    ),
  );
}
}
