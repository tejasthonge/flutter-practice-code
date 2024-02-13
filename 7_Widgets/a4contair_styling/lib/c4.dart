

/*
decoration:-
decoration property is used to apply visual styling to a widget, typically a Container. It
takes a BoxDecoration object that defines various visual elements such as color, border
*/
import 'package:flutter/material.dart';

class BorderRadiusCon extends StatelessWidget {
  const BorderRadiusCon({super.key});

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
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          )
        ),
      ),
    ),
  );
}
}
