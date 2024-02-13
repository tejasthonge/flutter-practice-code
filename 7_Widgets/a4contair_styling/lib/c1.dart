
/*
height & width:
height and width define the dimensions of a widget, specifying its size along the vertical
and horizontal axes, respectively,
The Container widget allows you to set properties such as height and width to control
the size of the container.
color:
Color defines the background color of the container.
Adjust values and color according to your layout and design preferences

*/

import 'package:flutter/material.dart';

class Container_Styling extends StatelessWidget {
  const Container_Styling({super.key});

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
        color: Colors.red,
      ),
    ),
  );
}
}
